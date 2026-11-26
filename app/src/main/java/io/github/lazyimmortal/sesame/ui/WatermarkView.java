package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import io.github.lazyimmortal.sesame.util.WatermarkUtil;

/* JADX INFO: loaded from: classes.dex */
public class WatermarkView extends View {
    private static final int HORIZONTAL_SPACING = 400;
    private static final int VERTICAL_SPACING = 400;
    private Paint paint;
    private int watermarkAlpha;
    private float watermarkRotation;
    private String watermarkText;
    private int watermarkTextSize;

    public WatermarkView(Context context) {
        super(context);
        init();
    }

    public WatermarkView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public WatermarkView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.watermarkText = WatermarkUtil.getWatermarkText();
        this.watermarkAlpha = WatermarkUtil.getWatermarkAlpha();
        this.watermarkRotation = WatermarkUtil.getWatermarkRotation();
        this.watermarkTextSize = WatermarkUtil.getWatermarkTextSize();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-7829368);
        this.paint.setAlpha(this.watermarkAlpha);
        this.paint.setTextSize(TypedValue.applyDimension(2, this.watermarkTextSize, getResources().getDisplayMetrics()));
        this.paint.setStyle(Paint.Style.FILL);
        setBackgroundColor(0);
        setClickable(false);
        setFocusable(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        String str = this.watermarkText;
        if (str == null || str.isEmpty()) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        Rect rect = new Rect();
        Paint paint = this.paint;
        String str2 = this.watermarkText;
        paint.getTextBounds(str2, 0, str2.length(), rect);
        rect.width();
        rect.height();
        canvas.save();
        int iCeil = ((int) Math.ceil(((double) height) / 400.0d)) + 3;
        int iCeil2 = ((int) Math.ceil(((double) width) / 400.0d)) + 3;
        for (int i = 0; i < iCeil; i++) {
            for (int i2 = 0; i2 < iCeil2; i2++) {
                canvas.save();
                canvas.translate(i2 * 400, i * 400);
                canvas.rotate(this.watermarkRotation);
                canvas.drawText(this.watermarkText, 0.0f, 0.0f, this.paint);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    public void refreshWatermark() {
        this.watermarkText = WatermarkUtil.getWatermarkText();
        this.watermarkAlpha = WatermarkUtil.getWatermarkAlpha();
        this.watermarkRotation = WatermarkUtil.getWatermarkRotation();
        this.watermarkTextSize = WatermarkUtil.getWatermarkTextSize();
        this.paint.setAlpha(this.watermarkAlpha);
        this.paint.setTextSize(TypedValue.applyDimension(2, this.watermarkTextSize, getResources().getDisplayMetrics()));
        invalidate();
    }

    public void setWatermarkVisible(boolean z) {
        setVisibility(z ? 0 : 8);
    }
}
