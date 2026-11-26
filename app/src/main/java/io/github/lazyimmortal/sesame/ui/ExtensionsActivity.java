package io.github.lazyimmortal.sesame.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.TokenConfig;
import io.github.lazyimmortal.sesame.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class ExtensionsActivity extends BaseActivity {
    Button btnClearDishImage;
    Button btnDeveloperMode;
    Button btnFillWateredFriendList;
    Button btnGetNewTreeItems;
    Button btnGetTreeItems;
    Button btnGetUnlockTreeItems;
    Button btnGetWateredItems;
    Button btnGetWateringItems;
    Button btnQueryAreaTrees;
    Button btnSetCustomWalkPathId;
    Button btnSetCustomWalkPathIdQueue;

    @Override // io.github.lazyimmortal.sesame.ui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_extend);
        setBaseTitle(getString(R.string.extensions));
        this.btnGetWateredItems = (Button) findViewById(R.id.btn_get_watered_items);
        this.btnGetWateringItems = (Button) findViewById(R.id.btn_get_watering_items);
        this.btnGetTreeItems = (Button) findViewById(R.id.btn_get_tree_items);
        this.btnGetNewTreeItems = (Button) findViewById(R.id.btn_get_newTree_items);
        this.btnQueryAreaTrees = (Button) findViewById(R.id.btn_query_area_trees);
        this.btnGetUnlockTreeItems = (Button) findViewById(R.id.btn_get_unlock_treeItems);
        this.btnClearDishImage = (Button) findViewById(R.id.btn_clear_dish_image);
        this.btnSetCustomWalkPathId = (Button) findViewById(R.id.btn_set_custom_walk_path_id_list);
        this.btnSetCustomWalkPathIdQueue = (Button) findViewById(R.id.btn_set_custom_walk_path_id_queue);
        this.btnDeveloperMode = (Button) findViewById(R.id.btn_developer_mode);
        this.btnFillWateredFriendList = (Button) findViewById(R.id.btn_fill_watered_friend_list);
        this.btnGetWateredItems.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "getWateredItems", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnGetWateringItems.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "getWateringItems", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnGetTreeItems.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "getTreeItems", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnGetNewTreeItems.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "getNewTreeItems", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnQueryAreaTrees.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "queryAreaTrees", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnGetUnlockTreeItems.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "getUnlockTreeItems", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送查询请求，请在森林日志查看结果！");
            }
        });
        this.btnClearDishImage.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m131x105a9e0c(view);
            }
        });
        this.btnSetCustomWalkPathId.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m133x2ad0010e(view);
            }
        });
        this.btnSetCustomWalkPathIdQueue.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m136xd2801591(view);
            }
        });
        this.btnDeveloperMode.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ExtensionsActivity.this.startActivity(new Intent(ExtensionsActivity.this, Class.forName("io.github.lazyimmortal.sesame.ui.AlphaActivity")));
                } catch (Exception unused) {
                    ToastUtil.show(ExtensionsActivity.this, "不符合开启资格！");
                }
            }
        });
        this.btnFillWateredFriendList.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtensionsActivity.this.sendItemsBroadcast("antForest", "fillWateredFriendList", null);
                ToastUtil.show(ExtensionsActivity.this, "已发送填入请求，请在森林日志查看结果！");
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m131x105a9e0c(View view) {
        new AlertDialog.Builder(this).setTitle(R.string.clear_dish_image).setMessage("确认清空" + TokenConfig.getDishImageCount() + "组光盘行动图片？").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ExtensionsActivity.lambda$onCreate$0(this, dialogInterface, i);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    static /* synthetic */ void lambda$onCreate$0(Context context, DialogInterface dialogInterface, int i) {
        if (TokenConfig.clearDishImage().booleanValue()) {
            ToastUtil.show(context, "光盘行动图片清空成功");
        } else {
            ToastUtil.show(context, "光盘行动图片清空失败");
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$4$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m133x2ad0010e(View view) {
        final EditText editText = new EditText(this);
        editText.setHint(R.string.msg_input_custom_walk_path_id);
        new AlertDialog.Builder(this).setTitle(R.string.set_custom_walk_path_id_list).setView(editText).setPositiveButton(R.string.btn_add_custom_walk_path_id, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m132x9d954f8d(editText, dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: renamed from: lambda$onCreate$3$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m132x9d954f8d(EditText editText, DialogInterface dialogInterface, int i) {
        sendItemsBroadcast("setCustomWalkPathIdList", "addCustomWalkPathId", editText.getText().toString().trim());
    }

    /* JADX INFO: renamed from: lambda$onCreate$7$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m136xd2801591(View view) {
        final EditText editText = new EditText(this);
        editText.setHint(R.string.msg_input_custom_walk_path_id);
        new AlertDialog.Builder(this).setTitle(R.string.set_custom_walk_path_id_queue).setView(editText).setPositiveButton(R.string.btn_add_custom_walk_path_id, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m134xb80ab28f(editText, dialogInterface, i);
            }
        }).setNegativeButton(getString(R.string.btn_clear_custom_walk_path_id_queue), new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ExtensionsActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m135x45456410(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: renamed from: lambda$onCreate$5$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m134xb80ab28f(EditText editText, DialogInterface dialogInterface, int i) {
        sendItemsBroadcast("setCustomWalkPathIdQueue", "addCustomWalkPathIdQueue", editText.getText().toString().trim());
    }

    /* JADX INFO: renamed from: lambda$onCreate$6$io-github-lazyimmortal-sesame-ui-ExtensionsActivity, reason: not valid java name */
    /* synthetic */ void m135x45456410(DialogInterface dialogInterface, int i) {
        sendItemsBroadcast("setCustomWalkPathIdQueue", "clearCustomWalkPathIdQueue", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendItemsBroadcast(String str, String str2, String str3) {
        Intent intent = new Intent("com.eg.android.AlipayGphone.sesame.rpctest");
        intent.putExtra("type", str);
        intent.putExtra("method", str2);
        intent.putExtra("data", str3);
        sendBroadcast(intent);
    }
}
