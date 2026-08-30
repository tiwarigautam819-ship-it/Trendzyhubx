package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a6 f1669a;

    static {
        if (f7.f1640e) {
            boolean z5 = f7.f1639d;
        }
        f1669a = new a6(9);
    }

    public static int a(String str) {
        int length = str.length();
        int i6 = 0;
        int i9 = 0;
        while (i9 < length && str.charAt(i9) < 128) {
            i9++;
        }
        int i10 = length;
        while (true) {
            if (i9 >= length) {
                break;
            }
            char cCharAt = str.charAt(i9);
            if (cCharAt < 2048) {
                i10 += (127 - cCharAt) >>> 31;
                i9++;
            } else {
                int length2 = str.length();
                while (i9 < length2) {
                    char cCharAt2 = str.charAt(i9);
                    if (cCharAt2 < 2048) {
                        i6 += (127 - cCharAt2) >>> 31;
                    } else {
                        i6 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i9) < 65536) {
                                throw new i7(i9, length2);
                            }
                            i9++;
                        }
                    }
                    i9++;
                }
                i10 += i6;
            }
        }
        if (i10 >= length) {
            return i10;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i10) + 4294967296L));
    }

    public static int b(String str, byte[] bArr, int i6, int i9) {
        int i10;
        int i11;
        char cCharAt;
        f1669a.getClass();
        int length = str.length();
        int i12 = i9 + i6;
        int i13 = 0;
        while (i13 < length && (i11 = i13 + i6) < i12 && (cCharAt = str.charAt(i13)) < 128) {
            bArr[i11] = (byte) cCharAt;
            i13++;
        }
        if (i13 == length) {
            return i6 + length;
        }
        int i14 = i6 + i13;
        while (i13 < length) {
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 < 128 && i14 < i12) {
                bArr[i14] = (byte) cCharAt2;
                i14++;
            } else if (cCharAt2 < 2048 && i14 <= i12 - 2) {
                int i15 = i14 + 1;
                bArr[i14] = (byte) ((cCharAt2 >>> 6) | 960);
                i14 += 2;
                bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i14 > i12 - 3) {
                    if (i14 > i12 - 4) {
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i10 = i13 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i10)))) {
                            throw new i7(i13, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i14);
                    }
                    int i16 = i13 + 1;
                    if (i16 != str.length()) {
                        char cCharAt3 = str.charAt(i16);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i14] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i14 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i17 = i14 + 3;
                            bArr[i14 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i14 += 4;
                            bArr[i17] = (byte) ((codePoint & 63) | 128);
                            i13 = i16;
                        } else {
                            i13 = i16;
                        }
                    }
                    throw new i7(i13 - 1, length);
                }
                bArr[i14] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i18 = i14 + 2;
                bArr[i14 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i14 += 3;
                bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
            }
            i13++;
        }
        return i14;
    }

    public static /* synthetic */ int c(byte[] bArr, int i6, int i9) {
        byte b3 = bArr[i6 - 1];
        int i10 = i9 - i6;
        if (i10 == 0) {
            if (b3 > -12) {
                return -1;
            }
            return b3;
        }
        if (i10 == 1) {
            byte b7 = bArr[i6];
            if (b3 > -12 || b7 > -65) {
                return -1;
            }
            return (b7 << 8) ^ b3;
        }
        if (i10 != 2) {
            throw new AssertionError();
        }
        byte b9 = bArr[i6];
        byte b10 = bArr[i6 + 1];
        if (b3 > -12 || b9 > -65 || b10 > -65) {
            return -1;
        }
        return (b10 << 16) ^ ((b9 << 8) ^ b3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean d(byte[] bArr, int i6, int i9) {
        int iC;
        f1669a.getClass();
        while (i6 < i9 && bArr[i6] >= 0) {
            i6++;
        }
        if (i6 >= i9) {
            iC = 0;
        } else {
            while (i6 < i9) {
                int i10 = i6 + 1;
                iC = bArr[i6];
                if (iC < 0) {
                    if (iC >= -32) {
                        if (iC >= -16) {
                            if (i10 < i9 - 2) {
                                int i11 = i6 + 2;
                                int i12 = bArr[i10];
                                if (i12 <= -65) {
                                    if ((((i12 + 112) + (iC << 28)) >> 30) == 0) {
                                        int i13 = i6 + 3;
                                        if (bArr[i11] <= -65) {
                                            i6 += 4;
                                            if (bArr[i13] > -65) {
                                            }
                                        }
                                    }
                                }
                                iC = -1;
                                break;
                            }
                            iC = c(bArr, i10, i9);
                            break;
                        }
                        if (i10 < i9 - 1) {
                            int i14 = i6 + 2;
                            char c8 = bArr[i10];
                            if (c8 <= -65 && ((iC != -32 || c8 >= -96) && (iC != -19 || c8 < -96))) {
                                i6 += 3;
                                if (bArr[i14] > -65) {
                                }
                            }
                            iC = -1;
                            break;
                        }
                        iC = c(bArr, i10, i9);
                        break;
                    }
                    if (i10 >= i9) {
                        break;
                    }
                    if (iC >= -62) {
                        i6 += 2;
                        if (bArr[i10] > -65) {
                        }
                    }
                    iC = -1;
                    break;
                }
                i6 = i10;
            }
            iC = 0;
        }
        return iC == 0;
    }
}
