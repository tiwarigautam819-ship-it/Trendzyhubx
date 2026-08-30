package k2;

import android.os.AsyncTask;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f3542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f3543c;

    public m(String str, File file, l lVar) {
        d7.g.f("uriStr", str);
        this.f3541a = str;
        this.f3542b = file;
        this.f3543c = lVar;
    }

    public final Boolean a(String... strArr) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            d7.g.f("args", strArr);
            try {
                URL url = new URL(this.f3541a);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f3542b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return a((String[]) objArr);
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            if (!v2.a.b(this) && zBooleanValue) {
                try {
                    this.f3543c.c(this.f3542b);
                } catch (Throwable th) {
                    v2.a.a(th, this);
                }
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }
}
