package com.getcapacitor;

import android.content.SharedPreferences;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class AppUUID {
    private static final String KEY = "CapacitorAppUUID";

    private static void assertAppUUID(g.m mVar) throws Exception {
        if (readUUID(mVar).equals("")) {
            regenerateAppUUID(mVar);
        }
    }

    private static String bytesToHex(byte[] bArr) {
        byte[] bytes = "0123456789ABCDEF".getBytes(StandardCharsets.US_ASCII);
        byte[] bArr2 = new byte[bArr.length * 2];
        for (int i6 = 0; i6 < bArr.length; i6++) {
            byte b3 = bArr[i6];
            int i9 = i6 * 2;
            bArr2[i9] = bytes[(b3 & 255) >>> 4];
            bArr2[i9 + 1] = bytes[b3 & 15];
        }
        return new String(bArr2, StandardCharsets.UTF_8);
    }

    private static String generateUUID() throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(UUID.randomUUID().toString().getBytes(StandardCharsets.UTF_8));
        return bytesToHex(messageDigest.digest());
    }

    public static String getAppUUID(g.m mVar) throws Exception {
        assertAppUUID(mVar);
        return readUUID(mVar);
    }

    private static String readUUID(g.m mVar) {
        return mVar.getPreferences(0).getString(KEY, "");
    }

    public static void regenerateAppUUID(g.m mVar) throws Exception {
        try {
            writeUUID(mVar, generateUUID());
        } catch (NoSuchAlgorithmException unused) {
            throw new Exception("Capacitor App UUID could not be generated.");
        }
    }

    private static void writeUUID(g.m mVar, String str) {
        SharedPreferences.Editor editorEdit = mVar.getPreferences(0).edit();
        editorEdit.putString(KEY, str);
        editorEdit.apply();
    }
}
