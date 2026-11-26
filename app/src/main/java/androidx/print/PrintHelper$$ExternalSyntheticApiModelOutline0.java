package androidx.print;

import android.view.inputmethod.InputContentInfo;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.spi.FileSystemProvider;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PrintHelper$$ExternalSyntheticApiModelOutline0 {
    public static /* bridge */ /* synthetic */ InputContentInfo m(Object obj) {
        return (InputContentInfo) obj;
    }

    public static /* bridge */ /* synthetic */ Class m() {
        return Path.class;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileSystemException m73m(Object obj) {
        return (FileSystemException) obj;
    }

    public static /* synthetic */ FileSystemException m(String str) {
        return new FileSystemException(str);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ FileSystemLoopException m74m(String str) {
        return new FileSystemLoopException(str);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileVisitResult m76m(Object obj) {
        return (FileVisitResult) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileVisitor m77m(Object obj) {
        return (FileVisitor) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Path m79m(Object obj) {
        return (Path) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ FileSystemProvider m82m(Object obj) {
        return (FileSystemProvider) obj;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m85m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m88m(Object obj) {
        return obj instanceof BootstrapMethodError;
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return FileSystemProvider.class;
    }

    /* JADX INFO: renamed from: m$1, reason: collision with other method in class */
    public static /* synthetic */ void m93m$1() {
    }

    public static /* bridge */ /* synthetic */ Class m$2() {
        return Stream.class;
    }

    public static /* bridge */ /* synthetic */ Class m$3() {
        return BaseStream.class;
    }

    public static /* bridge */ /* synthetic */ Class m$4() {
        return DoubleStream.class;
    }

    public static /* bridge */ /* synthetic */ Class m$5() {
        return IntStream.class;
    }

    public static /* bridge */ /* synthetic */ Class m$6() {
        return LongStream.class;
    }

    public static /* bridge */ /* synthetic */ Class m$7() {
        return BasicFileAttributes.class;
    }
}
