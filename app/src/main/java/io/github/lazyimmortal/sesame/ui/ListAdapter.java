package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.entity.FriendWatch;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.ImageZipCache;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.StringUtil;
import io.github.lazyimmortal.sesame.util.TaskIconUtil;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class ListAdapter extends BaseAdapter {
    private static ListAdapter adapter;
    private static ImageZipCache avatarZip;
    private static ListDialog.ListType listType;
    public static List<ViewHolder> viewHolderList;
    Context context;
    boolean fwSortEnabled;
    List<? extends IdAndName> list;
    SelectModelFieldFunc selectModelFieldFunc;
    private static final Map<String, Bitmap> avatarCache = new ConcurrentHashMap();
    private static final ExecutorService avatarExecutor = Executors.newFixedThreadPool(2);
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    private static final Map<String, Bitmap> taskIconCache = new ConcurrentHashMap();
    int findIndex = -1;
    String findWord = null;
    String filterWord = null;
    List<IdAndName> filteredList = null;
    private boolean fwOnlyShield = false;
    private boolean fwShowDontCollect = true;
    private boolean fwOnlyDeleted = false;
    private Set<String> fwDontCollectSet = null;
    private boolean fwEnergyEnable = false;
    private int fwEnergyField = 0;
    private int fwEnergyCmp = 0;
    private long fwEnergyValue = 0;

    public static class ViewHolder {
        CheckBox cb;
        ImageView iv;
        ImageView ivTaskIcon;
        LinearLayout layoutFwStats;
        LinearLayout llHead;
        TextView tv;
        TextView tvAvatarChar;
        TextView tvAvatarText;
        TextView tvDelete;
        TextView tvFwAverage;
        TextView tvFwDay;
        TextView tvFwExtra;
        TextView tvFwIntro;
        TextView tvFwMonth;
        TextView tvFwThisWeek;
        TextView tvFwTotal;
        TextView tvFwWeek1;
        TextView tvFwWeek2;
        TextView tvFwWeek3;
        TextView tvSub;
        TextView tvTitle;
    }

    private boolean cmpPass(long j) {
        if (this.fwEnergyCmp == 0) {
            return j > this.fwEnergyValue;
        }
        return j >= this.fwEnergyValue;
    }

    private boolean matchWeeks(FriendWatch friendWatch, int i) {
        if (cmpPass(friendWatch.getWeekGet()) || cmpPass(friendWatch.getWeek1Get())) {
            return false;
        }
        if (i < 3) {
            return true;
        }
        if (cmpPass(friendWatch.getWeek2Get())) {
            return false;
        }
        return i < 4 || !cmpPass((long) friendWatch.getWeek3Get());
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public static ListAdapter get(Context context) {
        if (adapter == null) {
            adapter = new ListAdapter(context);
        }
        return adapter;
    }

    public static ListAdapter getClear(Context context) {
        ListAdapter listAdapter = get(context);
        listAdapter.findIndex = -1;
        listAdapter.findWord = null;
        return listAdapter;
    }

    public static ListAdapter getClear(Context context, ListDialog.ListType listType2) {
        if (adapter == null) {
            adapter = new ListAdapter(context);
            viewHolderList = new ArrayList();
        }
        listType = listType2;
        ListAdapter listAdapter = adapter;
        listAdapter.findIndex = -1;
        listAdapter.findWord = null;
        return listAdapter;
    }

    private ListAdapter(Context context) {
        this.context = context;
    }

    public void setBaseList(List<? extends IdAndName> list) {
        if (list != this.list) {
            exitFind();
        }
        this.list = list;
        this.filterWord = null;
        this.filteredList = null;
        prefetchIcons(list);
    }

    private static void prefetchIcons(List<? extends IdAndName> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (IdAndName idAndName : list) {
            String icon = idAndName.getIcon();
            if (TaskIconUtil.isIconUrl(icon)) {
                if ((idAndName instanceof AlipayUser) || (idAndName instanceof FriendWatch)) {
                    arrayList2.add(icon);
                } else {
                    arrayList.add(icon);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            TaskIconUtil.predownload(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        predownloadAvatars(arrayList2);
    }

    public void setSelectedList(SelectModelFieldFunc selectModelFieldFunc) {
        this.selectModelFieldFunc = selectModelFieldFunc;
        try {
            Collections.sort(this.list, new Comparator() { // from class: io.github.lazyimmortal.sesame.ui.ListAdapter$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.m137x1fc4e5a4((IdAndName) obj, (IdAndName) obj2);
                }
            });
        } catch (Throwable th) {
            Log.i("ListAdapter err");
            Log.printStackTrace(th);
        }
    }

    /* JADX INFO: renamed from: lambda$setSelectedList$0$io-github-lazyimmortal-sesame-ui-ListAdapter, reason: not valid java name */
    /* synthetic */ int m137x1fc4e5a4(IdAndName idAndName, IdAndName idAndName2) {
        if (this.selectModelFieldFunc.contains(idAndName.id) == this.selectModelFieldFunc.contains(idAndName2.id)) {
            return idAndName.compareTo(idAndName2);
        }
        return this.selectModelFieldFunc.contains(idAndName.id).booleanValue() ? -1 : 1;
    }

    public List<IdAndName> getSelectedItems() {
        ArrayList arrayList = new ArrayList();
        List<? extends IdAndName> list = this.list;
        if (list != null && this.selectModelFieldFunc != null) {
            for (IdAndName idAndName : list) {
                if (this.selectModelFieldFunc.contains(idAndName.id).booleanValue()) {
                    arrayList.add(idAndName);
                }
            }
        }
        return arrayList;
    }

    public int findLast(String str) {
        List<? extends IdAndName> listVisibleList = visibleList();
        if (listVisibleList == null || listVisibleList.isEmpty()) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        if (!Objects.equals(lowerCase, this.findWord)) {
            this.findIndex = -1;
            this.findWord = lowerCase;
        }
        int i = this.findIndex;
        int size = listVisibleList.size() - 1;
        if (i < 0) {
            i = 0;
        } else if (i > size) {
            i = size;
        }
        int i2 = i;
        do {
            i2--;
            if (i2 < 0) {
                i2 = size;
            }
            if (listVisibleList.get(i2).name.toLowerCase().contains(lowerCase)) {
                this.findIndex = i2;
                break;
            }
        } while (i2 != i);
        notifyDataSetChanged();
        return this.findIndex;
    }

    public int findNext(String str) {
        int i;
        List<? extends IdAndName> listVisibleList = visibleList();
        if (listVisibleList == null || listVisibleList.isEmpty()) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        if (!Objects.equals(lowerCase, this.findWord)) {
            this.findIndex = -1;
            this.findWord = lowerCase;
        }
        int i2 = this.findIndex;
        int size = listVisibleList.size() - 1;
        if (i2 < 0) {
            i = 0;
        } else {
            i = i2 > size ? size : i2;
        }
        int i3 = i;
        do {
            i3++;
            if (i3 > size) {
                i3 = 0;
            }
            if (listVisibleList.get(i3).name.toLowerCase().contains(lowerCase)) {
                this.findIndex = i3;
                break;
            }
        } while (i3 != i);
        notifyDataSetChanged();
        return this.findIndex;
    }

    public void exitFind() {
        this.findIndex = -1;
    }

    public void filter(String str) {
        this.filterWord = (str == null || str.trim().isEmpty()) ? null : str.toLowerCase();
        rebuildFiltered();
    }

    public void setFriendWatchFilter(boolean z, boolean z2, boolean z3, Set<String> set) {
        this.fwOnlyShield = z;
        this.fwShowDontCollect = z2;
        this.fwOnlyDeleted = z3;
        this.fwDontCollectSet = set;
        rebuildFiltered();
    }

    public void clearFriendWatchFilter() {
        this.fwEnergyEnable = false;
        this.fwSortEnabled = false;
        this.fwEnergyField = 0;
        this.fwEnergyCmp = 0;
        this.fwEnergyValue = 0L;
        setFriendWatchFilter(false, true, false, null);
    }

    public void setFriendWatchEnergyFilter(boolean z, int i, int i2, long j) {
        this.fwEnergyEnable = z;
        this.fwEnergyField = i;
        this.fwEnergyCmp = i2;
        this.fwEnergyValue = j;
        rebuildFiltered();
    }

    private boolean hasFriendWatchFilter() {
        return this.fwOnlyShield || !this.fwShowDontCollect || this.fwOnlyDeleted || this.fwEnergyEnable;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:113:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0022 A[SYNTHETIC] */
    private void rebuildFiltered() {
        int dayGet;
        long fourWeekAverage;
        UserEntity userEntity;
        Integer friendStatus;
        Set<String> set;
        if (this.filterWord == null && !hasFriendWatchFilter() && !this.fwSortEnabled) {
            this.filteredList = null;
            notifyDataSetChanged();
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<? extends IdAndName> list = this.list;
        if (list != null) {
            for (IdAndName idAndName : list) {
                String str = this.filterWord;
                if (str == null || matchFilter(idAndName, str)) {
                    if (hasFriendWatchFilter()) {
                        if (idAndName instanceof FriendWatch) {
                            FriendWatch friendWatch = (FriendWatch) idAndName;
                            if (this.fwShowDontCollect || (set = this.fwDontCollectSet) == null || !set.contains(friendWatch.id)) {
                                if (!this.fwOnlyShield || friendWatch.hasShield) {
                                    if (!this.fwOnlyDeleted || ((userEntity = UserIdMap.get(friendWatch.id)) != null && (friendStatus = userEntity.getFriendStatus()) != null && friendStatus.intValue() != 1)) {
                                        if (this.fwEnergyEnable) {
                                            int i = this.fwEnergyField;
                                            if (i < 4) {
                                                int i2 = this.fwEnergyField;
                                                if (i2 == 1) {
                                                    dayGet = friendWatch.getWeekGet();
                                                } else if (i2 == 2) {
                                                    dayGet = friendWatch.getAllGet();
                                                } else {
                                                    if (i2 == 3) {
                                                        fourWeekAverage = friendWatch.getDailyAverage();
                                                    } else if (i2 == 4) {
                                                        fourWeekAverage = friendWatch.getThisWeekAverage();
                                                    } else if (i2 == 5) {
                                                        fourWeekAverage = friendWatch.getTwoWeekAverage();
                                                    } else if (i2 == 6) {
                                                        fourWeekAverage = friendWatch.getThreeWeekAverage();
                                                    } else if (i2 == 7) {
                                                        fourWeekAverage = friendWatch.getFourWeekAverage();
                                                    } else {
                                                        dayGet = friendWatch.getDayGet();
                                                    }
                                                    if (this.fwEnergyCmp == 0) {
                                                        if (fourWeekAverage > this.fwEnergyValue) {
                                                        }
                                                    } else if (fourWeekAverage < this.fwEnergyValue) {
                                                    }
                                                }
                                                fourWeekAverage = dayGet;
                                                if (this.fwEnergyCmp == 0) {
                                                    if (fourWeekAverage > this.fwEnergyValue) {
                                                    }
                                                } else if (fourWeekAverage < this.fwEnergyValue) {
                                                }
                                            } else if (!matchWeeks(friendWatch, i - 2)) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    arrayList.add(idAndName);
                }
            }
        }
        if (this.fwSortEnabled) {
            int i3 = this.fwEnergyField;
            if (i3 >= 4) {
                i3 = 2;
            }
            FriendWatchEnergyComparator.sortDescending(arrayList, i3);
        }
        this.filteredList = arrayList;
        notifyDataSetChanged();
    }

    private boolean matchFilter(IdAndName idAndName, String str) {
        String str2;
        if (idAndName.name != null && idAndName.name.toLowerCase().contains(str)) {
            return true;
        }
        if (idAndName.id == null || !idAndName.id.contains(str)) {
            return (idAndName instanceof FriendWatch) && (str2 = ((FriendWatch) idAndName).bodyText) != null && str2.toLowerCase().contains(str);
        }
        return true;
    }

    private List<? extends IdAndName> visibleList() {
        List<IdAndName> list = this.filteredList;
        return list != null ? list : this.list;
    }

    public void selectAll() {
        List<? extends IdAndName> listVisibleList = visibleList();
        if (listVisibleList == null) {
            listVisibleList = this.list;
        }
        Iterator<? extends IdAndName> it = listVisibleList.iterator();
        while (it.hasNext()) {
            this.selectModelFieldFunc.add(it.next().id, 0);
        }
        notifyDataSetChanged();
    }

    public void SelectInvert() {
        List<? extends IdAndName> listVisibleList = visibleList();
        if (listVisibleList == null) {
            listVisibleList = this.list;
        }
        for (IdAndName idAndName : listVisibleList) {
            if (!this.selectModelFieldFunc.contains(idAndName.id).booleanValue()) {
                this.selectModelFieldFunc.add(idAndName.id, 0);
            } else {
                this.selectModelFieldFunc.remove(idAndName.id);
            }
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<? extends IdAndName> listVisibleList = visibleList();
        if (listVisibleList == null) {
            return 0;
        }
        return listVisibleList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return visibleList().get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = View.inflate(this.context, R.layout.list_item, null);
            viewHolder.tv = (TextView) viewInflate.findViewById(R.id.tv_idn);
            viewHolder.cb = (CheckBox) viewInflate.findViewById(R.id.cb_list);
            viewHolder.iv = (ImageView) viewInflate.findViewById(R.id.iv_avatar);
            viewHolder.ivTaskIcon = (ImageView) viewInflate.findViewById(R.id.iv_task_icon);
            viewHolder.llHead = (LinearLayout) viewInflate.findViewById(R.id.ll_head);
            viewHolder.tvTitle = (TextView) viewInflate.findViewById(R.id.tv_title);
            viewHolder.tvSub = (TextView) viewInflate.findViewById(R.id.tv_sub);
            viewHolder.tvDelete = (TextView) viewInflate.findViewById(R.id.tv_delete);
            viewHolder.tvAvatarText = (TextView) viewInflate.findViewById(R.id.tv_avatar_text);
            viewHolder.tvAvatarChar = (TextView) viewInflate.findViewById(R.id.tv_avatar_char);
            viewHolder.tvFwIntro = (TextView) viewInflate.findViewById(R.id.tv_fw_intro);
            viewHolder.layoutFwStats = (LinearLayout) viewInflate.findViewById(R.id.layout_fw_stats);
            viewHolder.tvFwDay = (TextView) viewInflate.findViewById(R.id.tv_fw_day);
            viewHolder.tvFwMonth = (TextView) viewInflate.findViewById(R.id.tv_fw_month);
            viewHolder.tvFwTotal = (TextView) viewInflate.findViewById(R.id.tv_fw_total);
            viewHolder.tvFwAverage = (TextView) viewInflate.findViewById(R.id.tv_fw_average);
            viewHolder.tvFwThisWeek = (TextView) viewInflate.findViewById(R.id.tv_fw_this_week);
            viewHolder.tvFwWeek1 = (TextView) viewInflate.findViewById(R.id.tv_fw_week1);
            viewHolder.tvFwWeek2 = (TextView) viewInflate.findViewById(R.id.tv_fw_week2);
            viewHolder.tvFwWeek3 = (TextView) viewInflate.findViewById(R.id.tv_fw_week3);
            viewHolder.tvFwExtra = (TextView) viewInflate.findViewById(R.id.tv_fw_extra);
            if (listType == ListDialog.ListType.SHOW) {
                viewHolder.cb.setVisibility(8);
            }
            viewInflate.setTag(viewHolder);
            viewHolderList.add(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        IdAndName idAndName = visibleList().get(i);
        if (idAndName instanceof FriendWatch) {
            CheckBox checkBox = viewHolder.cb;
            ViewParent parent = checkBox.getParent();
            LinearLayout linearLayout = viewHolder.llHead;
            if (parent != linearLayout) {
                ((ViewGroup) parent).removeView(checkBox);
                linearLayout.addView(checkBox);
            }
        } else {
            CheckBox checkBox2 = viewHolder.cb;
            ViewParent parent2 = checkBox2.getParent();
            ViewParent parent3 = viewHolder.tv.getParent();
            if (parent2 != parent3) {
                ((ViewGroup) parent2).removeView(checkBox2);
                ((ViewGroup) parent3).addView(checkBox2);
            }
        }
        viewHolder.cb.setVisibility(((idAndName instanceof FriendWatch) || listType != ListDialog.ListType.SHOW) ? 0 : 8);
        TextView textView = viewHolder.tv;
        int i2 = this.findIndex;
        int i3 = SupportMenu.CATEGORY_MASK;
        textView.setTextColor(i2 == i ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK);
        CheckBox checkBox3 = viewHolder.cb;
        SelectModelFieldFunc selectModelFieldFunc = this.selectModelFieldFunc;
        checkBox3.setChecked(selectModelFieldFunc != null && selectModelFieldFunc.contains(idAndName.id).booleanValue());
        if (idAndName instanceof FriendWatch) {
            FriendWatch friendWatch = (FriendWatch) idAndName;
            viewHolder.llHead.setVisibility(0);
            viewHolder.tvTitle.setText(StringUtil.isEmpty(friendWatch.titleText) ? friendWatch.name : friendWatch.titleText);
            viewHolder.tvSub.setText("userID:" + friendWatch.id);
            int i4 = friendWatch.delete ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK;
            viewHolder.tvTitle.setTextColor(i4);
            viewHolder.tvSub.setTextColor(i4);
            if (!friendWatch.delete && this.findIndex != i) {
                i3 = ViewCompat.MEASURED_STATE_MASK;
            }
            viewHolder.tv.setVisibility(8);
            viewHolder.tvFwIntro.setText(friendWatch.statsIntroText);
            viewHolder.tvFwIntro.setTextColor(i3);
            viewHolder.tvFwIntro.setVisibility(0);
            viewHolder.tvDelete.setVisibility(friendWatch.delete ? 0 : 8);
            viewHolder.cb.setVisibility(0);
            viewHolder.ivTaskIcon.setVisibility(8);
            viewHolder.tvAvatarChar.setVisibility(8);
            viewHolder.layoutFwStats.setVisibility(0);
            viewHolder.tvFwExtra.setText(friendWatch.statsExtraText);
            viewHolder.tvFwExtra.setVisibility(StringUtil.isEmpty(friendWatch.statsExtraText) ? 8 : 0);
            viewHolder.tv.setTextColor(i3);
            viewHolder.tvFwDay.setText("日收:" + friendWatch.getDayGet());
            viewHolder.tvFwMonth.setText("月收:" + friendWatch.getMonthGet());
            viewHolder.tvFwTotal.setText("总收:" + friendWatch.getAllGet());
            viewHolder.tvFwAverage.setText("日均:" + friendWatch.getDailyAverage());
            viewHolder.tvFwThisWeek.setText("本周:" + friendWatch.getWeekGet());
            viewHolder.tvFwWeek1.setText("上周:" + friendWatch.getWeek1Get());
            viewHolder.tvFwWeek2.setText("上上周:" + friendWatch.getWeek2Get());
            viewHolder.tvFwWeek3.setText("上上上周:" + friendWatch.getWeek3Get());
            viewHolder.tvFwDay.setTextColor(i3);
            viewHolder.tvFwMonth.setTextColor(i3);
            viewHolder.tvFwTotal.setTextColor(i3);
            viewHolder.tvFwAverage.setTextColor(i3);
            viewHolder.tvFwThisWeek.setTextColor(i3);
            viewHolder.tvFwWeek1.setTextColor(i3);
            viewHolder.tvFwWeek2.setTextColor(i3);
            viewHolder.tvFwWeek3.setTextColor(i3);
            viewHolder.tvFwExtra.setTextColor(i3);
            if (!StringUtil.isEmpty(friendWatch.headImageUrl)) {
                viewHolder.tvAvatarText.setVisibility(8);
                viewHolder.iv.setVisibility(0);
                loadAvatar(viewHolder.iv, friendWatch.headImageUrl);
            } else {
                String strIconTextOf = IdAndName.iconTextOf(StringUtil.isEmpty(friendWatch.titleText) ? friendWatch.name : friendWatch.titleText);
                viewHolder.iv.setVisibility(8);
                if (!strIconTextOf.isEmpty()) {
                    viewHolder.tvAvatarText.setVisibility(0);
                    viewHolder.tvAvatarText.setText(strIconTextOf);
                } else {
                    viewHolder.tvAvatarText.setVisibility(8);
                }
            }
        } else {
            viewHolder.llHead.setVisibility(8);
            viewHolder.tvFwIntro.setVisibility(8);
            viewHolder.layoutFwStats.setVisibility(8);
            viewHolder.tvFwExtra.setVisibility(8);
            viewHolder.tv.setText(idAndName.name);
            viewHolder.tv.setVisibility(0);
            String icon = idAndName.getIcon();
            if (TaskIconUtil.isIconUrl(icon)) {
                viewHolder.ivTaskIcon.setVisibility(0);
                viewHolder.tvAvatarChar.setVisibility(8);
                if (idAndName instanceof AlipayUser) {
                    loadAvatar(viewHolder.ivTaskIcon, icon);
                } else {
                    loadTaskIcon(viewHolder.ivTaskIcon, icon);
                }
            } else {
                String iconText = idAndName.getIconText();
                viewHolder.ivTaskIcon.setVisibility(8);
                if (!iconText.isEmpty()) {
                    viewHolder.tvAvatarChar.setVisibility(0);
                    viewHolder.tvAvatarChar.setText(iconText);
                } else {
                    viewHolder.tvAvatarChar.setVisibility(8);
                }
            }
        }
        return viewInflate;
    }

    private static void loadAvatar(final ImageView imageView, final String str) {
        imageView.setTag(str);
        Bitmap bitmap = avatarCache.get(str);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageDrawable(null);
            avatarExecutor.execute(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.ListAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ListAdapter.lambda$loadAvatar$2(str, imageView);
                }
            });
        }
    }

    static /* synthetic */ void lambda$loadAvatar$2(final String str, final ImageView imageView) {
        try {
            final Bitmap bitmapDownloadAndCache = downloadAndCache(str);
            if (bitmapDownloadAndCache != null) {
                avatarCache.put(str, bitmapDownloadAndCache);
                mainHandler.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.ListAdapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ListAdapter.lambda$loadAvatar$1(str, imageView, bitmapDownloadAndCache);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void lambda$loadAvatar$1(String str, ImageView imageView, Bitmap bitmap) {
        if (str.equals(imageView.getTag())) {
            imageView.setImageBitmap(bitmap);
        }
    }

    public static void predownloadAvatars(Collection<String> collection) {
        avatarZip().predownload(collection);
    }

    private static synchronized ImageZipCache avatarZip() {
        if (avatarZip == null) {
            avatarZip = new ImageZipCache(new File(FileUtil.MAIN_DIRECTORY_FILE, "avatar.zip"));
        }
        return avatarZip;
    }

    private static Bitmap downloadAndCache(String str) {
        return avatarZip().loadOrDownload(str);
    }

    private static void loadTaskIcon(final ImageView imageView, final String str) {
        imageView.setTag(str);
        Bitmap bitmap = taskIconCache.get(str);
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            imageView.setImageDrawable(null);
            avatarExecutor.execute(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.ListAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ListAdapter.lambda$loadTaskIcon$4(str, imageView);
                }
            });
        }
    }

    static /* synthetic */ void lambda$loadTaskIcon$4(final String str, final ImageView imageView) {
        try {
            final Bitmap bitmapDownloadAndGet = TaskIconUtil.downloadAndGet(str);
            if (bitmapDownloadAndGet != null) {
                taskIconCache.put(str, bitmapDownloadAndGet);
                mainHandler.post(new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.ListAdapter$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ListAdapter.lambda$loadTaskIcon$3(str, imageView, bitmapDownloadAndGet);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ void lambda$loadTaskIcon$3(String str, ImageView imageView, Bitmap bitmap) {
        if (str.equals(imageView.getTag())) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
