package io.github.lazyimmortal.sesame.ui;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class OptionsAdapter extends BaseAdapter {
    private static OptionsAdapter adapter;
    Context context;
    ArrayList<String> list;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public static OptionsAdapter get(Context context) {
        if (adapter == null) {
            adapter = new OptionsAdapter(context);
        }
        return adapter;
    }

    private OptionsAdapter(Context context) {
        this.context = context;
        ArrayList<String> arrayList = new ArrayList<>();
        this.list = arrayList;
        arrayList.add("查看森林");
        this.list.add("查看庄园");
        this.list.add("查看资料");
        this.list.add("删除");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<String> arrayList = this.list;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.list.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.simple_list_item_1, (ViewGroup) null);
        }
        ((TextView) view).setText(getItem(i).toString());
        return view;
    }
}
