package q2;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.WakeMessage;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class x {
    public static /* synthetic */ boolean a(int i6) {
        switch (i6) {
            case 1:
                return true;
            case 2:
            case 3:
                return false;
            case 4:
            case 5:
                return true;
            case 6:
                return false;
            default:
                throw null;
        }
    }

    public static /* synthetic */ String b(int i6) {
        if (i6 == 1) {
            return null;
        }
        if (i6 == 2) {
            return "only_me";
        }
        if (i6 == 3) {
            return "friends";
        }
        if (i6 == 4) {
            return "everyone";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i6) {
        if (i6 == 1) {
            return "facebook";
        }
        if (i6 == 2) {
            return "instagram";
        }
        throw null;
    }

    public static int d(int i6, String str, int i9) {
        return (str.hashCode() + i6) * i9;
    }

    public static String e(int i6, int i9, String str, String str2) {
        return str + i6 + str2 + i9;
    }

    public static String f(String str, String str2) {
        return str + str2;
    }

    public static String g(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String h(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static /* synthetic */ void i(AutoCloseable autoCloseable) throws Exception {
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (autoCloseable instanceof ExecutorService) {
            com.getcapacitor.a.v((ExecutorService) autoCloseable);
            return;
        }
        if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
            return;
        }
        if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof MediaDrm) {
            ((MediaDrm) autoCloseable).release();
        } else if (autoCloseable instanceof DrmManagerClient) {
            ((DrmManagerClient) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) autoCloseable).release();
        }
    }

    public static void j(Throwable th, StringBuilder sb, String str) {
        sb.append(th.getMessage());
        MTCommonLog.w(str, sb.toString());
    }

    public static String k(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ String l(int i6) {
        if (i6 == 1) {
            return "S256";
        }
        if (i6 == 2) {
            return "PLAIN";
        }
        throw null;
    }

    public static /* synthetic */ String m(int i6) {
        switch (i6) {
            case 1:
                return "NATIVE_WITH_FALLBACK";
            case 2:
                return "NATIVE_ONLY";
            case 3:
                return "KATANA_ONLY";
            case 4:
                return "WEB_ONLY";
            case 5:
                return "DIALOG_ONLY";
            case 6:
                return "DEVICE_AUTH";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String n(int i6) {
        switch (i6) {
            case 1:
                return "AZTEC";
            case 2:
                return "CODABAR";
            case 3:
                return "CODE_39";
            case 4:
                return "CODE_93";
            case 5:
                return "CODE_128";
            case 6:
                return "DATA_MATRIX";
            case 7:
                return "EAN_8";
            case WakeMessage.ACTIVITY /* 8 */:
                return "EAN_13";
            case 9:
                return "ITF";
            case 10:
                return "MAXICODE";
            case 11:
                return "PDF_417";
            case 12:
                return "QR_CODE";
            case 13:
                return "RSS_14";
            case 14:
                return "RSS_EXPANDED";
            case 15:
                return "UPC_A";
            case 16:
                return "UPC_E";
            case 17:
                return "UPC_EAN_EXTENSION";
            default:
                return "null";
        }
    }
}
