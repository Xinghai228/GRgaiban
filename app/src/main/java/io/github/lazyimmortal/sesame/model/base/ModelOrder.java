package io.github.lazyimmortal.sesame.model.base;

import io.github.lazyimmortal.sesame.data.Model;
import io.github.lazyimmortal.sesame.model.extensions.ExtensionsHandle;
import io.github.lazyimmortal.sesame.model.normal.answerAI.AnswerAI;
import io.github.lazyimmortal.sesame.model.normal.base.BaseModel;
import io.github.lazyimmortal.sesame.model.task.antDodo.AntDodo;
import io.github.lazyimmortal.sesame.model.task.antFarm.AntFarm;
import io.github.lazyimmortal.sesame.model.task.antForest.AntForestV2;
import io.github.lazyimmortal.sesame.model.task.antMember.AntMember;
import io.github.lazyimmortal.sesame.model.task.antOcean.AntOcean;
import io.github.lazyimmortal.sesame.model.task.antOrchard.AntOrchard;
import io.github.lazyimmortal.sesame.model.task.antSports.AntSports;
import io.github.lazyimmortal.sesame.model.task.antStall.AntStall;
import io.github.lazyimmortal.sesame.model.task.friendDelete.FriendDeleteModel;
import io.github.lazyimmortal.sesame.model.task.greenFinance.GreenFinance;
import io.github.lazyimmortal.sesame.model.task.protectEcology.ProtectEcology;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ModelOrder {
    private static final List<Class<? extends Model>> clazzList;

    public static List<Class<? extends Model>> getClazzList() {
        return clazzList;
    }

    static {
        ArrayList arrayList = new ArrayList();
        clazzList = arrayList;
        arrayList.add(BaseModel.class);
        arrayList.add(AntForestV2.class);
        arrayList.add(AntFarm.class);
        arrayList.add(FriendDeleteModel.class);
        arrayList.add(AntStall.class);
        arrayList.add(AntOrchard.class);
        arrayList.add(ProtectEcology.class);
        arrayList.add(AntDodo.class);
        arrayList.add(AntOcean.class);
        arrayList.add(AntSports.class);
        arrayList.add(AntMember.class);
        arrayList.add(GreenFinance.class);
        arrayList.add(AnswerAI.class);
        ExtensionsHandle.handleAlphaRequest("ModelOrder", "addExtensionsClass", arrayList);
    }
}
