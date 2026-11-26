package com.fasterxml.jackson.core.internal.shaded.fdp.v2_18_2;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.NavigableMap;

/* JADX INFO: loaded from: classes.dex */
final class JavaBigDecimalFromCharSequence extends AbstractBigDecimalParser {
    public BigDecimal parseBigDecimalString(CharSequence charSequence, int i, int i2) {
        long j;
        int i3;
        int i4;
        int i5;
        long j2;
        int i6;
        long j3;
        int iTryToParseFourDigits;
        CharSequence charSequence2 = charSequence;
        int i7 = i;
        try {
            int iCheckBounds = checkBounds(charSequence.length(), i7, i2);
            if (hasManyDigits(i2)) {
                return parseBigDecimalStringWithManyDigits(charSequence, i, i2);
            }
            char cCharAt = charAt(charSequence2, i7, iCheckBounds);
            boolean z = cCharAt == '-';
            if (z || cCharAt == '+') {
                i7++;
                cCharAt = charAt(charSequence2, i7, iCheckBounds);
                if (cCharAt == 0) {
                    throw new NumberFormatException(AbstractNumberParser.SYNTAX_ERROR);
                }
            }
            int i8 = i7;
            int i9 = -1;
            int i10 = i8;
            long j4 = 0;
            boolean z2 = false;
            while (i10 < iCheckBounds) {
                cCharAt = charSequence2.charAt(i10);
                char c = (char) (cCharAt - '0');
                if (c >= '\n') {
                    if (cCharAt != '.') {
                        break;
                    }
                    z2 |= i9 >= 0;
                    int i11 = i10;
                    while (i11 < iCheckBounds - 4 && (iTryToParseFourDigits = FastDoubleSwar.tryToParseFourDigits(charSequence2, i11 + 1)) >= 0) {
                        j4 = (j4 * 10000) + ((long) iTryToParseFourDigits);
                        i11 += 4;
                    }
                    int i12 = i10;
                    i10 = i11;
                    i9 = i12;
                } else {
                    j4 = (j4 * 10) + ((long) c);
                }
                i10++;
            }
            if (i9 < 0) {
                i4 = i10 - i8;
                i3 = i10;
                j = 0;
            } else {
                j = (i9 - i10) + 1;
                i3 = i9;
                i4 = (i10 - i8) - 1;
            }
            if ((cCharAt | ' ') == 101) {
                int i13 = i10 + 1;
                char cCharAt2 = charAt(charSequence2, i13, iCheckBounds);
                boolean z3 = cCharAt2 == '-';
                if (z3 || cCharAt2 == '+') {
                    i13 = i10 + 2;
                    cCharAt2 = charAt(charSequence2, i13, iCheckBounds);
                }
                char cCharAt3 = (char) (cCharAt2 - '0');
                z2 |= cCharAt3 >= '\n';
                long j5 = 0;
                while (true) {
                    if (j5 < 2147483647L) {
                        j5 = (j5 * 10) + ((long) cCharAt3);
                    }
                    j3 = j5;
                    i13++;
                    cCharAt3 = (char) (charAt(charSequence2, i13, iCheckBounds) - '0');
                    if (cCharAt3 >= '\n') {
                        break;
                    }
                    charSequence2 = charSequence;
                    j5 = j3;
                    i8 = i8;
                    i3 = i3;
                }
                if (z3) {
                    j3 = -j3;
                }
                i6 = i13;
                j2 = j + j3;
                i5 = i10;
            } else {
                i8 = i8;
                i3 = i3;
                i5 = iCheckBounds;
                j2 = j;
                i6 = i10;
            }
            checkParsedBigDecimalBounds(z2 | (i4 == 0), i6, iCheckBounds, i4, j2);
            if (i4 < 19) {
                if (z) {
                    j4 = -j4;
                }
                return new BigDecimal(j4).scaleByPowerOfTen((int) j2);
            }
            return valueOfBigDecimalString(charSequence, i8, i3, i3 + 1, i5, z, (int) j2);
        } catch (ArithmeticException e) {
            NumberFormatException numberFormatException = new NumberFormatException(AbstractNumberParser.VALUE_EXCEEDS_LIMITS);
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    BigDecimal parseBigDecimalStringWithManyDigits(CharSequence charSequence, int i, int i2) {
        int i3;
        int i4;
        long j;
        int i5;
        int i6;
        boolean z;
        long j2;
        int i7 = i;
        int i8 = i7 + i2;
        char cCharAt = charAt(charSequence, i7, i8);
        boolean z2 = cCharAt == '-';
        if ((z2 || cCharAt == '+') && (cCharAt = charAt(charSequence, (i7 = i7 + 1), i8)) == 0) {
            throw new NumberFormatException(AbstractNumberParser.SYNTAX_ERROR);
        }
        int iMin = Math.min(i8 - 8, 1073741824);
        int i9 = i7;
        while (i9 < iMin && FastDoubleSwar.isEightZeroes(charSequence, i9)) {
            i9 += 8;
        }
        while (i9 < i8 && charSequence.charAt(i9) == '0') {
            i9++;
        }
        int i10 = i9;
        while (i10 < iMin && FastDoubleSwar.isEightDigits(charSequence, i10)) {
            i10 += 8;
        }
        while (i10 < i8) {
            cCharAt = charSequence.charAt(i10);
            if (!FastDoubleSwar.isDigit(cCharAt)) {
                break;
            }
            i10++;
        }
        if (cCharAt == '.') {
            int i11 = i10 + 1;
            while (i11 < iMin && FastDoubleSwar.isEightZeroes(charSequence, i11)) {
                i11 += 8;
            }
            while (i11 < i8 && charSequence.charAt(i11) == '0') {
                i11++;
            }
            int i12 = i11;
            while (i12 < iMin && FastDoubleSwar.isEightDigits(charSequence, i12)) {
                i12 += 8;
            }
            while (i12 < i8) {
                cCharAt = charSequence.charAt(i12);
                if (!FastDoubleSwar.isDigit(cCharAt)) {
                    break;
                }
                i12++;
            }
            i4 = i11;
            i3 = i10;
            i10 = i12;
        } else {
            i3 = -1;
            i4 = -1;
        }
        if (i3 < 0) {
            i5 = i10 - i9;
            i4 = i10;
            i3 = i4;
            j = 0;
        } else {
            j = (i3 - i10) + 1;
            i5 = i9 == i3 ? i10 - i4 : (i10 - i9) - 1;
        }
        if ((cCharAt | ' ') == 101) {
            int i13 = i10 + 1;
            char cCharAt2 = charAt(charSequence, i13, i8);
            boolean z3 = cCharAt2 == '-';
            if (z3 || cCharAt2 == '+') {
                i13 = i10 + 2;
                cCharAt2 = charAt(charSequence, i13, i8);
            }
            char cCharAt3 = (char) (cCharAt2 - '0');
            z = cCharAt3 >= '\n';
            long j3 = 0;
            while (true) {
                if (j3 < 2147483647L) {
                    j3 = (j3 * 10) + ((long) cCharAt3);
                }
                j2 = j3;
                i13++;
                cCharAt3 = (char) (charAt(charSequence, i13, i8) - '0');
                if (cCharAt3 >= '\n') {
                    break;
                }
                j3 = j2;
                z2 = z2;
            }
            if (z3) {
                j2 = -j2;
            }
            j += j2;
            i6 = i13;
        } else {
            z2 = z2;
            i6 = i10;
            z = false;
            i10 = i8;
        }
        checkParsedBigDecimalBounds(z | (i7 == i3 && i3 == i10), i6, i8, i5, j);
        return valueOfBigDecimalString(charSequence, i9, i3, i4, i10, z2, (int) j);
    }

    BigDecimal valueOfBigDecimalString(CharSequence charSequence, int i, int i2, int i3, int i4, boolean z, int i5) {
        BigInteger bigIntegerNegate;
        BigInteger digitsIterative;
        int i6 = (i4 - i2) - 1;
        int i7 = i4 - i3;
        int i8 = i2 - i;
        NavigableMap<Integer, BigInteger> navigableMapCreatePowersOfTenFloor16Map = null;
        if (i8 <= 0) {
            bigIntegerNegate = BigInteger.ZERO;
        } else if (i8 > 400) {
            navigableMapCreatePowersOfTenFloor16Map = FastIntegerMath.createPowersOfTenFloor16Map();
            FastIntegerMath.fillPowersOfNFloor16Recursive(navigableMapCreatePowersOfTenFloor16Map, i, i2);
            bigIntegerNegate = ParseDigitsTaskCharSequence.parseDigitsRecursive(charSequence, i, i2, navigableMapCreatePowersOfTenFloor16Map, 400);
        } else {
            bigIntegerNegate = ParseDigitsTaskCharSequence.parseDigitsIterative(charSequence, i, i2);
        }
        if (i6 > 0) {
            if (i7 > 400) {
                if (navigableMapCreatePowersOfTenFloor16Map == null) {
                    navigableMapCreatePowersOfTenFloor16Map = FastIntegerMath.createPowersOfTenFloor16Map();
                }
                FastIntegerMath.fillPowersOfNFloor16Recursive(navigableMapCreatePowersOfTenFloor16Map, i3, i4);
                digitsIterative = ParseDigitsTaskCharSequence.parseDigitsRecursive(charSequence, i3, i4, navigableMapCreatePowersOfTenFloor16Map, 400);
            } else {
                digitsIterative = ParseDigitsTaskCharSequence.parseDigitsIterative(charSequence, i3, i4);
            }
            if (bigIntegerNegate.signum() != 0) {
                digitsIterative = FftMultiplier.multiply(bigIntegerNegate, FastIntegerMath.computePowerOfTen(navigableMapCreatePowersOfTenFloor16Map, i6)).add(digitsIterative);
            }
            bigIntegerNegate = digitsIterative;
        }
        if (z) {
            bigIntegerNegate = bigIntegerNegate.negate();
        }
        return new BigDecimal(bigIntegerNegate, -i5);
    }
}
