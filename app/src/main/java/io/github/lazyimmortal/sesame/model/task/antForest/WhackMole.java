package io.github.lazyimmortal.sesame.model.task.antForest;

import io.github.lazyimmortal.sesame.util.Log;
import io.github.lazyimmortal.sesame.util.MessageUtil;
import io.github.lazyimmortal.sesame.util.Status;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class WhackMole {
    private static final String EXEC_FLAG = "forest::whackMole::executed";
    private static final long GAME_DURATION_MS = 12000;
    private static final String SOURCE = "senlinguangchangdadishu";
    private static final String TAG = "WhackMole";
    private static volatile int moleCount = 15;
    private static volatile int totalGames = 5;
    private static final ExecutorService EXECUTOR = new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors() * 2, Runtime.getRuntime().availableProcessors() * 2, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: io.github.lazyimmortal.sesame.model.task.antForest.WhackMole$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return WhackMole.lambda$static$0(runnable);
        }
    });
    private static final AtomicLong startTime = new AtomicLong(0);
    private static volatile boolean isRunning = false;

    public enum Mode {
        COMPATIBLE,
        AGGRESSIVE
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        return new Thread(runnable, "WhackMole-Worker");
    }

    public static class GameSession {
        private final int roundNumber;
        private final String token;

        public GameSession(String str, int i) {
            this.token = str;
            this.roundNumber = i;
        }

        public String getToken() {
            return this.token;
        }

        public int getRoundNumber() {
            return this.roundNumber;
        }
    }

    public static Boolean closeWhackMole() {
        try {
            return MessageUtil.checkSuccess(TAG, new JSONObject(AntForestRpcCall.closeWhackMole()));
        } catch (Throwable th) {
            Log.printStackTrace(th);
            return false;
        }
    }

    private static class GameIntervalCalculator {
        private GameIntervalCalculator() {
        }

        public static long calculateDynamicInterval(long j, int i) {
            return j / ((long) (i * 2));
        }

        public static long calculateNextDelay(long j, int i, int i2, long j2) {
            return Math.max(100L, Math.min(j * ((long) ((i % 2) + 1)), j2 / ((long) ((i2 - i) + 1))));
        }
    }

    public static void setTotalGames(int i) {
        totalGames = i;
    }

    public static void setMoleCount(int i) {
        moleCount = i;
    }

    public static void start(final Mode mode) {
        EXECUTOR.submit(new Runnable() { // from class: io.github.lazyimmortal.sesame.model.task.antForest.WhackMole$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WhackMole.startSuspend(mode);
            }
        });
    }

    public static void startSuspend(Mode mode) {
        if (isRunning) {
            Log.record("正在运行⏭️打地鼠游戏中，跳过重复启动");
            return;
        }
        isRunning = true;
        try {
            try {
                int i = AnonymousClass1.$SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode[mode.ordinal()];
                if (i == 1) {
                    runCompatibleMode();
                } else if (i == 2) {
                    runAggressiveMode();
                }
                Status.flagToday(EXEC_FLAG);
            } catch (Exception e) {
                Log.printStackTrace("打地鼠异常:", e);
            }
        } finally {
            isRunning = false;
            Log.record("运行状态🎮打地鼠已重置");
        }
    }

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.model.task.antForest.WhackMole$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode = iArr;
            try {
                iArr[Mode.COMPATIBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$github$lazyimmortal$sesame$model$task$antForest$WhackMole$Mode[Mode.AGGRESSIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static void runCompatibleMode() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.oldstartWhackMole(SOURCE));
            if (!jSONObject.optBoolean("success")) {
                Log.record(jSONObject.optString("resultDesc", "开始失败"));
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("moleInfo");
            String strOptString = jSONObject.optString("token");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0 && !strOptString.isEmpty()) {
                ArrayList<Long> arrayList = new ArrayList();
                ArrayList<Long> arrayList2 = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    long j = jSONObject2.getLong("id");
                    arrayList.add(Long.valueOf(j));
                    if (jSONObject2.has("bubbleId")) {
                        arrayList2.add(Long.valueOf(j));
                    }
                }
                Random random = new Random();
                int i2 = 0;
                for (Long l : arrayList2) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(AntForestRpcCall.oldwhackMole(l.longValue(), strOptString, SOURCE));
                        if (jSONObject3.optBoolean("success")) {
                            i2++;
                            Log.forest("森林能量⚡️[兼容打地鼠:" + l + "+" + jSONObject3.optInt("energyAmount", 0) + "g]");
                            if (i2 < arrayList2.size()) {
                                Thread.sleep(random.nextInt(201) + 100);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Long l2 : arrayList) {
                    if (!arrayList2.contains(l2)) {
                        arrayList3.add(String.valueOf(l2));
                        if (arrayList3.size() >= moleCount) {
                            break;
                        }
                    }
                }
                long jMax = Math.max(0L, 5800 - (System.currentTimeMillis() - jCurrentTimeMillis));
                if (jMax > 0) {
                    Thread.sleep(jMax);
                }
                JSONObject jSONObject4 = new JSONObject(AntForestRpcCall.oldsettlementWhackMole(strOptString, arrayList3, SOURCE));
                if (MessageUtil.checkSuccess(TAG, jSONObject4).booleanValue()) {
                    Log.forest("森林能量⚡️[兼容模式完成(打" + (arrayList3.size() + i2) + "个)总能量+" + jSONObject4.optInt("totalEnergy", 0) + "g]");
                }
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("兼容模式出错:");
            sb.append(th.getMessage() != null ? th.getMessage() : "未知错误");
            Log.record(sb.toString());
        }
    }

    private static void runAggressiveMode() {
        startTime.set(System.currentTimeMillis());
        long jCalculateDynamicInterval = GameIntervalCalculator.calculateDynamicInterval(GAME_DURATION_MS, totalGames);
        ArrayList<GameSession> arrayList = new ArrayList();
        for (int i = 1; i <= totalGames; i++) {
            try {
                GameSession gameSessionStartSingleRound = startSingleRound(i);
                if (gameSessionStartSingleRound != null) {
                    arrayList.add(gameSessionStartSingleRound);
                }
                if (i < totalGames) {
                    Thread.sleep(GameIntervalCalculator.calculateNextDelay(jCalculateDynamicInterval, i, totalGames, GAME_DURATION_MS - (System.currentTimeMillis() - startTime.get())));
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            } catch (Exception e) {
                Log.printStackTrace("激进模式启动轮次异常:", e);
            }
        }
        long jMax = Math.max(0L, GAME_DURATION_MS - (System.currentTimeMillis() - startTime.get()));
        if (jMax > 0) {
            try {
                Thread.sleep(jMax);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        int i2 = 0;
        for (GameSession gameSession : arrayList) {
            try {
                Thread.sleep(200L);
                i2 += settleStandardRound(gameSession);
            } catch (InterruptedException unused3) {
                Thread.currentThread().interrupt();
            } catch (Exception e2) {
                Log.printStackTrace("结算第" + gameSession.getRoundNumber() + "局异常:", e2);
            }
        }
        Log.forest("森林能量⚡️[激进模式" + arrayList.size() + "局#总计" + i2 + "g]");
    }

    private static GameSession startSingleRound(int i) {
        try {
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.startWhackMole());
            if (!MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return null;
            }
            if (!jSONObject.optBoolean("canPlayToday", true)) {
                Status.flagToday(EXEC_FLAG);
                throw new InterruptedException("今日打地鼠次数已达上限");
            }
            return new GameSession(jSONObject.optString("token"), i);
        } catch (Exception e) {
            Log.printStackTrace("启动第" + i + "局异常:", e);
            return null;
        }
    }

    private static int settleStandardRound(GameSession gameSession) {
        try {
            JSONObject jSONObject = new JSONObject(AntForestRpcCall.settlementWhackMole(gameSession.getToken()));
            if (MessageUtil.checkSuccess(TAG, jSONObject).booleanValue()) {
                return jSONObject.optInt("totalEnergy", 0);
            }
        } catch (Exception e) {
            Log.printStackTrace("结算第" + gameSession.getRoundNumber() + "局失败:", e);
        }
        return 0;
    }

    public static void shutdown() {
        ExecutorService executorService = EXECUTOR;
        executorService.shutdown();
        try {
            if (executorService.awaitTermination(5L, TimeUnit.SECONDS)) {
                return;
            }
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            EXECUTOR.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }
}
