package d1;

import android.content.res.AssetManager;
import android.os.Build;
import b.m;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f2216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f2217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f2218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2220f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b[] f2221g;
    public byte[] h;

    public a(AssetManager assetManager, Executor executor, c cVar, String str, File file) {
        this.f2215a = executor;
        this.f2216b = cVar;
        this.f2219e = str;
        this.f2218d = file;
        int i6 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i6 >= 24 && i6 <= 34) {
            switch (i6) {
                case 24:
                case 25:
                    bArr = d.h;
                    break;
                case 26:
                    bArr = d.f2236g;
                    break;
                case 27:
                    bArr = d.f2235f;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = d.f2234e;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    bArr = d.f2233d;
                    break;
            }
        }
        this.f2217c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e9) {
            String message = e9.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            this.f2216b.g();
            return null;
        }
    }

    public final void b(int i6, Serializable serializable) {
        this.f2215a.execute(new m(i6, 2, this, serializable));
    }
}
