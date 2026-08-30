package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends y3.a {
    public static final Parcelable.Creator<w> CREATOR = new a.c(23);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f2158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s.e f2159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c5.h f2160c;

    public w(Bundle bundle) {
        this.f2158a = bundle;
    }

    public final Map a() {
        if (this.f2159b == null) {
            s.e eVar = new s.e(0);
            Bundle bundle = this.f2158a;
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals(MTPushConstants.PlatformNode.KEY_FROM) && !str.equals(MTPushConstants.Message.KEY_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        eVar.put(str, str2);
                    }
                }
            }
            this.f2159b = eVar;
        }
        return this.f2159b;
    }

    public final c5.h b() {
        if (this.f2160c == null) {
            Bundle bundle = this.f2158a;
            if (k1.h.D(bundle)) {
                this.f2160c = new c5.h(new k1.h(bundle));
            }
        }
        return this.f2160c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        z7.d.j(parcel, 2, this.f2158a);
        z7.d.q(iP, parcel);
    }
}
