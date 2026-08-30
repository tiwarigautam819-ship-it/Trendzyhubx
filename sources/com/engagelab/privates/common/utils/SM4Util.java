package com.engagelab.privates.common.utils;

import android.util.Base64;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.log.MTCommonLog;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class SM4Util {
    private static final int BLOCK = 16;
    private static final int ROUND = 32;
    private static final String TAG = "SM4";
    public static final String A = Guard.string(new byte[]{88});
    private static byte[] Sbox = {-42, -112, -23, -2, -52, -31, 61, -73, 22, -74, 20, -62, 40, -5, 44, 5, 43, 103, -102, 118, 42, -66, 4, -61, -86, 68, 19, 38, 73, -122, 6, -103, -100, 66, 80, -12, -111, -17, -104, 122, 51, 84, 11, 67, -19, -49, -84, 98, -28, -77, 28, -87, -55, 8, -24, -107, -128, -33, -108, -6, 117, -113, 63, -90, 71, 7, -89, -4, -13, 115, 23, -70, -125, 89, 60, 25, -26, -123, 79, -88, 104, 107, -127, -78, 113, 100, -38, -117, -8, -21, 15, 75, 112, 86, -99, 53, 30, 36, 14, 94, 99, 88, -47, -94, 37, 34, 124, 59, 1, 33, 120, -121, -44, 0, 70, 87, -97, -45, 39, 82, 76, 54, 2, -25, -96, -60, -56, -98, -22, -65, -118, -46, 64, -57, 56, -75, -93, -9, -14, -50, -7, 97, 21, -95, -32, -82, 93, -92, -101, 52, 26, 85, -83, -109, 50, 48, -11, -116, -79, -29, 29, -10, -30, 46, -126, 102, -54, 96, -64, 41, 35, -85, 13, 83, 78, 111, -43, -37, 55, 69, -34, -3, -114, 47, 3, -1, 106, 114, 109, 108, 91, 81, -115, 27, -81, -110, -69, -35, -68, 127, 17, -39, 92, 65, 31, 16, 90, -40, 10, -63, 49, -120, -91, -51, 123, -67, 45, 116, -48, 18, -72, -27, -76, -80, -119, 105, -105, 74, 12, -106, 119, 126, 101, -71, -15, 9, -59, 110, -58, -124, 24, -16, 125, -20, 58, -36, 77, 32, 121, -18, 95, 62, -41, -53, 57, 72};
    private static int[] CK = {462357, 472066609, 943670861, 1415275113, 1886879365, -1936483679, -1464879427, -993275175, -521670923, -66909679, 404694573, 876298825, 1347903077, 1819507329, -2003855715, -1532251463, -1060647211, -589042959, -117504499, 337322537, 808926789, 1280531041, 1752135293, -2071227751, -1599623499, -1128019247, -656414995, -184876535, 269950501, 741554753, 1213159005, 1684763257};

    private static int ByteSub(int i6) {
        byte[] bArr = Sbox;
        return (bArr[i6 & 255] & 255) | ((bArr[(i6 >>> 24) & 255] & 255) << 24) | ((bArr[(i6 >>> BLOCK) & 255] & 255) << BLOCK) | ((bArr[(i6 >>> 8) & 255] & 255) << 8);
    }

    private static int L1(int i6) {
        return Rotl(i6, 24) ^ (((Rotl(i6, 2) ^ i6) ^ Rotl(i6, 10)) ^ Rotl(i6, 18));
    }

    private static int L2(int i6) {
        return Rotl(i6, 23) ^ (Rotl(i6, 13) ^ i6);
    }

    private static int[] L3(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i6 = 0; i6 < 4; i6++) {
            int i9 = i6 * 4;
            iArr[i6] = (bArr[i9 + 3] & 255) | ((bArr[i9] & 255) << 24) | ((bArr[i9 + 1] & 255) << BLOCK) | ((bArr[i9 + 2] & 255) << 8);
        }
        return iArr;
    }

    private static int Rotl(int i6, int i9) {
        return (i6 >>> (32 - i9)) | (i6 << i9);
    }

    private static void cbcXor(byte[] bArr, byte[] bArr2) {
        for (int i6 = 0; i6 < bArr.length; i6++) {
            bArr[i6] = (byte) (bArr[i6] ^ bArr2[i6]);
        }
    }

    public static byte[] decode(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        if (bArr2 == null || bArr2.length != BLOCK) {
            throw new IllegalArgumentException("key's length should be 16");
        }
        if (bArr3 != null && bArr3.length != BLOCK) {
            bArr3 = null;
        }
        int[] iArrSm4KeyExt = sm4KeyExt(bArr2, true);
        byte[] bArr4 = new byte[BLOCK];
        byte[] bArr5 = new byte[BLOCK];
        byte[] bArr6 = new byte[bArr.length];
        int i6 = 0;
        while (true) {
            int i9 = i6 + BLOCK;
            if (i9 > bArr.length) {
                return revertPkcs7Padding(bArr6);
            }
            System.arraycopy(bArr, i6, bArr4, 0, BLOCK);
            sm4Crypt(bArr4, bArr5, iArrSm4KeyExt);
            if (bArr3 != null) {
                cbcXor(bArr5, bArr3);
            } else {
                bArr3 = new byte[BLOCK];
            }
            System.arraycopy(bArr, i6, bArr3, 0, BLOCK);
            System.arraycopy(bArr5, 0, bArr6, i6, BLOCK);
            i6 = i9;
        }
    }

    public static String decodeMessage(String str) {
        try {
            int iLastIndexOf = str.lastIndexOf(A);
            String strSubstring = str.substring(iLastIndexOf + 1, str.length());
            byte[] bArrDecode = Base64.decode(str.substring(0, iLastIndexOf), 2);
            String md5AesKey = AESUtil.getMd5AesKey(Long.parseLong(strSubstring));
            return new String(decryptBytes(bArrDecode, md5AesKey, md5AesKey.substring(0, BLOCK)), MTCommonConstants.UTF_8);
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "dM e:" + th);
            MTCommonLog.w(TAG, "dM :" + str);
            return null;
        }
    }

    public static byte[] decryptBytes(byte[] bArr, String str) {
        return decode(bArr, hexStringToByte(str), str.substring(0, BLOCK).getBytes("utf-8"));
    }

    public static byte[] encode(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        if (bArr2 == null || bArr2.length != BLOCK) {
            throw new IllegalArgumentException("key's length should be 16");
        }
        if (bArr3 != null && bArr3.length != BLOCK) {
            bArr3 = null;
        }
        byte[] bArrPkcs7padding = pkcs7padding(bArr);
        int[] iArrSm4KeyExt = sm4KeyExt(bArr2, false);
        byte[] bArr4 = new byte[BLOCK];
        byte[] bArr5 = new byte[bArrPkcs7padding.length];
        int i6 = 0;
        while (true) {
            int i9 = i6 + BLOCK;
            if (i9 > bArrPkcs7padding.length) {
                return bArr5;
            }
            System.arraycopy(bArrPkcs7padding, i6, bArr4, 0, BLOCK);
            if (bArr3 != null) {
                cbcXor(bArr4, bArr3);
            } else {
                bArr3 = new byte[BLOCK];
            }
            sm4Crypt(bArr4, bArr3, iArrSm4KeyExt);
            System.arraycopy(bArr3, 0, bArr5, i6, bArr3.length);
            i6 = i9;
        }
    }

    public static byte[] encryptBytes(byte[] bArr, String str, String str2) {
        return encode(bArr, hexStringToByte(str), str2.getBytes("utf-8"));
    }

    public static byte[] hexStringToByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toLowerCase().toCharArray();
        for (int i6 = 0; i6 < length; i6++) {
            int i9 = i6 * 2;
            bArr[i6] = (byte) (toByte(charArray[i9 + 1]) | (toByte(charArray[i9]) << 4));
        }
        return bArr;
    }

    private static byte[] pkcs7padding(byte[] bArr) {
        int length = 16 - (bArr.length % BLOCK);
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length + length);
        for (int i6 = 0; i6 < length; i6++) {
            bArrCopyOf[bArr.length + i6] = (byte) length;
        }
        return bArrCopyOf;
    }

    private static byte[] revertPkcs7Padding(byte[] bArr) {
        int length = bArr.length - bArr[bArr.length - 1];
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static void sm4Crypt(byte[] bArr, byte[] bArr2, int[] iArr) {
        int[] iArrL3 = L3(bArr);
        for (int i6 = 0; i6 < ROUND; i6 += 4) {
            int iL1 = iArrL3[0] ^ L1(ByteSub(((iArrL3[1] ^ iArrL3[2]) ^ iArrL3[3]) ^ iArr[i6]));
            iArrL3[0] = iL1;
            int iL12 = L1(ByteSub((iL1 ^ (iArrL3[2] ^ iArrL3[3])) ^ iArr[i6 + 1])) ^ iArrL3[1];
            iArrL3[1] = iL12;
            int iL13 = L1(ByteSub((iL12 ^ (iArrL3[3] ^ iArrL3[0])) ^ iArr[i6 + 2])) ^ iArrL3[2];
            iArrL3[2] = iL13;
            iArrL3[3] = L1(ByteSub((iL13 ^ (iArrL3[1] ^ iArrL3[0])) ^ iArr[i6 + 3])) ^ iArrL3[3];
        }
        for (int i9 = 0; i9 < BLOCK; i9 += 4) {
            int i10 = iArrL3[3 - (i9 / 4)];
            bArr2[i9] = (byte) ((i10 >>> 24) & 255);
            bArr2[i9 + 1] = (byte) ((i10 >>> BLOCK) & 255);
            bArr2[i9 + 2] = (byte) ((i10 >>> 8) & 255);
            bArr2[i9 + 3] = (byte) (i10 & 255);
        }
    }

    public static int[] sm4KeyExt(byte[] bArr, boolean z5) {
        int[] iArrL3 = L3(bArr);
        iArrL3[0] = iArrL3[0] ^ (-1548633402);
        iArrL3[1] = iArrL3[1] ^ 1453994832;
        iArrL3[2] = iArrL3[2] ^ 1736282519;
        iArrL3[3] = iArrL3[3] ^ (-1301273892);
        int[] iArr = new int[ROUND];
        for (int i6 = 0; i6 < ROUND; i6 += 4) {
            int iL2 = iArrL3[0] ^ L2(ByteSub(((iArrL3[1] ^ iArrL3[2]) ^ iArrL3[3]) ^ CK[i6]));
            iArrL3[0] = iL2;
            iArr[i6] = iL2;
            int i9 = i6 + 1;
            int iL22 = iArrL3[1] ^ L2(ByteSub(((iArrL3[2] ^ iArrL3[3]) ^ iArrL3[0]) ^ CK[i9]));
            iArrL3[1] = iL22;
            iArr[i9] = iL22;
            int i10 = i6 + 2;
            int iL23 = iArrL3[2] ^ L2(ByteSub(((iArrL3[3] ^ iArrL3[0]) ^ iArrL3[1]) ^ CK[i10]));
            iArrL3[2] = iL23;
            iArr[i10] = iL23;
            int i11 = i6 + 3;
            int iL24 = iArrL3[3] ^ L2(ByteSub(((iArrL3[0] ^ iArrL3[1]) ^ iArrL3[2]) ^ CK[i11]));
            iArrL3[3] = iL24;
            iArr[i11] = iL24;
        }
        if (z5) {
            for (int i12 = 0; i12 < BLOCK; i12++) {
                int i13 = iArr[i12];
                int i14 = 31 - i12;
                iArr[i12] = iArr[i14];
                iArr[i14] = i13;
            }
        }
        return iArr;
    }

    private static int toByte(char c8) {
        return (byte) "0123456789abcdef".indexOf(c8);
    }

    public static String toHexString(byte[] bArr) {
        if (bArr == null || bArr.length < 1) {
            throw new IllegalArgumentException("this byteArray must not be null or empty");
        }
        StringBuilder sb = new StringBuilder();
        for (byte b3 : bArr) {
            int i6 = b3 & 255;
            if (i6 < BLOCK) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i6));
        }
        return sb.toString().toLowerCase();
    }

    public static byte[] decryptBytes(byte[] bArr, String str, String str2) {
        return decode(bArr, hexStringToByte(str), str2.getBytes("utf-8"));
    }
}
