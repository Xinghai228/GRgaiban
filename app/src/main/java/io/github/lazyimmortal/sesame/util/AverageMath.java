package io.github.lazyimmortal.sesame.util;

/* JADX INFO: loaded from: classes.dex */
public class AverageMath {
    private final CircularFifoQueue<Integer> queue;
    private double sum = 0.0d;
    private double average = 0.0d;

    public AverageMath(int i) {
        this.queue = new CircularFifoQueue<>(i);
    }

    public double nextDouble(int i) {
        Integer numPush = this.queue.push(Integer.valueOf(i));
        if (numPush != null) {
            this.sum -= (double) numPush.intValue();
        }
        double d = this.sum + ((double) i);
        this.sum = d;
        double size = d / ((double) this.queue.size());
        this.average = size;
        return size;
    }

    public int nextInteger(int i) {
        return (int) nextDouble(i);
    }

    public double averageDouble() {
        return this.average;
    }

    public int getAverageInteger() {
        return (int) this.average;
    }

    public void clear() {
        this.queue.clear();
        this.sum = 0.0d;
        this.average = 0.0d;
    }
}
