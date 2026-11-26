package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountOneModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectOneModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.entity.AlipayAnimal;
import io.github.lazyimmortal.sesame.entity.AlipayAntDodoTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmChickenChefTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmDoFarmTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntFarmDrawMachineTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntForestHuntTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntForestVitalityTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntMemberTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOceanAntiepTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOceanFishBlackList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOrchardDrawTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntOrchardTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntSportsTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayAntStallTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayBeach;
import io.github.lazyimmortal.sesame.entity.AlipayForestHunt;
import io.github.lazyimmortal.sesame.entity.AlipayGoldenBeansTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayMarathon;
import io.github.lazyimmortal.sesame.entity.AlipayMemberCreditSesameTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayMonopolyTaskList;
import io.github.lazyimmortal.sesame.entity.AlipayNewAncientTree;
import io.github.lazyimmortal.sesame.entity.AlipayPlantScene;
import io.github.lazyimmortal.sesame.entity.AlipayReserve;
import io.github.lazyimmortal.sesame.entity.AlipayTree;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.entity.AlipayrpcRequest;
import io.github.lazyimmortal.sesame.entity.CooperateUser;
import io.github.lazyimmortal.sesame.entity.FriendWatch;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import io.github.lazyimmortal.sesame.entity.WalkPath;
import io.github.lazyimmortal.sesame.entity.WalkPathThemeMapList;
import io.github.lazyimmortal.sesame.util.ToastUtil;
import io.github.lazyimmortal.sesame.util.idMap.AnimalIdMap;
import io.github.lazyimmortal.sesame.util.idMap.AntDodoTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmChickenChefTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDoFarmTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntFarmDrawMachineTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestHuntTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntForestVitalityTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntMemberTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanAntiepTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOceanFishBlackListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardDrawTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntOrchardTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntSportsTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.AntStallTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.BeachIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ForestHuntIdMap;
import io.github.lazyimmortal.sesame.util.idMap.GoldenBeansTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MarathonIdMap;
import io.github.lazyimmortal.sesame.util.idMap.MemberCreditSesameTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.MonopolyTaskListMap;
import io.github.lazyimmortal.sesame.util.idMap.NewAncientTreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.PathThemeMapListMap;
import io.github.lazyimmortal.sesame.util.idMap.PlantSceneIdMap;
import io.github.lazyimmortal.sesame.util.idMap.ReserveIdMap;
import io.github.lazyimmortal.sesame.util.idMap.TreeIdMap;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import io.github.lazyimmortal.sesame.util.idMap.rpcRequestMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ListDialog {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static Button btn_find_last;
    static Button btn_find_next;
    static Button btn_select_all;
    static Button btn_select_invert;
    private static Runnable dismissCallback;
    private static Set<String> fwDontCollectSet;
    private static int fwEnergyCmpPosition;
    private static int fwEnergyFieldPosition;
    static Boolean hasCount;
    private static boolean isFriendWatchList;
    static RelativeLayout layout_batch_process;
    static AlertDialog listDialog;
    static ListType listType;
    static ListView lv_list;
    static EditText oneClickText;
    static EditText searchText;
    private static SelectModelFieldFunc selectModelFieldFunc;

    public enum ListType {
        RADIO,
        CHECK,
        SHOW
    }

    public static void showFriendWatchSelect(Context context, CharSequence charSequence, List list, Set set, SelectModelField selectModelField) {
        hasCount = false;
        selectModelFieldFunc = selectModelField;
        isFriendWatchList = true;
        fwDontCollectSet = set;
        ListType listType2 = ListType.CHECK;
        listType = listType2;
        ListAdapter clear = ListAdapter.getClear(context, listType2);
        clear.clearFriendWatchFilter();
        clear.fwSortEnabled = true;
        clear.setBaseList(list);
        clear.setSelectedList(selectModelField);
        clear.setFriendWatchFilter(false, false, false, set);
        showListDialog(context, charSequence);
        RelativeLayout relativeLayout = layout_batch_process;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        listType = ListType.CHECK;
    }

    public static void setOnDismissCallback(Runnable runnable) {
        dismissCallback = runnable;
    }

    public static void show(Context context, CharSequence charSequence, SelectOneModelField selectOneModelField, ListType listType2) {
        show(context, charSequence, selectOneModelField.getExpandValue(), selectOneModelField, false, listType2);
    }

    public static void show(Context context, CharSequence charSequence, SelectAndCountOneModelField selectAndCountOneModelField, ListType listType2) {
        show(context, charSequence, selectAndCountOneModelField.getExpandValue(), selectAndCountOneModelField, false, listType2);
    }

    public static void show(Context context, CharSequence charSequence, SelectModelField selectModelField) {
        if (!"deleteFriendList".equals(selectModelField.getCode())) {
            show(context, charSequence, selectModelField, ListType.CHECK);
        } else {
            String currentUid = UserIdMap.getCurrentUid();
            showFriendWatchSelect(context, charSequence, FriendWatch.getList(currentUid), FriendWatch.getDontCollectSet(currentUid), selectModelField);
        }
    }

    public static void show(Context context, CharSequence charSequence, SelectAndCountModelField selectAndCountModelField) {
        show(context, charSequence, selectAndCountModelField, ListType.CHECK);
    }

    public static void show(Context context, CharSequence charSequence, SelectModelField selectModelField, ListType listType2) {
        show(context, charSequence, selectModelField.getExpandValue(), selectModelField, false, listType2);
    }

    public static void show(Context context, CharSequence charSequence, SelectAndCountModelField selectAndCountModelField, ListType listType2) {
        show(context, charSequence, selectAndCountModelField.getExpandValue(), selectAndCountModelField, true, listType2);
    }

    public static void show(Context context, CharSequence charSequence, List<? extends IdAndName> list, SelectModelFieldFunc selectModelFieldFunc2, Boolean bool) {
        show(context, charSequence, list, selectModelFieldFunc2, bool, ListType.CHECK);
    }

    public static void show(Context context, CharSequence charSequence, List<? extends IdAndName> list, SelectModelFieldFunc selectModelFieldFunc2, Boolean bool, ListType listType2) {
        selectModelFieldFunc = selectModelFieldFunc2;
        hasCount = bool;
        isFriendWatchList = false;
        fwDontCollectSet = null;
        ListAdapter clear = ListAdapter.getClear(context, listType2);
        clear.setBaseList(list);
        clear.clearFriendWatchFilter();
        clear.setSelectedList(selectModelFieldFunc2);
        showListDialog(context, charSequence);
        listType = listType2;
    }

    public static void showFriendWatch(Context context, CharSequence charSequence, List<? extends IdAndName> list, Set<String> set) {
        hasCount = false;
        selectModelFieldFunc = null;
        isFriendWatchList = true;
        fwDontCollectSet = set;
        ListAdapter clear = ListAdapter.getClear(context, ListType.SHOW);
        clear.clearFriendWatchFilter();
        clear.fwSortEnabled = true;
        clear.setBaseList(list);
        SelectModelFieldFunc selectModelFieldFuncNewMapInstance = SelectModelFieldFunc.CC.newMapInstance();
        selectModelFieldFunc = selectModelFieldFuncNewMapInstance;
        clear.setSelectedList(selectModelFieldFuncNewMapInstance);
        clear.setFriendWatchFilter(false, false, false, set);
        listType = ListType.SHOW;
        showListDialog(context, charSequence);
        listType = ListType.SHOW;
    }

    private static void showListDialog(final Context context, CharSequence charSequence) {
        AlertDialog alertDialog = listDialog;
        if (alertDialog == null || alertDialog.getContext() != context) {
            listDialog = new AlertDialog.Builder(context).setTitle(charSequence).setView(getListView(context)).setPositiveButton(context.getString(R.string.close), (DialogInterface.OnClickListener) null).create();
        }
        listDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ListDialog.lambda$showListDialog$0(dialogInterface);
            }
        });
        listDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                ListDialog.lambda$showListDialog$1(context, dialogInterface);
            }
        });
        listDialog.show();
        Button button = listDialog.getButton(-1);
        if (button != null) {
            button.setTextColor(ContextCompat.getColor(context, R.color.button));
        }
    }

    static /* synthetic */ void lambda$showListDialog$0(DialogInterface dialogInterface) {
        Runnable runnable = dismissCallback;
        dismissCallback = null;
        if (runnable != null) {
            runnable.run();
        }
    }

    static /* synthetic */ void lambda$showListDialog$1(Context context, DialogInterface dialogInterface) {
        AlertDialog alertDialog = (AlertDialog) dialogInterface;
        RelativeLayout relativeLayout = (RelativeLayout) alertDialog.findViewById(R.id.layout_batch_process);
        layout_batch_process = relativeLayout;
        relativeLayout.setVisibility(listType == ListType.CHECK ? 0 : 8);
        View viewFindViewById = alertDialog.findViewById(R.id.layout_fw_filter);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(isFriendWatchList ? 0 : 8);
        }
        CheckBox checkBox = (CheckBox) alertDialog.findViewById(R.id.cb_filter_shield);
        CheckBox checkBox2 = (CheckBox) alertDialog.findViewById(R.id.cb_filter_dontcollect);
        CheckBox checkBox3 = (CheckBox) alertDialog.findViewById(R.id.cb_filter_single);
        if (checkBox != null) {
            checkBox.setChecked(false);
        }
        if (checkBox2 != null) {
            checkBox2.setChecked(false);
        }
        if (checkBox3 != null) {
            checkBox3.setChecked(false);
        }
        EditText editText = (EditText) alertDialog.findViewById(R.id.et_fw_energy_value);
        TextView textView = (TextView) alertDialog.findViewById(R.id.tv_fw_energy_field);
        TextView textView2 = (TextView) alertDialog.findViewById(R.id.tv_fw_energy_cmp);
        if (editText != null) {
            editText.setText("");
        }
        if (textView != null) {
            textView.setText("周收");
        }
        if (textView2 != null) {
            textView2.setText("以内");
        }
        fwEnergyFieldPosition = 1;
        fwEnergyCmpPosition = 0;
        ListAdapter.get(context).setFriendWatchEnergyFilter(false, 1, 0, 0L);
        ListAdapter.get(context).notifyDataSetChanged();
    }

    private static View getListView(final Context context) {
        final View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_list, (ViewGroup) null);
        btn_find_last = (Button) viewInflate.findViewById(R.id.btn_find_last);
        btn_find_next = (Button) viewInflate.findViewById(R.id.btn_find_next);
        btn_select_all = (Button) viewInflate.findViewById(R.id.btn_select_all);
        btn_select_invert = (Button) viewInflate.findViewById(R.id.btn_select_invert);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int iFindNext;
                if (ListDialog.searchText.length() <= 0) {
                    return;
                }
                ListAdapter listAdapter = ListAdapter.get(view.getContext());
                if (view.getId() == R.id.btn_find_last) {
                    iFindNext = listAdapter.findLast(ListDialog.searchText.getText().toString());
                } else {
                    iFindNext = view.getId() == R.id.btn_find_next ? listAdapter.findNext(ListDialog.searchText.getText().toString()) : -1;
                }
                if (iFindNext < 0) {
                    ToastUtil.show(view.getContext(), "未搜到");
                } else {
                    ListDialog.lv_list.setSelection(iFindNext);
                }
            }
        };
        btn_find_last.setOnClickListener(onClickListener);
        btn_find_next.setOnClickListener(onClickListener);
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ListDialog.lambda$getListView$2(view);
            }
        };
        btn_select_all.setOnClickListener(onClickListener2);
        btn_select_invert.setOnClickListener(onClickListener2);
        final CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_filter_shield);
        final CheckBox checkBox2 = (CheckBox) viewInflate.findViewById(R.id.cb_filter_dontcollect);
        final CheckBox checkBox3 = (CheckBox) viewInflate.findViewById(R.id.cb_filter_single);
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CheckBox checkBox4 = checkBox;
                CheckBox checkBox5 = checkBox2;
                CheckBox checkBox6 = checkBox3;
                ListAdapter.get(compoundButton.getContext()).setFriendWatchFilter(checkBox4 != null && checkBox4.isChecked(), checkBox5 != null && checkBox5.isChecked(), checkBox6 != null && checkBox6.isChecked(), ListDialog.fwDontCollectSet);
            }
        };
        if (checkBox != null) {
            checkBox.setOnCheckedChangeListener(onCheckedChangeListener);
        }
        if (checkBox2 != null) {
            checkBox2.setOnCheckedChangeListener(onCheckedChangeListener);
        }
        if (checkBox3 != null) {
            checkBox3.setOnCheckedChangeListener(onCheckedChangeListener);
        }
        final TextView textView = (TextView) viewInflate.findViewById(R.id.tv_fw_energy_field);
        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_fw_energy_cmp);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.et_fw_energy_value);
        final Runnable runnable = new Runnable() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ListDialog.lambda$getListView$4(editText, viewInflate);
            }
        };
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ListDialog.lambda$getListView$6(textView, runnable, view);
                }
            });
        }
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ListDialog.lambda$getListView$8(textView2, runnable, view);
                }
            });
        }
        if (editText != null) {
            editText.addTextChangedListener(new TextWatcher() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog.2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    runnable.run();
                }
            });
        }
        EditText editText2 = (EditText) viewInflate.findViewById(R.id.one_click_setup);
        oneClickText = editText2;
        editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda12
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                ListDialog.lambda$getListView$9(view, z);
            }
        });
        if (!hasCount.booleanValue()) {
            oneClickText.setVisibility(8);
        }
        EditText editText3 = (EditText) viewInflate.findViewById(R.id.edt_find);
        searchText = editText3;
        editText3.addTextChangedListener(new TextWatcher() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                ListAdapter.get(ListDialog.searchText.getContext()).filter(charSequence == null ? null : charSequence.toString());
            }
        });
        ListView listView = (ListView) viewInflate.findViewById(R.id.lv_list);
        lv_list = listView;
        listView.setAdapter((android.widget.ListAdapter) ListAdapter.getClear(context));
        lv_list.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda13
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                ListDialog.lambda$getListView$11(context, adapterView, view, i, j);
            }
        });
        lv_list.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public final boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
                return ListDialog.lambda$getListView$13(context, adapterView, view, i, j);
            }
        });
        return viewInflate;
    }

    static /* synthetic */ void lambda$getListView$2(View view) {
        ListAdapter listAdapter = ListAdapter.get(view.getContext());
        if (view.getId() == R.id.btn_select_all) {
            listAdapter.selectAll();
        } else if (view.getId() == R.id.btn_select_invert) {
            listAdapter.SelectInvert();
        }
    }

    static /* synthetic */ void lambda$getListView$4(EditText editText, View view) {
        long j;
        boolean z;
        String strTrim = editText != null ? editText.getText().toString().trim() : "";
        if (strTrim.isEmpty()) {
            j = 0;
            z = false;
        } else {
            try {
                j = Long.parseLong(strTrim);
                z = true;
            } catch (NumberFormatException unused) {
                j = 0;
                z = false;
            }
        }
        ListAdapter.get(view.getContext()).setFriendWatchEnergyFilter(z, fwEnergyFieldPosition, fwEnergyCmpPosition, j);
    }

    static /* synthetic */ void lambda$getListView$6(final TextView textView, final Runnable runnable, View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view);
        final String[] strArr = {"日收", "周收", "总收", "日均", "两周", "三周", "四周"};
        for (int i = 0; i < 7; i++) {
            popupMenu.getMenu().add(0, i, i, strArr[i]);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda2
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ListDialog.lambda$getListView$5(textView, strArr, runnable, menuItem);
            }
        });
        popupMenu.show();
    }

    static /* synthetic */ boolean lambda$getListView$5(TextView textView, String[] strArr, Runnable runnable, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        fwEnergyFieldPosition = itemId;
        textView.setText(strArr[itemId]);
        runnable.run();
        return true;
    }

    static /* synthetic */ void lambda$getListView$8(final TextView textView, final Runnable runnable, View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view);
        final String[] strArr = {"以内", "以上"};
        for (int i = 0; i < 2; i++) {
            popupMenu.getMenu().add(0, i, i, strArr[i]);
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda3
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ListDialog.lambda$getListView$7(textView, strArr, runnable, menuItem);
            }
        });
        popupMenu.show();
    }

    static /* synthetic */ boolean lambda$getListView$7(TextView textView, String[] strArr, Runnable runnable, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        fwEnergyCmpPosition = itemId;
        textView.setText(strArr[itemId]);
        runnable.run();
        return true;
    }

    static /* synthetic */ void lambda$getListView$9(View view, boolean z) {
        if (z) {
            oneClickText.setHint("");
            return;
        }
        String string = oneClickText.getText().toString();
        if (string.isEmpty()) {
            oneClickText.setHint("请输入数量");
            return;
        }
        try {
            int i = Integer.parseInt(string);
            if (i <= 0) {
                Toast.makeText(view.getContext(), "请输入大于 0 的数字", 0).show();
                return;
            }
            ListAdapter listAdapter = ListAdapter.get(view.getContext());
            Iterator<IdAndName> it = listAdapter.getSelectedItems().iterator();
            while (it.hasNext()) {
                selectModelFieldFunc.add(it.next().id, Integer.valueOf(i));
            }
            listAdapter.notifyDataSetChanged();
        } catch (NumberFormatException unused) {
            Toast.makeText(view.getContext(), "请输入有效的数字", 0).show();
        }
    }

    static /* synthetic */ void lambda$getListView$11(final Context context, AdapterView adapterView, View view, int i, long j) {
        if (listType == ListType.SHOW && isFriendWatchList) {
            return;
        }
        final IdAndName idAndName = (IdAndName) adapterView.getAdapter().getItem(i);
        final ListAdapter.ViewHolder viewHolder = (ListAdapter.ViewHolder) view.getTag();
        if (!hasCount.booleanValue()) {
            if (listType == ListType.RADIO) {
                selectModelFieldFunc.clear();
                if (viewHolder.cb.isChecked()) {
                    viewHolder.cb.setChecked(false);
                    return;
                }
                for (int i2 = 0; i2 < ListAdapter.viewHolderList.size(); i2++) {
                    ListAdapter.viewHolderList.get(i2).cb.setChecked(false);
                }
                viewHolder.cb.setChecked(true);
                selectModelFieldFunc.add(idAndName.id, 0);
                return;
            }
            if (viewHolder.cb.isChecked()) {
                selectModelFieldFunc.remove(idAndName.id);
                viewHolder.cb.setChecked(false);
                return;
            } else {
                if (!selectModelFieldFunc.contains(idAndName.id).booleanValue()) {
                    selectModelFieldFunc.add(idAndName.id, 0);
                }
                viewHolder.cb.setChecked(true);
                return;
            }
        }
        final EditText editText = new EditText(context);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle(idAndName.name).setView(editText).setPositiveButton(context.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                ListDialog.lambda$getListView$10(editText, idAndName, viewHolder, context, dialogInterface, i3);
            }
        }).setNegativeButton(context.getString(R.string.cancel), (DialogInterface.OnClickListener) null).create();
        if (idAndName instanceof CooperateUser) {
            editText.setHint("浇水克数");
        } else if ((idAndName instanceof AlipayMarathon) || (idAndName instanceof AlipayNewAncientTree)) {
            editText.setHint("助力克数");
        } else {
            editText.setHint("次数");
        }
        Integer num = selectModelFieldFunc.get(idAndName.id);
        if (num != null && num.intValue() >= 0) {
            editText.setText(String.valueOf(num));
        } else {
            editText.getText().clear();
        }
        alertDialogCreate.show();
    }

    static /* synthetic */ void lambda$getListView$10(EditText editText, IdAndName idAndName, ListAdapter.ViewHolder viewHolder, Context context, DialogInterface dialogInterface, int i) {
        int i2;
        if (i == -1) {
            if (editText.length() > 0) {
                try {
                    i2 = Integer.parseInt(editText.getText().toString());
                } catch (Throwable unused) {
                    return;
                }
            } else {
                i2 = 0;
            }
            Integer num = selectModelFieldFunc.get(idAndName.id);
            if (i2 > 0) {
                selectModelFieldFunc.add(idAndName.id, Integer.valueOf(i2));
                viewHolder.cb.setChecked(true);
            } else {
                if (num != null && num.intValue() >= 0) {
                    selectModelFieldFunc.remove(idAndName.id);
                }
                viewHolder.cb.setChecked(false);
            }
        }
        ListAdapter.get(context).notifyDataSetChanged();
    }

    static /* synthetic */ boolean lambda$getListView$13(final Context context, AdapterView adapterView, View view, int i, long j) {
        final IdAndName idAndName = (IdAndName) adapterView.getAdapter().getItem(i);
        if ((idAndName instanceof AlipayTree) || (idAndName instanceof AlipayReserve) || (idAndName instanceof AlipayAnimal) || (idAndName instanceof AlipayMarathon) || (idAndName instanceof AlipayNewAncientTree) || (idAndName instanceof AlipayBeach) || (idAndName instanceof AlipayPlantScene) || (idAndName instanceof AlipayrpcRequest) || (idAndName instanceof AlipayForestHunt) || (idAndName instanceof AlipayMemberCreditSesameTaskList) || (idAndName instanceof AlipayAntForestVitalityTaskList) || (idAndName instanceof AlipayAntForestHuntTaskList) || (idAndName instanceof AlipayAntFarmDoFarmTaskList) || (idAndName instanceof AlipayAntFarmDrawMachineTaskList) || (idAndName instanceof AlipayAntFarmChickenChefTaskList) || (idAndName instanceof AlipayAntDodoTaskList) || (idAndName instanceof AlipayAntOceanAntiepTaskList) || (idAndName instanceof AlipayAntOceanFishBlackList) || (idAndName instanceof AlipayAntOrchardTaskList) || (idAndName instanceof AlipayAntOrchardDrawTaskList) || (idAndName instanceof AlipayGoldenBeansTaskList) || (idAndName instanceof AlipayMonopolyTaskList) || (idAndName instanceof AlipayAntStallTaskList) || (idAndName instanceof AlipayAntSportsTaskList) || (idAndName instanceof WalkPathThemeMapList) || (idAndName instanceof AlipayAntMemberTaskList) || (idAndName instanceof WalkPath)) {
            try {
                new AlertDialog.Builder(context).setTitle("删除 " + idAndName.name).setPositiveButton(context.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ListDialog.lambda$getListView$12(idAndName, context, dialogInterface, i2);
                    }
                }).setNegativeButton(context.getString(R.string.cancel), (DialogInterface.OnClickListener) null).create().show();
                return true;
            } catch (Throwable unused) {
                return true;
            }
        }
        if (!(idAndName instanceof AlipayUser) && !(idAndName instanceof FriendWatch)) {
            return true;
        }
        new AlertDialog.Builder(context).setTitle("选项").setAdapter(OptionsAdapter.get(context), new AnonymousClass4(idAndName).setContext(context)).setNegativeButton(context.getString(R.string.cancel), (DialogInterface.OnClickListener) null).create().show();
        return true;
    }

    static /* synthetic */ void lambda$getListView$12(IdAndName idAndName, Context context, DialogInterface dialogInterface, int i) {
        if (i == -1) {
            if (idAndName instanceof AlipayTree) {
                AlipayTree.remove(idAndName.id);
                TreeIdMap.remove(idAndName.id);
                TreeIdMap.save();
            } else if (idAndName instanceof AlipayReserve) {
                AlipayReserve.remove(idAndName.id);
                ReserveIdMap.remove(idAndName.id);
                ReserveIdMap.save();
            } else if (idAndName instanceof AlipayAnimal) {
                AlipayAnimal.remove(idAndName.id);
                AnimalIdMap.remove(idAndName.id);
                AnimalIdMap.save();
            } else if (idAndName instanceof AlipayMarathon) {
                AlipayMarathon.remove(idAndName.id);
                MarathonIdMap.remove(idAndName.id);
                MarathonIdMap.save();
            } else if (idAndName instanceof AlipayNewAncientTree) {
                AlipayNewAncientTree.remove(idAndName.id);
                NewAncientTreeIdMap.remove(idAndName.id);
                NewAncientTreeIdMap.save();
            } else if (idAndName instanceof AlipayBeach) {
                AlipayBeach.remove(idAndName.id);
                BeachIdMap.remove(idAndName.id);
                BeachIdMap.save();
            } else if (idAndName instanceof AlipayPlantScene) {
                AlipayPlantScene.remove(idAndName.id);
                PlantSceneIdMap.remove(idAndName.id);
                PlantSceneIdMap.save();
            } else if (idAndName instanceof AlipayrpcRequest) {
                AlipayrpcRequest.remove(idAndName.id);
                rpcRequestMap.remove(idAndName.id);
                rpcRequestMap.save();
            } else if (idAndName instanceof AlipayForestHunt) {
                AlipayForestHunt.remove(idAndName.id);
                ForestHuntIdMap.remove(idAndName.id);
                ForestHuntIdMap.save();
            } else if (idAndName instanceof AlipayMemberCreditSesameTaskList) {
                AlipayMemberCreditSesameTaskList.remove(idAndName.id);
                MemberCreditSesameTaskListMap.remove(idAndName.id);
                MemberCreditSesameTaskListMap.save();
            } else if (idAndName instanceof AlipayAntForestVitalityTaskList) {
                AlipayAntForestVitalityTaskList.remove(idAndName.id);
                AntForestVitalityTaskListMap.remove(idAndName.id);
                AntForestVitalityTaskListMap.save();
            } else if (idAndName instanceof AlipayAntForestHuntTaskList) {
                AlipayAntForestHuntTaskList.remove(idAndName.id);
                AntForestHuntTaskListMap.remove(idAndName.id);
                AntForestHuntTaskListMap.save();
            } else if (idAndName instanceof AlipayAntFarmDoFarmTaskList) {
                AlipayAntFarmDoFarmTaskList.remove(idAndName.id);
                AntFarmDoFarmTaskListMap.remove(idAndName.id);
                AntFarmDoFarmTaskListMap.save();
            } else if (idAndName instanceof AlipayAntFarmChickenChefTaskList) {
                AlipayAntFarmChickenChefTaskList.remove(idAndName.id);
                AntFarmChickenChefTaskListMap.remove(idAndName.id);
                AntFarmChickenChefTaskListMap.save();
            } else if (idAndName instanceof AlipayAntFarmDrawMachineTaskList) {
                AlipayAntFarmDrawMachineTaskList.remove(idAndName.id);
                AntFarmDrawMachineTaskListMap.remove(idAndName.id);
                AntFarmDrawMachineTaskListMap.save();
            } else if (idAndName instanceof AlipayAntDodoTaskList) {
                AlipayAntDodoTaskList.remove(idAndName.id);
                AntDodoTaskListMap.remove(idAndName.id);
                AntDodoTaskListMap.save();
            } else if (idAndName instanceof AlipayAntOceanAntiepTaskList) {
                AlipayAntOceanAntiepTaskList.remove(idAndName.id);
                AntOceanAntiepTaskListMap.remove(idAndName.id);
                AntOceanAntiepTaskListMap.save();
            } else if (idAndName instanceof AlipayAntOceanFishBlackList) {
                AlipayAntOceanFishBlackList.remove(idAndName.id);
                AntOceanFishBlackListMap.remove(idAndName.id);
                AntOceanFishBlackListMap.save();
            } else if (idAndName instanceof AlipayAntOrchardTaskList) {
                AlipayAntOrchardTaskList.remove(idAndName.id);
                AntOrchardTaskListMap.remove(idAndName.id);
                AntOrchardTaskListMap.save();
            } else if (idAndName instanceof AlipayAntOrchardDrawTaskList) {
                AlipayAntOrchardDrawTaskList.remove(idAndName.id);
                AntOrchardDrawTaskListMap.remove(idAndName.id);
                AntOrchardDrawTaskListMap.save();
            } else if (idAndName instanceof AlipayGoldenBeansTaskList) {
                AlipayGoldenBeansTaskList.remove(idAndName.id);
                GoldenBeansTaskListMap.remove(idAndName.id);
                GoldenBeansTaskListMap.save();
            } else if (idAndName instanceof AlipayMonopolyTaskList) {
                AlipayMonopolyTaskList.remove(idAndName.id);
                MonopolyTaskListMap.remove(idAndName.id);
                MonopolyTaskListMap.save();
            } else if (idAndName instanceof AlipayAntStallTaskList) {
                AlipayAntStallTaskList.remove(idAndName.id);
                AntStallTaskListMap.remove(idAndName.id);
                AntStallTaskListMap.save();
            } else if (idAndName instanceof AlipayAntSportsTaskList) {
                AlipayAntSportsTaskList.remove(idAndName.id);
                AntSportsTaskListMap.remove(idAndName.id);
                AntSportsTaskListMap.save();
            } else if (idAndName instanceof WalkPathThemeMapList) {
                WalkPathThemeMapList.remove(idAndName.id);
                PathThemeMapListMap.remove(idAndName.id);
                PathThemeMapListMap.save();
            } else if (idAndName instanceof AlipayAntMemberTaskList) {
                AlipayAntMemberTaskList.remove(idAndName.id);
                AntMemberTaskListMap.remove(idAndName.id);
                AntMemberTaskListMap.save();
            }
            selectModelFieldFunc.remove(idAndName.id);
            ListAdapter.get(context).exitFind();
        }
        ListAdapter.get(context).notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.ui.ListDialog$4, reason: invalid class name */
    class AnonymousClass4 implements DialogInterface.OnClickListener {
        Context c;
        final /* synthetic */ IdAndName val$curIdAndName;

        AnonymousClass4(IdAndName idAndName) {
            this.val$curIdAndName = idAndName;
        }

        public DialogInterface.OnClickListener setContext(Context context) {
            this.c = context;
            return this;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String str;
            if (i == 0) {
                str = "alipays://platformapi/startapp?saId=10000007&qrcode=https%3A%2F%2F60000002.h5app.alipay.com%2Fwww%2Fhome.html%3FuserId%3D";
            } else if (i == 1) {
                str = "alipays://platformapi/startapp?saId=10000007&qrcode=https%3A%2F%2F66666674.h5app.alipay.com%2Fwww%2Findex.htm%3Fuid%3D";
            } else if (i != 2) {
                str = null;
                if (i == 3) {
                    try {
                        AlertDialog.Builder title = new AlertDialog.Builder(this.c).setTitle("删除 " + this.val$curIdAndName.name);
                        String string = this.c.getString(R.string.ok);
                        final IdAndName idAndName = this.val$curIdAndName;
                        title.setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ListDialog$4$$ExternalSyntheticLambda0
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface2, int i2) {
                                this.f$0.m138lambda$onClick$0$iogithublazyimmortalsesameuiListDialog$4(idAndName, dialogInterface2, i2);
                            }
                        }).setNegativeButton(this.c.getString(R.string.cancel), (DialogInterface.OnClickListener) null).create().show();
                    } catch (Throwable unused) {
                    }
                }
            } else {
                str = "alipays://platformapi/startapp?appId=20000166&actionType=profile&userId=";
            }
            if (str != null) {
                this.c.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str + this.val$curIdAndName.id)));
            }
        }

        /* JADX INFO: renamed from: lambda$onClick$0$io-github-lazyimmortal-sesame-ui-ListDialog$4, reason: not valid java name */
        /* synthetic */ void m138lambda$onClick$0$iogithublazyimmortalsesameuiListDialog$4(IdAndName idAndName, DialogInterface dialogInterface, int i) {
            if (i == -1) {
                if (idAndName instanceof AlipayUser) {
                    UserIdMap.remove(idAndName.id);
                } else {
                    boolean z = idAndName instanceof FriendWatch;
                }
                ListDialog.selectModelFieldFunc.remove(idAndName.id);
                ListAdapter.get(this.c).exitFind();
            }
            ListAdapter.get(this.c).notifyDataSetChanged();
        }
    }
}
