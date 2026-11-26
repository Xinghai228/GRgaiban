.class public final Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;
.super Ljava/lang/Object;
.source "MiniGameTaskTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;,
        Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;
    }
.end annotation


# static fields
.field private static final ROWS:[Ljava/lang/String;

.field private static final TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 132

    .line 58
    const-string v130, "2021005120637256|\u6e90\u661f\u6218\u57df|0.2.2607101555.51|yyxxgame|yxzy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,yxzy_game_mission_every_1^1^\u4efb\u52a1/\u6311\u6218,yxzy_game_boss_every_1^1^BOSS/\u9996\u9886|apiKey=8f882d04f3d064c06ef40d76b77143a1;oid=zfb;gcid=Y011020301;reportHost=yxdasapi.yxzygame.com"

    const-string v131, "2021004184670590|\u519c\u573a\u706b\u67f4\u4eba|0.2.2504281703.57|zuiqiangyingyu|nchcr_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v1, "2021000100675812|\u6307\u5c16\u5e7b\u5f71|0.2.2607102236.59||zjhy_game_boci_every_3^3^|"

    const-string v2, "2021004135635323|\u897f\u6e38\u9664\u5996|0.2.2607020611.9||xycy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,xycy_game_hulu_every_5^5^\u846b\u82a6|sdkVersion=1.9.7;gameVersion=1.0"

    const-string v3, "2021004138691383|\u7f8a\u4e86\u4e2a\u7f8a\u519c\u573a\u7248|0.2.2607162135.58|||"

    const-string v4, "2021004189686520|\u5b88\u62a4\u4e16\u754c|||shsj_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76,shsj_game_renwu_every_1^1^\u4efb\u52a1|channelId=hy1;sdkVersion=1.0.7"

    const-string v5, "2021005161697013|\u5168\u5883\u5b88\u536b|0.2.2608171810.43||qjsw_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,qjsw_game_jianzhu_every_1^1^\u5efa\u9020/\u5efa\u7b51,qjsw_game_puzhaohuan_every_1^1^\u53ec\u5524,qjsw_game_baoxiang_every_1^1^\u5b9d\u7bb1|gameVersion=1.0.73.0"

    const-string v6, "2021005183651471|\u6d88\u6d88\u74dc\u679c\u56ed||||"

    const-string v7, "2021006101635241|\u65e0\u5c3d\u63a2\u9669\u961f|0.2.2607161416.35||wjtxd_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v8, "2021006152653505|\u57ce\u4e3b\u522b\u614c|0.2.2610010110.0||czbhz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,czbhz_game_jineng_every_1^1^\u6280\u80fd|"

    const-string v9, "2060170000358842|\u6d2a\u8352\u4ed9\u97f5|0.2.2605141416.45||hhxy_game_guimenguan_every_1^1^\u9b3c\u95e8\u5173,hhxy_game_shiwang_every_5^5^\u9b54\u738b,hhxy_game_jingjichang_every_1^1^\u7ade\u6280\u573a,hhxy_game_fuben_every_1^1^\u526f\u672c|"

    const-string v10, "2060170000400026|\u6293\u5927\u9e45|0.2.2610231342.51||zde_game_xiaochu_every_15^15^\u6d88\u9664/\u6d88\u6d88|"

    const-string v11, "2060170000363633|\u73a9\u4e0d\u8fc7\u6211\u5440|0.2.2605270925.9|aaIgame58|wbgwy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v12, "2060170000365575|\u70b9\u70b9\u6d88\u4e0d\u505c|0.2.2604161533.29|aaIgame58|ddxbt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v13, "2021000110660562|\u635e\u4e2a\u83dc|0.2.2606221937.35|aslk2018|lgc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_lgc"

    const-string v14, "2021000111632448|\u627e\u4e0d\u505c|0.2.2606181421.5|aslk2018|zbt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_zbt;v=1.0.0"

    const-string v15, "2021004126650405|\u8d85\u7ea7\u89e3\u538b\u9986|0.2.2507301514.41|aslk2018|cjjyg_game_hecheng_every_5^5^\u5408\u6210/\u5408\u5e76|gid=zfb_cjjyg"

    const-string v16, "2021004128666655|\u73a9\u6897\u9ad8\u624b|0.2.2603171940.31|aslk2018|wggs_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_wggs;v=1.0.4"

    const-string v17, "2021004131628794|\u6c34\u6ef4\u6392\u6392\u5e8f|0.2.2512171908.31|aslk2018|sdppx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_sdppxx"

    const-string v18, "2021004135688960|\u706b\u9505\u6d88\u4e0d\u505c|0.2.2407091636.11|aslk2018|hgxbt_game_xiaochu_every_5^5^\u6d88\u9664/\u6d88\u6d88|gid=zfb_hgxbt"

    const-string v19, "2021004138632167|\u519c\u573a\u89e3\u538b\u9986|0.2.2511281734.55|aslk2018|ncjyg_game_hecheng_every_5^5^\u5408\u6210/\u5408\u5e76|gid=zfb_ncjyg"

    const-string v20, "2021004149679303|\u5bf9\u5bf9\u78b0\u4e50\u56ed|1.0.14|aslk2018|ddply_game_xiaochu_every_5^5^\u6d88\u9664/\u6d88\u6d88|gid=zfb_ddply"

    const-string v21, "2021004150621264|\u87ba\u4e1d\u5e84\u56ed|0.2.2512051527.46|aslk2018|lszy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_lszy"

    const-string v22, "2021004153698112|\u519c\u573a\u89e3\u87ba\u4e1d|0.2.2601231520.27|aslk2018|ncjls_game_xiaochu_every_5^5^\u6d88\u9664/\u6d88\u6d88|gid=zfb_ncjls"

    const-string v23, "2021004158640815|\u4f1a\u5458\u8fde\u4e0d\u505c|0.2.2509281117.51|aslk2018|qsgj_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_hylbt"

    const-string v24, "2021004159604141|\u73a9\u4e2a\u513f\u6bdb\u7ebf|0.2.2512081218.33|aslk2018|wgemx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_wgemx"

    const-string v25, "2021004164603638|\u62ff\u4e0b100\u5173|0.2.2606112022.39|aslk2018|nxybg_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,nxybg_game_yingzhang_every_1^1^\u5370\u7ae0|gid=zfb_nx100g;v=1.0.0"

    const-string v26, "2021004164632103|\u79bb\u8c31\u7684\u6c49\u5b57|0.2.2507181129.29|aslk2018|lpdhz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,lpdhz_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|gid=zfb_lpdhz1"

    const-string v27, "2021004170628696|\u519c\u573a\u6587\u5b57\u79c0|0.2.2601192247.15|aslk2018|ncwzx_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|gid=zfb_ncwzx"

    const-string v28, "2021004172624044|\u519c\u573a\u5927\u806a\u660e|0.2.2602101831.24|aslk2018|ncdcm_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_ncdcm"

    const-string v29, "2021004194616336|\u4f1a\u5458\u7231\u52a8\u8111|0.2.2506261635.47|aslk2018|hyadn_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_hyadn"

    const-string v30, "2021005112605978|\u68ee\u6797\u840c\u840c\u6d88|0.2.2601281827.8|aslk2018|slmmx_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|gid=zfb_slmmxx"

    const-string v31, "2021005112647931|\u8bd7\u610f\u7eff\u6d32|0.2.2606091857.22|aslk2018|sylz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,sylz_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|gid=zfb_sylz"

    const-string v32, "2021005113622761|\u68ee\u6797\u89e3\u538b\u9986|0.2.2509301530.27|aslk2018|sljyg_game_hecheng_every_1^1^\u5408\u6210/\u5408\u5e76|gid=zfb_sljyg"

    const-string v33, "2021005113684028|\u68ee\u6797\u6551\u63f4\u961f|1.0.1|aslk2018|sljyd_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|gid=zfb_sljydx"

    const-string v34, "2021005172696439|\u627e\u4e2a\u55b5|0.2.2601131551.50|aslk2018|zgm_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_zgm"

    const-string v35, "2021006113622705|\u632a\u4e86\u4e2a\u7bad|0.2.2605252023.30|aslk2018|nlgj_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,nlgj_game_jiantou_every_50^50^\u7bad\u5934|gid=zfb_nlgj;v=1.0.5"

    const-string v36, "2021006117687842|\u73a9\u6c34\u5927\u4f5c\u6218|0.2.2602241832.15|aslk2018|wsdzz_game_hecheng_every_20^20^\u5408\u6210/\u5408\u5e76|gid=zfb_wsdzz"

    const-string v37, "2021006148677438|\u6b22\u4e50\u62fc\u62fc\u8c46|0.2.2607211740.19|aslk2018|klppd_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_klppd;v=1.2.0"

    const-string v38, "2021006152654592|\u4e00\u627e\u4e00\u4e2a\u51c6|0.2.2609141439.46|aslk2018|yzygz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_yzygz;v=1.0.1"

    const-string v39, "2060170000354005|\u6bdb\u7ebf\u6d88\u4e0d\u505c|0.2.2601091752.55|aslk2018|mxxbt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_mxxbt"

    const-string v40, "2060170000355266|\u519c\u573a\u62c6\u6bdb\u7ebf|0.2.2602101754.41|aslk2018|nccmx_game_xiaochu_every_20^20^\u6d88\u9664/\u6d88\u6d88|gid=zfb_nccmx"

    const-string v41, "2060170000356601|\u519c\u573a\u4e0a\u8f66\u8f66|1.0.2|aslk2018|ncscc_game_kaiche_every_10^10^\u5f00\u8f66/\u8f66\u8f86/\u8f86\u8f66|gid=zfb_ncscc"

    const-string v42, "2060170000363691|\u68ee\u6797\u5c0f\u8f66\u8f66|1.0.1|aslk2018|slxcc_game_kaiche_every_10^10^\u5f00\u8f66/\u8f66\u8f86/\u8f86\u8f66|gid=zfb_slxcc"

    const-string v43, "2060170000366384|\u6bdb\u7ebf\u89e3\u538b\u9986|0.2.2601091624.55|aslk2018|ylzt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_mxjyg"

    const-string v44, "2060170000373873|\u5c0f\u9e21\u62c6\u6bdb\u7ebf|0.2.2601091612.54|aslk2018|xjcmx_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|gid=zfb_xjcmx"

    const-string v45, "2060170000376051|\u89e3\u538b\u653e\u677e\u5668|0.2.2601222010.25|aslk2018|jyfsq_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|gid=zfb_jyfsq"

    const-string v46, "2021004115691527|\u519c\u573a\u840c\u5c0f\u9662|0.2.2607301618.6|beautifulgarden|ncmxy_game_dingdan_every_1^1^\u8ba2\u5355,ncmxy_game_synthetise_num_10^1^\u5408\u6210/\u5408\u5e76|"

    const-string v47, "2021004157672803|\u8eba\u5e73\u690d\u7269\u6218\u50f5\u5c38|0.2.2512251750.58|cdwaterbear|tpzwjs_game_shengji_every_1^1^\u5347\u7ea7/\u5347\u5230|"

    const-string v48, "2021004159660680|\u8d85\u51e1\u6253\u87ba\u4e1d|0.2.2603150002.25|cdwaterbear|cfdls_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v49, "2021004182639175|\u6210\u8bed\u72b6\u5143|0.2.2512051703.23|cdwaterbear|cyzzy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v50, "2060170000357462|\u5168\u6c11\u6253\u87ba\u4e1d|0.2.2602060943.11|cpchxapi|qmdls_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v51, "2060170000357475|\u75af\u72c2\u6765\u89e3\u538b|0.2.2604020945.51|cpchxapi|fkljy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v52, "2060170000363288|\u68ee\u6797\u89e3\u538b\u738b|0.2.2602060952.45|cpchxapi|sljyw_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|"

    const-string v53, "2060170000363314|\u87ba\u4e1d\u6d88\u4e0d\u505c|0.2.2602060945.10|cpchxapi|lsxbt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v54, "2021003184609526|\u6ce1\u6ce1\u9f99\u738b\u56fd|0.2.2507071728.25|d3games|pplwg_game_pass_level_every_1^1^\u95ef\u5173/\u901a\u5173/\u901a\u8fc7\u5173\u5361,pplwg_game_daoju_every_1^1^\u9053\u5177|appKey=86b5b3815ddfa448eec459718d4c2aa3"

    const-string v55, "2021004130619550|\u519c\u573a\u6ce1\u6ce1\u9f99|0.2.2512101746.15|d3games|farmppl_game_pass_1_misson^1^\u901a\u5173/\u901a\u8fc7|appKey=4a9c9ae228d57007eb3af2808142e242"

    const-string v56, "2021004138641359|\u5c0f\u9e21\u5411\u524d\u51b2|0.2.2602041526.56|d3games|xjxqc_game_piaoyi_every_1^1^\u6f02\u79fb|appKey=ca08c5ba0b86372f1028375f91ecdbf6"

    const-string v57, "2021004148696219|\u519c\u573a\u632a\u5bf9\u5bf9|0.2.2607201557.47|d3games|ncndd_game_pipei_every_10^10^\u914d\u5bf9/\u5339\u914d|appKey=05b83455558bcd98f7beab079498df27"

    const-string v58, "2021004157647236|\u6ce1\u6ce1\u9f99\u5927\u6311\u6218|0.2.2409041752.27|d3games|ppldtz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|appKey=e6a0631f86467b7a4a880574bbb78d7f"

    const-string v59, "2021004184696771|\u68ee\u6797\u73af\u6e38\u8bb0|0.2.2607071824.23|d3games|slhyjiap_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76,slhyjiap_game_tili_every_10^10^\u4f53\u529b,slhyjiap_game_dingdan_every_1^1^\u8ba2\u5355,slhyjiap_game_jianzao_every_1^1^\u5efa\u9020/\u5efa\u7b51|appKey=465d2fe840abb7bfdc2d69cf1f39be28;gameId=10182;reportHost=api-slhyj.d3games.com"

    const-string v60, "2021005109675436|\u7f8e\u98df\u5947\u9047\u8bb0|0.2.2607092006.11|d3games|iapmsqyj_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76,iapmsqyj_game_tili_every_10^10^\u4f53\u529b,iapmsqyj_game_dingdan_every_1^1^\u8ba2\u5355,iapmsqyj_game_jianzao_every_1^1^\u5efa\u9020/\u5efa\u7b51|appKey=192398bf853974a546a8e6c522d04b8a;gameId=10161;reportHost=msqyj.d3games.com"

    const-string v61, "2021005187627410|\u5012\u6c34\u676f|0.2.2603161110.56|devourad|dsb_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|appKey=740f34d825e4ba3bc80b856fb6a99b8b"

    const-string v62, "2021006105651938|\u667a\u5546\u4e50\u6d88\u6d88|0.2.2606241540.10|devourad|zslxx_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88,zslxx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|appKey=87e3d612cefbe59822d5c6cbde82a74f"

    const-string v63, "2021004138613197|\u519c\u573a\u5bf9\u5bf9\u78b0|0.2.2601041522.28|dianli100|ncddp_game_match_every_5^5^\u5bf9\u5c40/\u5bf9\u6218/\u6bd4\u8d5b|"

    const-string v64, "2021004170626565|\u6d88\u8d39\u91d1\u5bf9\u5bf9\u78b0|0.2.2504291637.15|dianli100|xfjddp_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,xfjddp_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|"

    const-string v65, "2021005111689183|\u4f1a\u5458\u6b22\u4e50\u6d88|0.2.2601041522.28|dianli100|ttddp_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v66, "2021005132609824|\u6c49\u5b57\u6d88\u6d88\u5927\u5e08|0.2.2512261652.33|dianwanshidai|hzxxds_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,hzxxds_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|bgid=6501"

    const-string v67, "2021005132680209|\u8fd9\u5173\u6211\u5f88\u884c|0.2.2602130949.23|dianwanshidai|zgwhx_game_level_every_1^1^\u5173\u5361/\u901a\u5173/\u901a\u8fc7|bgid=6560"

    const-string v68, "2021005187620542|\u6210\u8bed\u5c0f\u798f\u661f|0.2.2512301639.48|dianwanshidai|cyxfx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,cyxfx_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|bgid=6617"

    const-string v69, "2021006101606146|\u5206\u79bb\u5427\u5c0f\u9e21|0.2.2601041709.52|dianwanshidai|flbxj_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6661"

    const-string v70, "2021006109602033|\u5957\u4f4f\u90a3\u53ea\u7f8a|0.2.2606301404.35|dianwanshidai|tznzy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,tznzy_game_daoju_every_1^1^\u9053\u5177|bgid=6680"

    const-string v71, "2021006119624486|\u519c\u573a\u5206\u8272\u74f6|0.2.2602271145.38|dianwanshidai|ncfsp_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6705"

    const-string v72, "2021006131625225|\u73a9\u4e2a\u5012\u6c34|0.2.2606181714.32|dianwanshidai|wgds_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6798"

    const-string v73, "2021006151633350|\u8c01\u6765\u6551\u6551\u9e45|0.2.2607151542.41|dianwanshidai|sljje_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6914"

    const-string v74, "2060170000378094|\u4f60\u662f\u771f\u5389\u5bb3|0.2.2602031151.46|dianwanshidai|nszlh_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,nszlh_game_xiaochu_every_20^20^\u6d88\u9664/\u6d88\u6d88,nszlh_game_daoju_every_1^1^\u9053\u5177|bgid=6624"

    const-string v75, "2060170000385587|\u519c\u573a\u7ec7\u7ec7\u4e50|0.2.2602261702.58|dianwanshidai|nczzl_game_xiaochu_every_20^20^\u6d88\u9664/\u6d88\u6d88|bgid=6704"

    const-string v76, "2060170000399014|\u632a\u4e86\u4e0b\u8f66|0.2.2608251627.21|dianwanshidai|nlxc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6969"

    const-string v77, "2060170000399540|\u773c\u529b\u62fc\u56fe|0.2.2609161736.19|dianwanshidai|ylpt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|bgid=6968"

    const-string v78, "2060170000393854|\u6597\u7834\u82cd\u7a79|0.2.2607061716.45|flourish|dpcq_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,dpcq_game_shop_every_1^1^\u5546\u94fa,dpcq_game_douji_every_1^1^\u7ade\u6280\u573a,dpcq_game_take_every_1^1^\u6e38\u5386,dpcq_game_zhaomu_every_1^1^\u62db\u52df,dpcq_game_huoyue_every_5^5^\u6d3b\u8dc3,dpcq_game_shengji_every_1^1^\u5347\u7ea7|appKey=a307ac9468c154a3db020597397b12be"

    const-string v79, "2021004148695291|\u6253\u87ba\u4e1d\u5927\u5e08|0.2.2511181728.34|flysheeep|dlsds_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v80, "2060170000375112|\u732a\u4e86\u4e2a\u732a|0.2.2511181728.34|flysheeep|zlgz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v81, "2060170000377298|\u6307\u5c16\u738b\u56fd|0.2.2609031704.54|h5i13yx|3^1^,2^1^|appKey=10002"

    const-string v82, "2021005139650112|\u6253\u4e2a\u87ba\u4e1d|0.2.2602281817.3|haligame|dgls_game_level_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,dgls_game_daoju_every_1^1^\u9053\u5177,dgls_game_xiaochu_every_5^5^\u6d88\u9664/\u6d88\u6d88|"

    const-string v83, "2021004163668677|\u6211\u7684\u82b1\u56ed\u4e16\u754c|0.2.2607091304.58|hnycgames|wdhysj_game_dingdan_every_2^2^\u8ba2\u5355/\u5c45\u6c11\u8ba2\u5355,wdhysj_game_zhuxian_every_1^1^\u4e3b\u7ebf,wdhysj_game_gukedan_every_5^5^\u987e\u5ba2\u8ba2\u5355/\u987e\u5ba2\u5355,wdhysj_game_richang_every_1^1^\u65e5\u5e38|"

    const-string v84, "2021004134649102|\u8d27\u67dc\u6d88\u6d88\u6d88|0.2.2509031342.19|igame58|hgxxx_game_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v85, "2021004145605636|\u8d27\u67dc\u8da3\u6d88\u6d88|0.2.2510211823.14|igame58|hgqxx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v86, "2021004148696299|\u95ef\u5173\u632a\u632a\u8f66|0.2.2510311929.40|igame58|cgnnc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v87, "2021004199670767|\u5c0f\u9e21\u8d27\u67dc\u6d88\u9664|0.2.2512171756.18|igame58|xjhgxc_game_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v88, "2021004199674631|\u5c0f\u9e21\u632a\u8f66|0.2.2512171758.11|igame58|xjnc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v89, "2021005161639016|\u4f1a\u5458\u632a\u5c0f\u7f8a|0.2.2507211449.1|igame58|hynxy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v90, "2021005181698249|\u6d88\u6d88\u6765\u89e3\u538b|0.2.2606041504.28|igame58|xxljy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v91, "2021005176645204|\u89e3\u538b\u4fc4\u7f57\u65af\u65b9\u5757|0.2.2607241635.14|jingyou|jyelsfk_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|appKey=ofHCFJVjdl7Wr169G5uSOmXjKaMEIniT"

    const-string v92, "2021005197696986|\u5c0f\u9e21\u65b9\u5757\u62fc\u56fe|0.2.2603171953.39|jingyou|xjfkpt_game_jingdian_every_500^500^\u7ecf\u5178,xjfkpt_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|appKey=ofHCFJVjdl7Wr169G5uSOmXjKaMEIniT"

    const-string v93, "2060170000358569|\u4f1a\u5458\u7231\u89e3\u538b|0.2.2509081602.46|landintheair|hyajy_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v94, "2060170000366791|\u75af\u72c2\u7231\u6d88\u9664|0.2.2512011739.5|landintheair|fkaxc_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|"

    const-string v95, "2060170000373301|\u5f13\u7bad\u624b\u5bf9\u51b3|0.2.2509301438.22|lumosfun|gjsdj_game_win_every_1^1^\u80dc\u5229/\u83b7\u80dc/\u6311\u6218|loginHost=azory.lumosfun.com:8525;reportHost=gjdz-zfb-def.gusspro.com:15087"

    const-string v96, "2021004138694188|\u8425\u6551\u5c0f\u9e21|0.2.2606051701.41|manyoukeji2024|yjxj_game_dingzi_every_10^10^\u9489\u5b50/\u9053\u5177|"

    const-string v97, "2021005190608132|\u5bc6\u5ba4\u51fa\u9003|0.2.2511141651.44|maoyumeng|msct_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v98, "2060170000365923|\u6d6a\u6f2b\u9910\u5385|0.2.2601281402.55|microfun|lmct_game_order_every_1^1^\u8ba2\u5355,lmct_game_merge_every_5^5^\u5408\u6210/\u5408\u5e76|path=61b45d"

    const-string v99, "2021004122659378|\u731b\u9b3c\u5bbf\u820d|0.2.2602281119.3|mihuangame|mgss_game_shengji_every_1^1^\u5347\u7ea7/\u5347\u5230|"

    const-string v100, "2021004123689742|\u8eba\u5e73\u53d1\u80b2|0.2.2602281055.3|mihuangame|tpfy_game_shengji_every_1^1^\u5347\u7ea7/\u5347\u5230|"

    const-string v101, "2021005112626489|\u5408\u4e0d\u8fc7\u6211\u5427|0.2.2607011748.44|mmhygame|hbgwb_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,hbgwb_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|"

    const-string v102, "2021006137600649|\u7b80\u76f4\u662f\u5929\u624d|0.2.2608191623.26|mmhygame|jzstc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,jzstc_game_xiaochu_every_10^10^\u6d88\u9664/\u6d88\u6d88|"

    const-string v103, "2021005112624997|\u52a8\u7269\u53e0\u9ad8\u9ad8|0.2.2603122222.47|modyoo|dwdgg_game_hecheng_every_1^1^\u5408\u6210/\u5408\u5e76|"

    const-string v104, "2021004157677654|\u5c0f\u9e21\u6599\u7406\u738b|0.2.2608071935.8|moxigame|xjllw_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|"

    const-string v105, "2021005113663065|\u68ee\u6797\u6539\u9020\u8ba1\u5212|0.2.2601051147.45|moyangmoyang|slgzjh_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|"

    const-string v106, "2060170000359285|\u4e00\u6b65\u4e24\u6b65|0.2.2607140922.20|nebula737|yblb_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,yblb_game_jineng_every_1^1^\u6280\u80fd,yblb_game_gaojixuyuan_every_1^1^\u9ad8\u7ea7\u8bb8\u613f/\u8bb8\u613f|nbAppKey=ac23221b56c6ab0d442094b67bf794c9;nebulaAppId=30488;companyId=69;channelId=100;sdkVersion=3.4.35;gameVersion=1.6.13"

    const-string v107, "2021004171692313|\u5973\u5b69\u4e0e\u6d77|0.2.2507232209.2|nhyhtaobao||"

    const-string v108, "2021004143669557|\u4f1a\u5458\u5c0f\u5ead\u9662|0.2.2607301647.41|oneMoxigame|iaphyxty_game_dingdan_every_5^5^\u8ba2\u5355,iaphyxty_game_hecheng_every_10^10^\u5408\u6210/\u5408\u5e76|"

    const-string v109, "2021004173649916|\u56db\u5b63\u7269\u8bed|0.2.2607172159.19|qmhd87|sjwy_game_hecheng_every_20^20^\u5408\u6210/\u5408\u5e76,sjwy_game_dingdan_every_1^1^\u8ba2\u5355,sjwy_game_jiaju_every_1^1^\u5bb6\u5177|reportHost=game2-sjwy.qmhd87.com;channelCode=PA0306;packageName=projectA;sdkVersion=6.9.7"

    const-string v110, "2021004130631819|\u519c\u573a\u7eb8\u724c\u5854|0.2.2606151503.30|qufang|farmzpt_game_pass_1_misson^1^\u901a\u5173/\u901a\u8fc7|versionApp=4.4.5;loginHost=login-01.qufang.top;reportHost=game-factory-jail-001.qufang.top"

    const-string v111, "2021004132661719|\u5929\u5929\u603c\u65b9\u5757|0.2.2512101743.54|qufang|zydfk_game_hecheng_every_5^5^\u5408\u6210/\u5408\u5e76|versionApp=4.4.5;loginHost=login-01.qufang.top;reportHost=game-factory-jail-001.qufang.top"

    const-string v112, "2021004148695256|\u5e84\u56ed\u603c\u65b9\u5757|0.2.2606041614.13|qufang|zydfk_game_hecheng_every_5^5^\u5408\u6210/\u5408\u5e76|versionApp=4.4.5;loginHost=login-01.qufang.top;reportHost=game-factory-jail-001.qufang.top"

    const-string v113, "2021004129659235|\u75af\u72c2\u65cb\u8f6c\u6a21\u62df\u5668|0.2.2602031626.19|qxygame|fkxzmnq_game_jibai_every_1^1^\u51fb\u8d25/\u6311\u6218|"

    const-string v114, "2021004160635662|\u840c\u840c\u95ef\u5173\u8fbe\u4eba|0.2.2512121514.7|qxygame|mmcgdr_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v115, "2060170000399302|\u5360\u57ce\u5927\u5e08|0.2.2609172112.5|raiyantway|zcds_game_duiju_every_1^1^\u5bf9\u5c40/\u5bf9\u6218/\u6bd4\u8d5b,zcds_game_baoxiang_every_1^1^\u5b9d\u7bb1|loginHost=cbqta.rayiantway.com:8525;userType=31"

    const-string v116, "2021006118661999|\u679c\u56ed\u6d88\u87ba\u4e1d|0.2.2603041819.11|server8haligame|gyxls_game_xiaochu_every_5^5^\u6d88\u9664/\u6d88\u6d88|"

    const-string v117, "2060170000358895|\u8d85\u5143\u706b\u67f4\u4eba|0.2.2501072053.14|soulgame|cyqhcr_game_renyifuben_every_1^1^\u526f\u672c|appKey=sg1d1bf57c8def15ee"

    const-string v118, "2021004167642405|\u519c\u573a\u6c34\u6ef4\u6392\u5e8f|0.2.2507111655.8|tgpax|ncspx_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v119, "2021006139626077|\u65f6\u5c1a\u767e\u8d27\u57ce|0.2.2607140329.43|tomato|ssbhc_game_dpsj_every_10^10^\u5e97\u94fa\u5347\u7ea7/\u5e97\u94fa,ssbhc_game_hbts_every_10^10^\u4f19\u4f34\u63d0\u5347/\u4f19\u4f34,ssbhc_game_rw_every_1^1^\u4efb\u52a1,ssbhc_game_gcyf_every_10^10^\u5de5\u5382\u7814\u53d1/\u7814\u53d1,ssbhc_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|sdkVersion=1.0.0;secret=24AB7463A3C613B430EDEBCEE1DFA190;gameId=1100313;platformKey=zfb_xyx_ssbhc;sdkChannel=zfbxyx_and_ssbhcwxand_34;cid=2200449"

    const-string v120, "2021003193629997|\u8336\u53f6\u86cb\u5927\u5192\u9669|0.2.2606121444.57|ultralisk|cyddmx_game_pass_level_1^1^\u95ef\u5173/\u901a\u5173/\u901a\u8fc7|"

    const-string v121, "2021005107607717|\u8336\u53f6\u86cb\u5927\u89e3\u5bc6|0.2.2602091812.10|ultralisk|cyddjm_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v122, "2021005130646326|\u5e9f\u7269\u5e78\u5b58\u8005|0.2.2601071550.0|ultralisk|fxxcz_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v123, "2021004150609014|\u519c\u573a\u53e0\u53e0\u53e0|0.2.2504071609.32|vip888888|ncddd_game_pipei_every_5^5^\u914d\u5bf9/\u5339\u914d|sdkVersion=v1.0.1;gameVersion=20250331V1.0.0"

    const-string v124, "2021005100698187|\u6d88\u6d88\u5c0f\u80fd\u624b|0.2.2512241437.43|yigomob|xxxns_game_pass_every_1^1^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173|"

    const-string v125, "2060170000357463|\u6211\u8981\u4e0b\u897f\u6d0b|0.2.2501211752.30|yoqu|wyxxy_game_jianzao_every_1^1^\u5efa\u9020/\u5efa\u7b51|"

    const-string v126, "2060170000359949|\u6211\u8981\u4e0b\u897f\u6d0b\u519c\u573a\u7248|0.2.2501222004.56|yoqu|wyxxyncb_game_jianzao_every_1^1^\u5efa\u9020/\u5efa\u7b51|"

    const-string v127, "2060170000359968|\u6211\u8981\u4e0b\u897f\u6d0b\u4f1a\u5458\u7248|0.2.2501221829.7|yoqu|wyxxyhyb_game_jianzao_every_1^1^\u5efa\u9020/\u5efa\u7b51|"

    const-string v128, "2060170000352323|\u4e5d\u68a6\u4ed9\u57df|0.2.2606111657.38|youyantech|jmxy_game_tianguan_every_1^1^\u5929\u5173/\u95ef\u5173,jmxy_game_mowang_every_1^1^\u9b54\u738b|"

    const-string v129, "2021004122696780|\u9752\u4e91\u8bc0\u4e4b\u4f0f\u9b54|0.2.2606261000.30|yyxxgame|qyj_game_pass_level_every_3^3^\u901a\u5173/\u901a\u8fc7/\u95ef\u5173,qyj_game_mission_every_1^1^\u4efb\u52a1/\u6311\u6218,qyj_game_level_every_1^1^\u5173\u5361/\u5347\u7ea7,qyj_game_fengmoguta_every_1^1^\u4f0f\u9b54\u5854,qyj_game_jiuyoufuben_every_1^1^\u4e5d\u5e7d|apiKey=5t5s9a18bcfdfb8a4a4a10c546dg8r58;oid=rhkyx;gcid=Y09020301"

    filled-new-array/range {v1 .. v131}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->ROWS:[Ljava/lang/String;

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->TABLE:Ljava/util/Map;

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 398
    invoke-static {v4}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->parseRow(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 400
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_1
    :try_start_0
    invoke-static {}, Lio/github/lazyimmortal/sesame/util/FileUtil;->getMiniGameTaskTableFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    :cond_2
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->writeDefaultTable(Ljava/io/File;Ljava/util/List;)V

    .line 411
    :cond_3
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->loadFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 412
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v2

    goto :goto_1

    .line 416
    :cond_4
    invoke-static {v0, v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->writeDefaultTable(Ljava/io/File;Ljava/util/List;)V

    .line 417
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->loadFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 418
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 425
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    .line 427
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    .line 428
    sget-object v2, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->TABLE:Ljava/util/Map;

    iget-object v3, v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->appId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actions(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;",
            ">;"
        }
    .end annotation

    .line 500
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object p0

    if-nez p0, :cond_0

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->actions:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public static all()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ">;"
        }
    .end annotation

    .line 541
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->TABLE:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static asInt(Ljava/lang/Object;I)I
    .locals 1

    .line 356
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 357
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 361
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return p1
.end method

.method private static asLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 372
    const-string p0, ""

    return-object p0

    .line 374
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x2f

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 389
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 352
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static everyOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->actions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;

    .line 515
    iget-object v2, v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->code:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    iget p0, v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->every:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 519
    :cond_2
    const-string p0, "_every_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    add-int/lit8 p0, p0, 0x7

    .line 522
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method private static fromRowMap(Ljava/util/Map;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 315
    :cond_0
    const-string v1, "appId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 319
    :cond_1
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 320
    const-string v0, "version"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 321
    const-string v0, "sdk"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 322
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 323
    const-string v0, "actions"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 325
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 326
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_0

    .line 329
    :cond_2
    check-cast v1, Ljava/util/Map;

    .line 330
    const-string v2, "code"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    .line 334
    :cond_3
    const-string v8, "every"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asInt(Ljava/lang/Object;I)I

    move-result v8

    .line 335
    const-string v9, "label"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->asLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v9, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;

    invoke-direct {v9, v2, v8, v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_4
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 340
    const-string v0, "params"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 341
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 342
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 348
    :cond_6
    new-instance p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 477
    :cond_0
    sget-object v0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->TABLE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    :goto_0
    return-object p0
.end method

.method private static loadFromFile(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->loadGames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static loadGames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 448
    :try_start_0
    new-instance v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$1;

    invoke-direct {v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$1;-><init>()V

    invoke-static {p0, v1}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->parseObject(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_6

    .line 450
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 456
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 457
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->fromRowMap(Ljava/util/Map;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object v2

    goto :goto_1

    .line 458
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 459
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->parseRow(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 462
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    return-object v0

    :catchall_0
    move-exception p0

    .line 467
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/util/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 488
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object p0

    if-nez p0, :cond_0

    .line 489
    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->name:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static param(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 531
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object p0

    .line 532
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 535
    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->params:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static parseRow(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 248
    :cond_0
    const-string v1, "\\|"

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 249
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    return-object v0

    .line 252
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v0, v2, :cond_4

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    aget-object v0, p0, v2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_4

    aget-object v7, v0, v6

    .line 255
    const-string v9, "\\^"

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 256
    array-length v9, v7

    if-ge v9, v4, :cond_2

    goto :goto_3

    .line 261
    :cond_2
    :try_start_0
    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v9, 0x1

    .line 265
    :goto_1
    new-instance v10, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;

    aget-object v11, v7, v3

    array-length v12, v7

    if-le v12, v4, :cond_3

    aget-object v7, v7, v4

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    invoke-direct {v10, v11, v9, v7}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 268
    :cond_4
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 269
    array-length v0, p0

    const/4 v2, 0x5

    if-le v0, v2, :cond_6

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 270
    aget-object v0, p0, v2

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_6

    aget-object v7, v0, v6

    .line 271
    const-string v10, "="

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 272
    array-length v10, v7

    if-ne v10, v4, :cond_5

    .line 273
    aget-object v10, v7, v3

    aget-object v7, v7, v5

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 277
    :cond_6
    new-instance v0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    aget-object v2, p0, v3

    aget-object v5, p0, v5

    aget-object v6, p0, v4

    aget-object v7, p0, v1

    move-object v3, v0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public static sdk(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 494
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object p0

    if-nez p0, :cond_0

    .line 495
    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->sdk:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static toRowMap(Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 283
    const-string v1, "appId"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "name"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "version"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "sdk"

    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->sdk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v2, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;

    .line 289
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    const-string v5, "code"

    iget-object v6, v3, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->code:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget v5, v3, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->every:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "every"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v6, v3, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->label:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 294
    iget-object v3, v3, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Action;->label:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 295
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 297
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 301
    :cond_1
    const-string v3, "label"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_2
    const-string v2, "actions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "params"

    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->params:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static version(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 482
    invoke-static {p0}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->get(Ljava/lang/String;)Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    move-result-object p0

    if-nez p0, :cond_0

    .line 483
    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;->version:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static writeDefaultTable(Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;",
            ">;)V"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;

    .line 439
    invoke-static {v1}, Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable;->toRowMap(Lio/github/lazyimmortal/sesame/model/task/antGame/MiniGameTaskTable$Game;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {v0}, Lio/github/lazyimmortal/sesame/util/JsonUtil;->toFormatJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lio/github/lazyimmortal/sesame/util/FileUtil;->write2File(Ljava/lang/String;Ljava/io/File;)Z

    return-void
.end method
