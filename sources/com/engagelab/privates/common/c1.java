package com.engagelab.privates.common;

import android.text.TextUtils;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.core.api.Outputer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c1 {
    public static byte[] a(int i6, long j3) {
        Outputer outputer = new Outputer(11);
        outputer.writeU16(0);
        outputer.writeU8((byte) i6);
        outputer.writeU64(j3);
        return outputer.toByteArray();
    }

    public static byte[] b(String str) {
        try {
            byte[] bytes = str.getBytes(MTCommonConstants.UTF_8);
            Outputer outputer = new Outputer(bytes.length);
            outputer.writeByteArrayIncludeLength(bytes);
            return outputer.toByteArray();
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("packageAliasRequest failed "), "MTPushProtocol");
            return null;
        }
    }

    public static byte[] a(byte b3, String str, String str2) {
        int length;
        try {
            byte[] bytes = str.getBytes(MTCommonConstants.UTF_8);
            byte[] bytes2 = !TextUtils.isEmpty(str2) ? str2.getBytes(MTCommonConstants.UTF_8) : null;
            if (bytes2 != null && bytes2.length > 0) {
                length = bytes.length + 1 + bytes2.length;
            } else {
                length = bytes.length + 1;
            }
            Outputer outputer = new Outputer(length);
            outputer.writeByteArrayIncludeLength(bytes);
            outputer.writeU8(b3);
            if (bytes2 != null && bytes2.length > 0) {
                outputer.writeByteArrayIncludeLength(bytes2);
            }
            return outputer.toByteArray();
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("packagePlatformTokenBody failed "), "MTPushProtocol");
            return null;
        }
    }

    public static byte[] a(String str) {
        try {
            byte[] bytes = str.getBytes(MTCommonConstants.UTF_8);
            Outputer outputer = new Outputer(bytes.length + 2);
            outputer.writeU8(7);
            outputer.writeU8(1);
            outputer.writeByteArrayIncludeLength(bytes);
            return outputer.toByteArray();
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("packageMobileNumberBody failed "), "MTPushProtocol");
            return null;
        }
    }
}
