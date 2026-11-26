package io.github.lazyimmortal.sesame.model.task.friendDelete;

import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.data.ModelFields;
import io.github.lazyimmortal.sesame.data.ModelGroup;
import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField;
import io.github.lazyimmortal.sesame.data.task.ModelTask;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class FriendDeleteModel extends ModelTask {
    private static final String TAG = "FriendDeleteModel";
    private SelectModelField deleteFriendList;

    private static boolean deleteFriend(String str) {
        try {
            ClassLoader classLoader = ApplicationHook.getClassLoader();
            Object serviceObject = ApplicationHook.getServiceObject("com.alipay.mobile.framework.service.common.RpcService");
            if (serviceObject == null) {
                Log.record("好友删除：RpcService不可用");
                return false;
            }
            Class<?> clsLoadClass = classLoader.loadClass("com.alipay.mobilerelation.rpc.MobileRelationManageService");
            Object objInvoke = serviceObject.getClass().getMethod("getRpcProxy", Class.class).invoke(serviceObject, clsLoadClass);
            Class<?> clsLoadClass2 = classLoader.loadClass("com.alipay.mobilerelation.biz.shared.req.HandleRelationReq");
            Object objNewInstance = clsLoadClass2.newInstance();
            Field fieldFindField = findField(clsLoadClass2, "targetUserId");
            if (fieldFindField != null) {
                fieldFindField.set(objNewInstance, str);
            }
            Field fieldFindField2 = findField(clsLoadClass2, "bizType");
            if (fieldFindField2 != null) {
                fieldFindField2.set(objNewInstance, "2");
            }
            Object objInvoke2 = clsLoadClass.getMethod("handleRelation", clsLoadClass2).invoke(objInvoke, objNewInstance);
            if (objInvoke2 == null) {
                Log.record("好友删除：接口返回为空");
                return false;
            }
            Field fieldFindField3 = findField(objInvoke2.getClass(), "resultCode");
            if (fieldFindField3 == null) {
                Log.record("好友删除：无法读取结果");
                return false;
            }
            Object obj = fieldFindField3.get(objInvoke2);
            int iIntValue = obj instanceof Number ? ((Number) obj).intValue() : -1;
            if (iIntValue == 100) {
                Log.record("好友删除：已删除 " + str);
                return true;
            }
            Log.record("好友删除：删除失败 " + str + " code=" + iIntValue);
            return false;
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "deleteFriend err:");
            Log.printStackTrace(str2, th);
            Log.record("好友删除：异常 " + str);
            return false;
        }
    }

    private static Field findField(Class cls, String str) {
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static Set getDeleteSet() {
        SelectModelField selectModelField;
        try {
            Model model = Model.getModel(FriendDeleteModel.class);
            if (model == null || (selectModelField = (SelectModelField) model.getFields().get("deleteFriendList")) == null) {
                return null;
            }
            return selectModelField.getValue();
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
            return null;
        }
    }

    public static boolean isDeleteFriendSelected(String str) {
        if (str != null) {
            try {
                Set deleteSet = getDeleteSet();
                if (deleteSet != null) {
                    return deleteSet.contains(str);
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static void toggleDeleteFriend(String str) {
        try {
            Set deleteSet = getDeleteSet();
            if (deleteSet != null) {
                if (deleteSet.contains(str)) {
                    deleteSet.remove(str);
                } else {
                    deleteSet.add(str);
                }
                ConfigV2.save(UserIdMap.getCurrentUid(), true);
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.i(str2, "toggleDeleteFriend err:");
            Log.printStackTrace(str2, th);
        }
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public Boolean check() {
        return true;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public ModelFields getFields() {
        ModelFields modelFields = new ModelFields();
        SelectModelField selectModelField = new SelectModelField("deleteFriendList", "勾选要删除的好友", new LinkedHashSet(), new SelectModelField.SelectListFunc() { // from class: io.github.lazyimmortal.sesame.model.task.friendDelete.FriendDeleteModel$$ExternalSyntheticLambda0
            @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField.SelectListFunc
            public final List getList() {
                return AlipayUser.getList();
            }
        });
        this.deleteFriendList = selectModelField;
        modelFields.addField(selectModelField);
        return modelFields;
    }

    @Override // io.github.lazyimmortal.sesame.data.Model
    public ModelGroup getGroup() {
        return ModelGroup.FARM;
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask, io.github.lazyimmortal.sesame.data.Model
    public String getName() {
        return "好友删除";
    }

    @Override // io.github.lazyimmortal.sesame.data.task.ModelTask
    public void run() {
        try {
            Log.record("开始执行好友删除");
            Set<String> value = this.deleteFriendList.getValue();
            if (value == null) {
                Log.record("好友删除：未勾选好友，跳过");
                return;
            }
            Iterator<String> it = value.iterator();
            while (it.hasNext()) {
                if (deleteFriend(it.next())) {
                    it.remove();
                    ConfigV2.save(UserIdMap.getCurrentUid(), true);
                }
                Thread.sleep(20000L);
            }
        } catch (Throwable th) {
            String str = TAG;
            Log.i(str, "run err:");
            Log.printStackTrace(str, th);
        }
    }
}
