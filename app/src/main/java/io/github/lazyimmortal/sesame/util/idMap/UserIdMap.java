package io.github.lazyimmortal.sesame.util.idMap;

import com.fasterxml.jackson.core.type.TypeReference;
import de.robv.android.xposed.XposedHelpers;
import io.github.lazyimmortal.sesame.entity.UserEntity;
import io.github.lazyimmortal.sesame.hook.ApplicationHook;
import io.github.lazyimmortal.sesame.ui.ListAdapter;
import io.github.lazyimmortal.sesame.util.FileUtil;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class UserIdMap {
    private static String currentUid;
    private static final Map<String, UserEntity> readOnlyUserMap;
    private static final Map<String, UserEntity> userMap;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        userMap = concurrentHashMap;
        readOnlyUserMap = Collections.unmodifiableMap(concurrentHashMap);
        currentUid = null;
    }

    public static String getCurrentUid() {
        return currentUid;
    }

    public static Map<String, UserEntity> getUserMap() {
        return readOnlyUserMap;
    }

    public static Set<String> getUserIdSet() {
        return userMap.keySet();
    }

    public static Collection<UserEntity> getUserEntityCollection() {
        return userMap.values();
    }

    public static synchronized void initUser(String str) {
        setCurrentUserId(str);
        load(str);
        ApplicationHook.getMainHandler().post(new Runnable() { // from class: io.github.lazyimmortal.sesame.util.idMap.UserIdMap$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UserIdMap.lambda$initUser$0();
            }
        });
    }

    static /* synthetic */ void lambda$initUser$0() {
        try {
            ClassLoader classLoader = ApplicationHook.getClassLoader();
            try {
                String userId = ApplicationHook.getUserId();
                List list = (List) XposedHelpers.callMethod(XposedHelpers.callStaticMethod(classLoader.loadClass("com.alipay.mobile.socialcommonsdk.bizdata.UserIndependentCache"), "getCacheObj", new Object[]{classLoader.loadClass("com.alipay.mobile.socialcommonsdk.bizdata.contact.data.AliAccountDaoOp")}), "getAllFriends", new Object[0]);
                if (!list.isEmpty()) {
                    unload();
                    Class<?> cls = list.get(0).getClass();
                    Field fieldFindField = XposedHelpers.findField(cls, "userId");
                    Field fieldFindField2 = XposedHelpers.findField(cls, "account");
                    Field fieldFindField3 = XposedHelpers.findField(cls, "name");
                    Field fieldFindField4 = XposedHelpers.findField(cls, "nickName");
                    Field fieldFindField5 = XposedHelpers.findField(cls, "remarkName");
                    Field fieldFindField6 = XposedHelpers.findField(cls, "friendStatus");
                    Field fieldFindField7 = XposedHelpers.findField(cls, "headImageUrl");
                    Field fieldFindField8 = XposedHelpers.findField(cls, "firstAlphaChar");
                    Field fieldFindField9 = XposedHelpers.findField(cls, "version");
                    Field fieldFindField10 = XposedHelpers.findField(cls, "extVersion");
                    Field fieldFindField11 = XposedHelpers.findField(cls, "isDelete");
                    UserEntity userEntity = null;
                    for (Object obj : list) {
                        try {
                            String str = (String) fieldFindField.get(obj);
                            UserEntity userEntity2 = new UserEntity(str, (String) fieldFindField2.get(obj), (Integer) fieldFindField6.get(obj), (String) fieldFindField3.get(obj), (String) fieldFindField4.get(obj), (String) fieldFindField5.get(obj), (String) fieldFindField7.get(obj), (String) fieldFindField8.get(obj), (Long) fieldFindField9.get(obj), (Long) fieldFindField10.get(obj), (Boolean) fieldFindField11.get(obj));
                            if (Objects.equals(userId, str)) {
                                userEntity = userEntity2;
                            }
                            add(userEntity2);
                        } catch (Throwable th) {
                            Log.i("addUserObject err:");
                            Log.printStackTrace(th);
                        }
                    }
                    saveSelf(userEntity);
                }
                save(userId);
                try {
                    ArrayList arrayList = new ArrayList();
                    for (UserEntity userEntity3 : userMap.values()) {
                        if (userEntity3.getHeadImageUrl() != null && !userEntity3.getHeadImageUrl().isEmpty()) {
                            arrayList.add(userEntity3.getHeadImageUrl());
                        }
                    }
                    ListAdapter.predownloadAvatars(arrayList);
                } catch (Throwable unused) {
                }
            } catch (Throwable th2) {
                Log.i("checkUnknownId.run err:");
                Log.printStackTrace(th2);
            }
        } catch (Exception unused2) {
            Log.i("Error getting classloader");
        }
    }

    public static synchronized void setCurrentUserId(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                currentUid = str;
                return;
            }
        }
        currentUid = null;
    }

    public static String getCurrentMaskName() {
        return getMaskName(currentUid);
    }

    public static String getMaskName(String str) {
        UserEntity userEntity = userMap.get(str);
        if (userEntity == null) {
            return null;
        }
        return userEntity.getMaskName();
    }

    public static String getShowName(String str) {
        if (str == null || str.isEmpty()) {
            return "未知用户";
        }
        UserEntity userEntity = userMap.get(str);
        return userEntity == null ? str : userEntity.getShowName();
    }

    public static String getFullName(String str) {
        UserEntity userEntity = userMap.get(str);
        if (userEntity == null) {
            return null;
        }
        return userEntity.getFullName();
    }

    public static UserEntity get(String str) {
        return userMap.get(str);
    }

    public static synchronized void add(UserEntity userEntity) {
        String userId = userEntity.getUserId();
        if (userId != null && !userId.isEmpty()) {
            userMap.put(userId, userEntity);
        }
    }

    public static synchronized void remove(String str) {
        userMap.remove(str);
    }

    public static synchronized void load(String str) {
        userMap.clear();
        try {
            String fromFile = FileUtil.readFromFile(FileUtil.getFriendIdMapFile(str));
            if (!fromFile.isEmpty()) {
                for (UserEntity.UserDto userDto : ((Map) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<Map<String, UserEntity.UserDto>>() { // from class: io.github.lazyimmortal.sesame.util.idMap.UserIdMap.1
                })).values()) {
                    userMap.put(userDto.getUserId(), userDto.toEntity());
                }
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static synchronized void unload() {
        userMap.clear();
    }

    public static synchronized boolean save(String str) {
        return FileUtil.write2File(JsonUtil.toJsonString(userMap), FileUtil.getFriendIdMapFile(str));
    }

    public static synchronized void loadSelf(String str) {
        Map<String, UserEntity> map = userMap;
        map.clear();
        try {
            String fromFile = FileUtil.readFromFile(FileUtil.getSelfIdFile(str));
            if (!fromFile.isEmpty()) {
                UserEntity.UserDto userDto = (UserEntity.UserDto) JsonUtil.parseObject(fromFile, (TypeReference) new TypeReference<UserEntity.UserDto>() { // from class: io.github.lazyimmortal.sesame.util.idMap.UserIdMap.2
                });
                map.put(userDto.getUserId(), userDto.toEntity());
            }
        } catch (Exception e) {
            Log.printStackTrace(e);
        }
    }

    public static synchronized boolean saveSelf(UserEntity userEntity) {
        return FileUtil.write2File(JsonUtil.toJsonString(userEntity), FileUtil.getSelfIdFile(userEntity.getUserId()));
    }
}
