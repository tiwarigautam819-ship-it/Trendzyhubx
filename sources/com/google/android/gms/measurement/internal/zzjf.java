package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzjf {
    public static <T> T zza(Bundle bundle, String str, Class<T> cls, T t8) {
        T t9 = (T) bundle.get(str);
        if (t9 == null) {
            return t8;
        }
        if (cls.isAssignableFrom(t9.getClass())) {
            return t9;
        }
        String canonicalName = cls.getCanonicalName();
        String canonicalName2 = t9.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder("Invalid conditional user property field type. '");
        sb.append(str);
        sb.append("' expected [");
        sb.append(canonicalName);
        sb.append("] but was [");
        throw new IllegalStateException(x.h(sb, canonicalName2, "]"));
    }

    public static void zza(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }
}
