package io.github.lazyimmortal.sesame.data.modelFieldExt.common;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface SelectModelFieldFunc {
    void add(String str, Integer num);

    void clear();

    Boolean contains(String str);

    Integer get(String str);

    void remove(String str);

    /* JADX INFO: renamed from: io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static SelectModelFieldFunc newMapInstance() {
            return new SelectModelFieldFunc() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc.1
                private final Map<String, Integer> map = new LinkedHashMap();

                @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
                public void clear() {
                    this.map.clear();
                }

                @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
                public Integer get(String str) {
                    return this.map.get(str);
                }

                @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
                public void add(String str, Integer num) {
                    this.map.put(str, num);
                }

                @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
                public void remove(String str) {
                    this.map.remove(str);
                }

                @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
                public Boolean contains(String str) {
                    return Boolean.valueOf(this.map.containsKey(str));
                }
            };
        }
    }
}
