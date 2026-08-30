package g8;

import android.webkit.ValueCallback;
import org.apache.cordova.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ValueCallback f2871b;

    public b(ValueCallback valueCallback) {
        this.f2871b = valueCallback;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    @Override // org.apache.cordova.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onActivityResult(int r3, int r4, android.content.Intent r5) {
        /*
            r2 = this;
            r3 = -1
            if (r4 != r3) goto L37
            if (r5 == 0) goto L37
            android.content.ClipData r3 = r5.getClipData()
            if (r3 == 0) goto L2c
            android.content.ClipData r3 = r5.getClipData()
            int r3 = r3.getItemCount()
            android.net.Uri[] r4 = new android.net.Uri[r3]
            r0 = 0
        L16:
            if (r0 >= r3) goto L38
            android.content.ClipData r1 = r5.getClipData()
            android.content.ClipData$Item r1 = r1.getItemAt(r0)
            android.net.Uri r1 = r1.getUri()
            r4[r0] = r1
            java.util.Objects.toString(r1)
            int r0 = r0 + 1
            goto L16
        L2c:
            android.net.Uri r3 = r5.getData()
            if (r3 == 0) goto L37
            android.net.Uri[] r4 = android.webkit.WebChromeClient.FileChooserParams.parseResult(r4, r5)
            goto L38
        L37:
            r4 = 0
        L38:
            android.webkit.ValueCallback r3 = r2.f2871b
            r3.onReceiveValue(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g8.b.onActivityResult(int, int, android.content.Intent):void");
    }
}
