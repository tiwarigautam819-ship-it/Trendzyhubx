package v5;

import java.sql.Date;
import java.sql.Timestamp;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f5629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f5630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t5.a f5632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t5.a f5633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t5.a f5634f;

    static {
        boolean z5;
        try {
            Class.forName("java.sql.Date");
            z5 = true;
        } catch (ClassNotFoundException unused) {
            z5 = false;
        }
        f5629a = z5;
        if (z5) {
            f5630b = new b(Date.class);
            f5631c = new b(Timestamp.class);
            f5632d = a.f5624c;
            f5633e = a.f5625d;
            f5634f = a.f5626e;
            return;
        }
        f5630b = null;
        f5631c = null;
        f5632d = null;
        f5633e = null;
        f5634f = null;
    }
}
