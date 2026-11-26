package io.github.lazyimmortal.sesame.model.task.antFarm;

import io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField;
import io.github.lazyimmortal.sesame.entity.AlipayUser;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class AntFarm$$ExternalSyntheticLambda14 implements SelectAndCountModelField.SelectListFunc {
    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField.SelectListFunc
    public final List getList() {
        return AlipayUser.getList();
    }
}
