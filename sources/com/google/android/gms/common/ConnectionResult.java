package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;
import n4.e;
import y3.a;
import z7.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ConnectionResult extends a {
    public static final int SUCCESS = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PendingIntent f1390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConnectionResult f1387e = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new e(3);

    public ConnectionResult(int i6, int i9, PendingIntent pendingIntent, String str) {
        this.f1388a = i6;
        this.f1389b = i9;
        this.f1390c = pendingIntent;
        this.f1391d = str;
    }

    public static String a(int i6) {
        if (i6 == 99) {
            return "UNFINISHED";
        }
        if (i6 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i6) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case WakeMessage.ACTIVITY /* 8 */:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i6) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    default:
                        return a1.a.j(i6, "UNKNOWN_ERROR_CODE(", ")");
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f1389b == connectionResult.f1389b && d0.k(this.f1390c, connectionResult.f1390c) && d0.k(this.f1391d, connectionResult.f1391d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1389b), this.f1390c, this.f1391d});
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        y4Var.f("statusCode", a(this.f1389b));
        y4Var.f("resolution", this.f1390c);
        y4Var.f(MTPushConstants.Message.KEY_MESSAGE, this.f1391d);
        return y4Var.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iP = d.p(20293, parcel);
        d.r(parcel, 1, 4);
        parcel.writeInt(this.f1388a);
        d.r(parcel, 2, 4);
        parcel.writeInt(this.f1389b);
        d.l(parcel, 3, this.f1390c, i6);
        d.m(parcel, 4, this.f1391d);
        d.q(iP, parcel);
    }

    public ConnectionResult(int i6) {
        this(1, i6, null, null);
    }

    public ConnectionResult(int i6, PendingIntent pendingIntent) {
        this(1, i6, pendingIntent, null);
    }
}
