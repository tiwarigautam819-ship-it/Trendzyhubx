package g3;

import android.content.Context;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o3.a f2861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o3.a f2862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2863d;

    public b(Context context, o3.a aVar, o3.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f2860a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f2861b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f2862c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f2863d = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            b bVar = (b) ((c) obj);
            if (this.f2860a.equals(bVar.f2860a) && this.f2861b.equals(bVar.f2861b) && this.f2862c.equals(bVar.f2862c) && this.f2863d.equals(bVar.f2863d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f2860a.hashCode() ^ 1000003) * 1000003) ^ this.f2861b.hashCode()) * 1000003) ^ this.f2862c.hashCode()) * 1000003) ^ this.f2863d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f2860a);
        sb.append(", wallClock=");
        sb.append(this.f2861b);
        sb.append(", monotonicClock=");
        sb.append(this.f2862c);
        sb.append(", backendName=");
        return x.h(sb, this.f2863d, "}");
    }
}
