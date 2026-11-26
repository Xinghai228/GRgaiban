package io.github.lazyimmortal.sesame.util;

import android.os.Build;
import android.os.Environment;
import io.github.lazyimmortal.sesame.hook.Toast;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public class FileUtil {
    private static final String BACKUP_DIR_NAME = "bak";
    public static final String BACKUP_FILE_EXT = ".json";
    public static final String BACKUP_FILE_PREFIX = "config_v2_";
    public static final String CONFIG_DIRECTORY_NAME = "sesame";
    private static final String TAG = "FileUtil";
    private static File cityCodeFile;
    private static File wuaFile;
    public static final File MAIN_DIRECTORY_FILE = getMainDirectoryFile();
    public static final File CONFIG_DIRECTORY_FILE = getConfigDirectoryFile();
    public static final File LOG_DIRECTORY_FILE = getLogDirectoryFile();
    private static int BACKUP_MAX_COUNT = 5;

    public static int getBackupMaxCountFromConfig() {
        try {
            Integer value = BaseModel.backupConfigDays.getValue();
            if (value != null && value.intValue() > 0) {
                return Math.min(value.intValue(), 26);
            }
            Log.error("BaseModel中备份份数配置无效（值：" + value + "），使用默认值5");
            return 5;
        } catch (Exception e) {
            Log.error("读取BaseModel备份配置失败，使用默认值5");
            Log.printStackTrace("FileUtil.getBackupMaxCountFromConfig", e);
            return 5;
        }
    }

    public static File getBackupDirectoryFile() {
        File file = new File(getMainDirectoryFile(), BACKUP_DIR_NAME);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static String getBackupSuffix(int i) {
        return String.valueOf((char) (i + 65));
    }

    public static boolean isConfigV2BackedUpTodayForUser(String str) {
        if (StringUtil.isEmpty(str)) {
            str = "default";
        }
        File backupDirectoryFile = getBackupDirectoryFile();
        int backupMaxCountFromConfig = getBackupMaxCountFromConfig();
        for (int i = 0; i < backupMaxCountFromConfig; i++) {
            File file = new File(backupDirectoryFile, BACKUP_FILE_PREFIX + str + "_" + getBackupSuffix(i) + BACKUP_FILE_EXT);
            if (file.exists() && isFileModifiedToday(file)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isFileModifiedToday(File file) {
        long jLastModified = file.lastModified();
        if (jLastModified == 0) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = Log.DATE_FORMAT_THREAD_LOCAL.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        }
        return simpleDateFormat.format(new Date(jLastModified)).equals(simpleDateFormat.format(new Date()));
    }

    private static File findNextBackupFileForUser(String str) {
        if (StringUtil.isEmpty(str)) {
            str = "default";
        }
        File backupDirectoryFile = getBackupDirectoryFile();
        int backupMaxCountFromConfig = getBackupMaxCountFromConfig();
        for (int i = 0; i < backupMaxCountFromConfig; i++) {
            File file = new File(backupDirectoryFile, BACKUP_FILE_PREFIX + str + "_" + getBackupSuffix(i) + BACKUP_FILE_EXT);
            if (!file.exists()) {
                return file;
            }
        }
        File file2 = null;
        long j = LongCompanionObject.MAX_VALUE;
        for (int i2 = 0; i2 < backupMaxCountFromConfig; i2++) {
            File file3 = new File(backupDirectoryFile, BACKUP_FILE_PREFIX + str + "_" + getBackupSuffix(i2) + BACKUP_FILE_EXT);
            long jLastModified = file3.lastModified();
            if (jLastModified < j) {
                file2 = file3;
                j = jLastModified;
            }
        }
        if (file2 != null) {
            return file2;
        }
        return new File(backupDirectoryFile, BACKUP_FILE_PREFIX + str + "_A.json");
    }

    public static void backupConfigV2WithRolling(String str) {
        BACKUP_MAX_COUNT = getBackupMaxCountFromConfig();
        if (isConfigV2BackedUpTodayForUser(str)) {
            StringBuilder sb = new StringBuilder("FileUtil#用户[");
            if (StringUtil.isEmpty(str)) {
                str = "default";
            }
            sb.append(str);
            sb.append("]当天已备份，跳过");
            Log.record(sb.toString());
            return;
        }
        File defaultConfigV2File = StringUtil.isEmpty(str) ? getDefaultConfigV2File() : getConfigV2File(str);
        if (!defaultConfigV2File.exists()) {
            Log.error("原配置文件不存在，跳过备份: " + defaultConfigV2File.getPath());
            return;
        }
        File fileFindNextBackupFileForUser = findNextBackupFileForUser(str);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                Files.copy(defaultConfigV2File.toPath(), fileFindNextBackupFileForUser.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }
            StringBuilder sb2 = new StringBuilder("备份成功🔄配置覆盖滚动");
            sb2.append(BACKUP_MAX_COUNT);
            sb2.append("次循环#用户:");
            sb2.append(StringUtil.isEmpty(str) ? "default" : UserIdMap.getShowName(UserIdMap.getShowName(str)));
            sb2.append("#备份文件:");
            sb2.append(getBackupDirectoryFile().getPath());
            sb2.append("/");
            sb2.append(fileFindNextBackupFileForUser.getName());
            Log.record(sb2.toString());
        } catch (IOException e) {
            Log.printStackTrace("FileUtil", e);
            StringBuilder sb3 = new StringBuilder("备份失败|用户: ");
            if (StringUtil.isEmpty(str)) {
                str = "default";
            }
            sb3.append(str);
            sb3.append("|原因: ");
            sb3.append(e.getMessage());
            Log.error(sb3.toString());
        }
    }

    public static File findLatestBackupFile(String str) {
        if (StringUtil.isEmpty(str)) {
            str = "default";
        }
        File backupDirectoryFile = getBackupDirectoryFile();
        int backupMaxCountFromConfig = getBackupMaxCountFromConfig();
        File file = null;
        long j = 0;
        for (int i = 0; i < backupMaxCountFromConfig; i++) {
            File file2 = new File(backupDirectoryFile, BACKUP_FILE_PREFIX + str + "_" + getBackupSuffix(i) + BACKUP_FILE_EXT);
            if (file2.exists()) {
                long jLastModified = file2.lastModified();
                if (jLastModified > j) {
                    file = file2;
                    j = jLastModified;
                }
            }
        }
        return file;
    }

    private static File getMainDirectoryFile() {
        File file = new File(new File(Environment.getExternalStorageDirectory() + File.separator + "Android" + File.separator + "media" + File.separator + ClassUtil.PACKAGE_NAME), CONFIG_DIRECTORY_NAME);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                file.mkdirs();
            }
        } else {
            file.mkdirs();
        }
        return file;
    }

    private static File getLogDirectoryFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "log");
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                file.mkdirs();
            }
        } else {
            file.mkdirs();
        }
        return file;
    }

    private static File getConfigDirectoryFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "config");
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                file.mkdirs();
            }
        } else {
            file.mkdirs();
        }
        return file;
    }

    public static File getUserConfigDirectoryFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE, str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                file.mkdirs();
            }
        } else {
            file.mkdirs();
        }
        return file;
    }

    public static File getDefaultConfigV2File() {
        return new File(MAIN_DIRECTORY_FILE, "config_v2.json");
    }

    public static boolean setDefaultConfigV2File(String str) {
        return write2File(str, new File(MAIN_DIRECTORY_FILE, "config_v2.json"));
    }

    public static File getConfigV2File(String str) {
        StringBuilder sb = new StringBuilder();
        File file = CONFIG_DIRECTORY_FILE;
        sb.append(file);
        sb.append("/");
        sb.append(str);
        File file2 = new File(sb.toString(), "config_v2.json");
        if (file2.exists()) {
            return file2;
        }
        File file3 = new File(file, "config_v2-" + str + BACKUP_FILE_EXT);
        if (!file3.exists()) {
            return file2;
        }
        if (!write2File(readFromFile(file3), file2)) {
            return file3;
        }
        file3.delete();
        return file2;
    }

    public static boolean setConfigV2File(String str, String str2) {
        return write2File(str2, new File(CONFIG_DIRECTORY_FILE + "/" + str, "config_v2.json"));
    }

    public static File getTokenConfigFile() {
        return new File(MAIN_DIRECTORY_FILE, "token_config.json");
    }

    public static boolean setTokenConfigFile(String str) {
        return write2File(str, new File(MAIN_DIRECTORY_FILE, "token_config.json"));
    }

    public static File getSelfIdFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "self.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getFriendIdMapFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "friend.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File runtimeInfoFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "runtimeInfo.json");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getCooperationIdMapFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "cooperation.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getVitalityBenefitIdMap(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "vitalityBenefit.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getGameCenterMallItemMap(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "gameCenterMallItem.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getFarmOrnamentsIdMapFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "farmOrnaments.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMemberBenefitIdMapFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "memberBenefit.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getPromiseSimpleTemplateIdMapFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "promiseSimpleTemplate.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getStatusFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "status.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getStatisticsFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "statistics.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (file.exists()) {
            Log.i(TAG, "[statistics]读:" + file.canRead() + ";写:" + file.canWrite());
        } else {
            Log.i(TAG, "statisticsFile.json文件不存在");
        }
        return file;
    }

    public static File getTreeIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "tree.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getReserveIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "reserve.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAnimalIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "animal.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMarathonIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "marathon.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getNewAncientTreeIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "newAncientTree.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getPlantSceneIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "PlantScene.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getrpcRequestMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "rpcRequest.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getBeachIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "beach.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getForestHuntIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "ForestHunt.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMemberCreditSesameTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "MemberCreditSesameTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntForestVitalityTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntForestVitalityTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntForestHuntTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntForestHuntTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntFarmDoFarmTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntFarmDoFarmTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntFarmDrawMachineTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntFarmDrawMachineTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntFarmChickenChefTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntFarmChickenChefTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntDodoTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntDodoTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntOceanAntiepTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntOceanAntiepTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntOceanFishBlackListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntOceanFishBlack.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntOrchardTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntOrchardTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntOrchardDrawTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntOrchardDrawTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getGoldenBeansTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "GoldenBeansTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMonopolyTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "MonopolyTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntStallTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntStallTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMiniGameTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "MiniGameTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMiniGameTaskTableFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "MiniGameTaskTable.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getMiniGameTaskIconMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "MiniGameTaskIcon.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntSportsTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntSportsTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getPathThemeMapListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "PathThemeMapList.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getAntMemberTaskListMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "AntMemberTask.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getWalkPathIdMapFile() {
        File file = new File(MAIN_DIRECTORY_FILE, "walkPath.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getExportedStatisticsFile() {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + CONFIG_DIRECTORY_NAME);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, "statistics.json");
        if (file2.exists() && file2.isDirectory()) {
            file2.delete();
        }
        return file2;
    }

    public static File getFriendWatchFile(String str) {
        File file = new File(CONFIG_DIRECTORY_FILE + "/" + str, "friendWatch.json");
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        return file;
    }

    public static File getWuaFile() {
        if (wuaFile == null) {
            wuaFile = new File(MAIN_DIRECTORY_FILE, "wua.list");
        }
        return wuaFile;
    }

    public static File exportFile(File file) {
        File file2 = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + CONFIG_DIRECTORY_NAME);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(file2, file.getName());
        if (file3.exists() && file3.isDirectory()) {
            file3.delete();
        }
        if (copyTo(file, file3)) {
            return file3;
        }
        return null;
    }

    public static File getCityCodeFile() {
        if (cityCodeFile == null) {
            File file = new File(MAIN_DIRECTORY_FILE, "cityCode.json");
            cityCodeFile = file;
            if (file.exists() && cityCodeFile.isDirectory()) {
                cityCodeFile.delete();
            }
        }
        return cityCodeFile;
    }

    public static File getRuntimeLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("runtime"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getRecordLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("record"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getSystemLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("system"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getDebugLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("debug"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getForestLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("forest"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getFarmLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("farm"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getOtherLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("other"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getInfoLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("info"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    public static File getErrorLogFile() {
        File file = new File(LOG_DIRECTORY_FILE, Log.getLogFileName("error"));
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
        return file;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void clearLog() {
        int iIntValue;
        long jCurrentTimeMillis;
        File[] fileArrListFiles = LOG_DIRECTORY_FILE.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        try {
            Integer value = BaseModel.backupLogDays.getValue();
            iIntValue = (value == null || value.intValue() <= 0) ? 0 : value.intValue();
        } catch (Throwable unused) {
        }
        SimpleDateFormat simpleDateFormat = Log.DATE_FORMAT_THREAD_LOCAL.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        }
        simpleDateFormat.setLenient(false);
        try {
            jCurrentTimeMillis = simpleDateFormat.parse(simpleDateFormat.format(new Date())).getTime();
        } catch (Throwable unused2) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        for (File file : fileArrListFiles) {
            Long logDateMillis = parseLogDateMillis(file.getName(), simpleDateFormat);
            if (logDateMillis != null) {
                long jRound = Math.round((jCurrentTimeMillis - logDateMillis.longValue()) / 8.64E7d);
                if (jRound == 0) {
                    if (file.length() >= 104857600) {
                        try {
                            file.delete();
                        } catch (Exception e) {
                            Log.printStackTrace(e);
                        }
                    }
                } else if (iIntValue <= 0 || jRound < 1 || jRound > iIntValue) {
                    file.delete();
                }
            } else {
                file.delete();
            }
        }
    }

    private static Long parseLogDateMillis(String str, SimpleDateFormat simpleDateFormat) {
        String strSubstring;
        int iLastIndexOf;
        if (!str.endsWith(".log") || (iLastIndexOf = (strSubstring = str.substring(0, str.length() - 4)).lastIndexOf(46)) <= 0) {
            return null;
        }
        String strSubstring2 = strSubstring.substring(iLastIndexOf + 1);
        if (!strSubstring2.isEmpty() && strSubstring2.matches("\\d+") && (iLastIndexOf = (strSubstring = strSubstring.substring(0, iLastIndexOf)).lastIndexOf(46)) <= 0) {
            return null;
        }
        String strSubstring3 = strSubstring.substring(iLastIndexOf + 1);
        if (strSubstring3.length() != 10) {
            return null;
        }
        try {
            Date date = simpleDateFormat.parse(strSubstring3);
            if (date != null && simpleDateFormat.format(date).equals(strSubstring3)) {
                return Long.valueOf(date.getTime());
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static String readFromFile(File file) {
        if (!file.exists()) {
            return "";
        }
        if (!file.canRead()) {
            Toast.show(file.getName() + "没有读取权限！", true);
            return "";
        }
        StringBuilder sb = new StringBuilder();
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader(file);
            try {
                char[] cArr = new char[1024];
                while (true) {
                    int i = fileReader2.read(cArr);
                    if (i < 0) {
                        break;
                    }
                    sb.append(cArr, 0, i);
                }
                close(fileReader2);
            } catch (Throwable th) {
                th = th;
                fileReader = fileReader2;
                try {
                    Log.printStackTrace(TAG, th);
                } finally {
                    close(fileReader);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return sb.toString();
    }

    public static boolean write2File(String str, File file) {
        FileWriter fileWriter;
        boolean z = true;
        if (file.exists()) {
            if (!file.canWrite()) {
                Toast.show(file.getAbsoluteFile() + "没有写入权限！", true);
                return false;
            }
            if (file.isDirectory()) {
                file.delete();
                file.getParentFile().mkdirs();
            }
        } else {
            file.getParentFile().mkdirs();
        }
        File file2 = new File(file.getParentFile(), file.getName() + "." + Thread.currentThread().getId() + "." + System.nanoTime() + ".tmp");
        FileWriter fileWriter2 = null;
        try {
            fileWriter = new FileWriter(file2);
            try {
                fileWriter.write(str);
                fileWriter.flush();
            } catch (Throwable th) {
                th = th;
                fileWriter2 = fileWriter;
                Log.printStackTrace(TAG, th);
                fileWriter = fileWriter2;
                z = false;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        close(fileWriter);
        if (z) {
            boolean zRenameTo = file2.renameTo(file);
            if (!zRenameTo && ((file.exists() && file.delete()) || !file.exists())) {
                zRenameTo = file2.renameTo(file);
            }
            z = zRenameTo;
            if (!z) {
                Log.error(TAG + "#原子写入rename失败: " + file.getPath());
                file2.delete();
            }
        } else {
            file2.delete();
        }
        return z;
    }

    public static boolean append2File(String str, File file) {
        FileWriter fileWriter;
        boolean z = false;
        if (file.exists() && !file.canWrite()) {
            Toast.show(file.getAbsoluteFile() + "没有写入权限！", true);
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            fileWriter = new FileWriter(file, true);
            try {
                fileWriter.append((CharSequence) str);
                fileWriter.flush();
                z = true;
            } catch (Throwable th) {
                th = th;
                fileWriter2 = fileWriter;
                Log.printStackTrace(TAG, th);
                fileWriter = fileWriter2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        close(fileWriter);
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[SYNTHETIC] */
    public static boolean copyTo(File file, File file2) throws Throwable {
        FileChannel fileChannel;
        FileChannel channel = null;
        try {
            FileChannel channel2 = new FileInputStream(file).getChannel();
            try {
                channel = new FileOutputStream(createFile(file2)).getChannel();
                channel.transferFrom(channel2, 0L, channel2.size());
                if (channel2 != null) {
                    try {
                        channel2.close();
                    } catch (IOException e) {
                        Log.printStackTrace(e);
                    }
                }
                if (channel == null) {
                    return true;
                }
                try {
                    channel.close();
                    return true;
                } catch (IOException e2) {
                    Log.printStackTrace(e2);
                    return true;
                }
            } catch (IOException e3) {
                e = e3;
                FileChannel fileChannel2 = channel;
                channel = channel2;
                fileChannel = fileChannel2;
                try {
                    Log.printStackTrace(e);
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e4) {
                            Log.printStackTrace(e4);
                        }
                    }
                    if (fileChannel == null) {
                        return false;
                    }
                    try {
                        fileChannel.close();
                        return false;
                    } catch (IOException e5) {
                        Log.printStackTrace(e5);
                        return false;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e6) {
                            Log.printStackTrace(e6);
                        }
                    }
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                            throw th;
                        } catch (IOException e7) {
                            Log.printStackTrace(e7);
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                FileChannel fileChannel3 = channel;
                channel = channel2;
                fileChannel = fileChannel3;
                if (channel != null) {
                    channel.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                    throw th;
                }
                throw th;
            }
        } catch (IOException e8) {
            e = e8;
            fileChannel = null;
        } catch (Throwable th3) {
            th = th3;
            fileChannel = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0045 A[EXC_TOP_SPLITTER, FINALLY_INSNS, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x004f A[EXC_TOP_SPLITTER, FINALLY_INSNS, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[SYNTHETIC] */
    public static boolean streamTo(InputStream inputStream, OutputStream outputStream) {
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    break;
                }
                outputStream.write(bArr, 0, i);
                outputStream.flush();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        Log.printStackTrace(e);
                    }
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e2) {
                        Log.printStackTrace(e2);
                    }
                }
            }
            if (outputStream == null) {
                return true;
            }
            try {
                return true;
            } catch (IOException e3) {
                return true;
            }
        } catch (IOException e4) {
            Log.printStackTrace(e4);
            return false;
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                Log.printStackTrace(TAG, th);
            }
        }
    }

    public static File createFile(File file) {
        if (file.exists() && file.isDirectory() && !file.delete()) {
            return null;
        }
        if (!file.exists()) {
            try {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                if (!file.createNewFile()) {
                    return null;
                }
            } catch (Exception e) {
                Log.printStackTrace(e);
                return null;
            }
        }
        return file;
    }

    public static File createDirectory(File file) {
        if (file.exists() && file.isFile() && !file.delete()) {
            return null;
        }
        if (!file.exists()) {
            try {
                if (!file.mkdirs()) {
                    return null;
                }
            } catch (Exception e) {
                Log.printStackTrace(e);
                return null;
            }
        }
        return file;
    }

    public static Boolean clearFile(File file) throws Throwable {
        if (file.exists()) {
            FileWriter fileWriter = null;
            try {
                try {
                    FileWriter fileWriter2 = new FileWriter(file);
                    try {
                        fileWriter2.write("");
                        fileWriter2.flush();
                        try {
                            fileWriter2.close();
                        } catch (IOException e) {
                            Log.printStackTrace(e);
                        }
                        return true;
                    } catch (IOException e2) {
                        e = e2;
                        fileWriter = fileWriter2;
                        Log.printStackTrace(e);
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (IOException e3) {
                                Log.printStackTrace(e3);
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileWriter = fileWriter2;
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (IOException e4) {
                                Log.printStackTrace(e4);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return false;
    }

    public static Boolean deleteFile(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isFile()) {
            return Boolean.valueOf(file.delete());
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return Boolean.valueOf(file.delete());
        }
        for (File file2 : fileArrListFiles) {
            deleteFile(file2);
        }
        return Boolean.valueOf(file.delete());
    }
}
