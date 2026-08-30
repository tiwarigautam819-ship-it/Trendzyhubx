package com.engagelab.privates.common.utils;

import com.engagelab.privates.core.api.WakeMessage;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AESUtil {
    private static byte[] generateKeyBytes(String str, String str2) throws UnsupportedEncodingException {
        byte[] bArr = new byte[str.length()];
        byte[] bytes = str.substring(0, str.length() / 2).getBytes(str2);
        byte[] bytes2 = str.substring(str.length() / 2).getBytes(str2);
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        System.arraycopy(bytes2, 0, bArr, bytes.length, bytes2.length);
        return bArr;
    }

    public static int generateSeed() {
        return Math.abs(new SecureRandom().nextInt()) & 16777215;
    }

    public static String get16Md5AesKey(long j3) {
        long j8;
        long j9;
        switch ((int) (j3 % 10)) {
            case 1:
                j8 = 5 * j3;
                j9 = j3 % 88;
                break;
            case 2:
                j8 = 23 * j3;
                j9 = j3 % 15;
                break;
            case 3:
                j8 = 3 * j3;
                j9 = j3 % 73;
                break;
            case 4:
                j8 = 13 * j3;
                j9 = j3 % 96;
                break;
            case 5:
                j8 = 17 * j3;
                j9 = j3 % 49;
                break;
            case 6:
                j8 = 7 * j3;
                j9 = j3 % 68;
                break;
            case 7:
                j8 = 31 * j3;
                j9 = j3 % 39;
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                j8 = 29 * j3;
                j9 = j3 % 41;
                break;
            case 9:
                j8 = 37 * j3;
                j9 = j3 % 91;
                break;
            default:
                j8 = 8 * j3;
                j9 = j3 % 74;
                break;
        }
        return StringUtil.get16MD5String("JCKP" + (j9 + j8));
    }

    public static String getIv(String str, char c8) {
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        for (int i6 = 0; i6 < bytes.length; i6++) {
            bytes[i6] = (byte) (bytes[i6] ^ c8);
        }
        return new String(bytes, 0, bytes.length);
    }

    public static String getMd5AesKey(long j3) {
        long j8;
        long j9;
        switch ((int) (j3 % 10)) {
            case 1:
                j8 = 5 * j3;
                j9 = j3 % 88;
                break;
            case 2:
                j8 = 23 * j3;
                j9 = j3 % 15;
                break;
            case 3:
                j8 = 3 * j3;
                j9 = j3 % 73;
                break;
            case 4:
                j8 = 13 * j3;
                j9 = j3 % 96;
                break;
            case 5:
                j8 = 17 * j3;
                j9 = j3 % 49;
                break;
            case 6:
                j8 = 7 * j3;
                j9 = j3 % 68;
                break;
            case 7:
                j8 = 31 * j3;
                j9 = j3 % 39;
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                j8 = 29 * j3;
                j9 = j3 % 41;
                break;
            case 9:
                j8 = 37 * j3;
                j9 = j3 % 91;
                break;
            default:
                j8 = 8 * j3;
                j9 = j3 % 74;
                break;
        }
        return StringUtil.get32MD5String("JCKP" + (j9 + j8));
    }

    private static IvParameterSpec reflectGetIv(byte[] bArr) {
        return (IvParameterSpec) ReflectUtil.invokeConstructor(IvParameterSpec.class, new Object[]{bArr}, new Class[]{byte[].class});
    }
}
