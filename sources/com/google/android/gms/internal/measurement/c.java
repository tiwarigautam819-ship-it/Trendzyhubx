package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final r4.g f1539d = r4.g.f(3, "_syn", "_err", "_el");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1542c;

    public c(String str, long j3, Map map) {
        this.f1540a = str;
        this.f1541b = j3;
        HashMap map2 = new HashMap();
        this.f1542c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public static Object a(String str, Object obj, Object obj2) {
        if (f1539d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else {
            if (obj instanceof Double) {
                return obj2;
            }
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    public final /* synthetic */ Object clone() {
        return new c(this.f1540a, this.f1541b, new HashMap(this.f1542c));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f1541b == cVar.f1541b && this.f1540a.equals(cVar.f1540a)) {
            return this.f1542c.equals(cVar.f1542c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f1540a.hashCode() * 31;
        long j3 = this.f1541b;
        return this.f1542c.hashCode() + ((iHashCode + ((int) (j3 ^ (j3 >>> 32)))) * 31);
    }

    public final String toString() {
        return "Event{name='" + this.f1540a + "', timestamp=" + this.f1541b + ", params=" + String.valueOf(this.f1542c) + "}";
    }
}
