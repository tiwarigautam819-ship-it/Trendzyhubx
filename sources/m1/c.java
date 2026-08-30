package m1;

import android.net.Uri;
import android.util.Log;
import com.lottery.app.GameActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONObject;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f4214b = new HashSet(Arrays.asList("verify", "sign", "signature", "sig", "token", "__hv", "__sv", "auth", "expires"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f4215a;

    public c(GameActivity gameActivity, String str) {
        File file = new File(new File(gameActivity.getCacheDir(), "game_res"), str);
        this.f4215a = file;
        if (file.exists() || file.mkdirs()) {
            return;
        }
        Log.w("CacheStore", "mkdirs failed: " + file);
    }

    public static String b(String str) {
        try {
            Uri uri = Uri.parse(str);
            String query = uri.getQuery();
            if (query != null && !query.isEmpty()) {
                Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
                boolean z5 = false;
                for (String str2 : uri.getQueryParameterNames()) {
                    if (str2 == null || !f4214b.contains(str2.toLowerCase(Locale.US))) {
                        Iterator<String> it = uri.getQueryParameters(str2).iterator();
                        while (it.hasNext()) {
                            builderClearQuery.appendQueryParameter(str2, it.next());
                        }
                    } else {
                        z5 = true;
                    }
                }
                if (z5) {
                    str = builderClearQuery.build().toString();
                }
            }
        } catch (Throwable unused) {
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-1").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(40);
            for (byte b3 : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b3)));
            }
            return sb.toString();
        } catch (Exception unused2) {
            return Integer.toHexString(str.hashCode());
        }
    }

    public final void a(String str, File file, String str2, String str3) {
        String string;
        if (file.exists()) {
            String strB = b(str);
            String strF = x.f(strB, ".bin");
            File file2 = this.f4215a;
            File file3 = new File(file2, strF);
            File file4 = new File(file2, x.f(strB, ".meta"));
            File file5 = new File(file2, x.f(strB, ".meta.tmp"));
            if (file3.exists()) {
                file3.delete();
            }
            if (!file.renameTo(file3)) {
                Log.w("CacheStore", "rename .bin failed: ".concat(str));
                file.delete();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file5);
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("url", str);
                        if (str2 == null) {
                            str2 = "";
                        }
                        jSONObject.put("mime", str2);
                        if (str3 == null) {
                            str3 = "";
                        }
                        jSONObject.put("enc", str3);
                        jSONObject.put("savedAt", jCurrentTimeMillis);
                        string = jSONObject.toString();
                    } catch (Exception unused) {
                        string = "{}";
                    }
                    fileOutputStream.write(string.getBytes(StandardCharsets.UTF_8));
                    fileOutputStream.close();
                    if (file4.exists()) {
                        file4.delete();
                    }
                    if (file5.renameTo(file4)) {
                        return;
                    }
                    Log.w("CacheStore", "rename .meta failed: ".concat(str));
                    file3.delete();
                    file5.delete();
                } finally {
                }
            } catch (IOException e9) {
                Log.w("CacheStore", "meta write failed: ".concat(str), e9);
                file3.delete();
                file5.delete();
            }
        }
    }
}
