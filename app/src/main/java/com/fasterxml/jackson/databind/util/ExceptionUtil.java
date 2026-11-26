package com.fasterxml.jackson.databind.util;

import androidx.print.PrintHelper$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionUtil {
    private ExceptionUtil() {
    }

    public static void rethrowIfFatal(Throwable th) throws Error, RuntimeException {
        if (isFatal(th)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw new RuntimeException(th);
        }
    }

    private static boolean isFatal(Throwable th) {
        return (th instanceof VirtualMachineError) || (th instanceof ThreadDeath) || (th instanceof InterruptedException) || (th instanceof ClassCircularityError) || (th instanceof ClassFormatError) || (th instanceof IncompatibleClassChangeError) || PrintHelper$$ExternalSyntheticApiModelOutline0.m88m((Object) th) || (th instanceof VerifyError);
    }

    public static <T> T throwSneaky(IOException iOException) throws Throwable {
        _sneaky(iOException);
        return null;
    }

    private static <E extends Throwable> void _sneaky(Throwable th) throws Throwable {
        throw th;
    }
}
