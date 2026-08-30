package z1;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CopyOnWriteArraySet f6392d = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f6395c;

    public c(String str, String str2, List list) {
        this.f6393a = str;
        this.f6394b = str2;
        this.f6395c = list;
    }

    public static final /* synthetic */ CopyOnWriteArraySet a() {
        if (v2.a.b(c.class)) {
            return null;
        }
        try {
            return f6392d;
        } catch (Throwable th) {
            v2.a.a(th, c.class);
            return null;
        }
    }

    public final ArrayList b() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return new ArrayList(this.f6395c);
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final String c() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return this.f6393a;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }
}
