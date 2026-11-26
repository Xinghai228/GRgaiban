package io.github.lazyimmortal.sesame.hook;

/* JADX INFO: loaded from: classes.dex */
class SlideCoordinates {
    private final float endX;
    private final float endY;
    private final float startX;
    private final float startY;

    public float getStartX() {
        return this.startX;
    }

    public float getStartY() {
        return this.startY;
    }

    public float getEndX() {
        return this.endX;
    }

    public float getEndY() {
        return this.endY;
    }

    public SlideCoordinates(float f, float f2, float f3, float f4) {
        this.startX = f;
        this.startY = f2;
        this.endX = f3;
        this.endY = f4;
    }
}
