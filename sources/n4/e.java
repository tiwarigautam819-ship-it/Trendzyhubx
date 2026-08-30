package n4;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.w;
import com.google.firebase.analytics.FirebaseAnalytics;
import j7.g;
import java.util.ArrayList;
import java.util.HashMap;
import q2.g0;
import s6.r;
import v3.p;
import x1.f0;
import x1.h;
import x1.i;
import x1.o;
import x1.y;
import y2.j;
import y2.k;
import y2.l;
import y2.m;
import y2.n;
import y2.t;
import y2.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4337a;

    public /* synthetic */ e(int i6) {
        this.f4337a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4337a) {
            case 0:
                int iU = g.u(parcel);
                ArrayList<String> arrayList = null;
                String strG = null;
                while (parcel.dataPosition() < iU) {
                    int i6 = parcel.readInt();
                    char c8 = (char) i6;
                    if (c8 == 1) {
                        int iR = g.r(i6, parcel);
                        int iDataPosition = parcel.dataPosition();
                        if (iR == 0) {
                            arrayList = null;
                        } else {
                            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                            parcel.setDataPosition(iDataPosition + iR);
                            arrayList = arrayListCreateStringArrayList;
                        }
                    } else if (c8 != 2) {
                        g.s(i6, parcel);
                    } else {
                        strG = g.g(i6, parcel);
                    }
                }
                g.i(iU, parcel);
                return new d(strG, arrayList);
            case 1:
                int iU2 = g.u(parcel);
                ConnectionResult connectionResult = null;
                int iP = 0;
                w wVar = null;
                while (parcel.dataPosition() < iU2) {
                    int i9 = parcel.readInt();
                    char c9 = (char) i9;
                    if (c9 == 1) {
                        iP = g.p(i9, parcel);
                    } else if (c9 == 2) {
                        connectionResult = (ConnectionResult) g.f(parcel, i9, ConnectionResult.CREATOR);
                    } else if (c9 != 3) {
                        g.s(i9, parcel);
                    } else {
                        wVar = (w) g.f(parcel, i9, w.CREATOR);
                    }
                }
                g.i(iU2, parcel);
                return new f(iP, connectionResult, wVar);
            case 2:
                int iU3 = g.u(parcel);
                String strG2 = null;
                String strG3 = null;
                String strG4 = null;
                String strG5 = null;
                Uri uri = null;
                String strG6 = null;
                String strG7 = null;
                ArrayList arrayList2 = null;
                String strG8 = null;
                String strG9 = null;
                long jQ = 0;
                int iP2 = 0;
                while (parcel.dataPosition() < iU3) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            iP2 = g.p(i10, parcel);
                            break;
                        case 2:
                            strG2 = g.g(i10, parcel);
                            break;
                        case 3:
                            strG3 = g.g(i10, parcel);
                            break;
                        case 4:
                            strG4 = g.g(i10, parcel);
                            break;
                        case 5:
                            strG5 = g.g(i10, parcel);
                            break;
                        case 6:
                            uri = (Uri) g.f(parcel, i10, Uri.CREATOR);
                            break;
                        case 7:
                            strG6 = g.g(i10, parcel);
                            break;
                        case WakeMessage.ACTIVITY /* 8 */:
                            jQ = g.q(i10, parcel);
                            break;
                        case '\t':
                            strG7 = g.g(i10, parcel);
                            break;
                        case '\n':
                            Parcelable.Creator<Scope> creator = Scope.CREATOR;
                            int iR2 = g.r(i10, parcel);
                            int iDataPosition2 = parcel.dataPosition();
                            if (iR2 != 0) {
                                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
                                parcel.setDataPosition(iDataPosition2 + iR2);
                                arrayList2 = arrayListCreateTypedArrayList;
                            } else {
                                arrayList2 = null;
                            }
                            break;
                        case 11:
                            strG8 = g.g(i10, parcel);
                            break;
                        case '\f':
                            strG9 = g.g(i10, parcel);
                            break;
                        default:
                            g.s(i10, parcel);
                            break;
                    }
                }
                g.i(iU3, parcel);
                return new GoogleSignInAccount(iP2, strG2, strG3, strG4, strG5, uri, strG6, jQ, strG7, arrayList2, strG8, strG9);
            case 3:
                int iU4 = g.u(parcel);
                PendingIntent pendingIntent = null;
                int iP3 = 0;
                int iP4 = 0;
                String strG10 = null;
                while (parcel.dataPosition() < iU4) {
                    int i11 = parcel.readInt();
                    char c10 = (char) i11;
                    if (c10 == 1) {
                        iP3 = g.p(i11, parcel);
                    } else if (c10 == 2) {
                        iP4 = g.p(i11, parcel);
                    } else if (c10 == 3) {
                        pendingIntent = (PendingIntent) g.f(parcel, i11, PendingIntent.CREATOR);
                    } else if (c10 != 4) {
                        g.s(i11, parcel);
                    } else {
                        strG10 = g.g(i11, parcel);
                    }
                }
                g.i(iU4, parcel);
                return new ConnectionResult(iP3, iP4, pendingIntent, strG10);
            case 4:
                int iU5 = g.u(parcel);
                long jQ2 = -1;
                int iP5 = 0;
                String strG11 = null;
                while (parcel.dataPosition() < iU5) {
                    int i12 = parcel.readInt();
                    char c11 = (char) i12;
                    if (c11 == 1) {
                        strG11 = g.g(i12, parcel);
                    } else if (c11 == 2) {
                        iP5 = g.p(i12, parcel);
                    } else if (c11 != 3) {
                        g.s(i12, parcel);
                    } else {
                        jQ2 = g.q(i12, parcel);
                    }
                }
                g.i(iU5, parcel);
                return new v3.c(strG11, jQ2, iP5);
            case 5:
                int iU6 = g.u(parcel);
                boolean zN = false;
                int iP6 = 0;
                String strG12 = null;
                int iP7 = 0;
                while (parcel.dataPosition() < iU6) {
                    int i13 = parcel.readInt();
                    char c12 = (char) i13;
                    if (c12 == 1) {
                        zN = g.n(i13, parcel);
                    } else if (c12 == 2) {
                        strG12 = g.g(i13, parcel);
                    } else if (c12 == 3) {
                        iP7 = g.p(i13, parcel);
                    } else if (c12 != 4) {
                        g.s(i13, parcel);
                    } else {
                        iP6 = g.p(i13, parcel);
                    }
                }
                g.i(iU6, parcel);
                return new p(iP7, iP6, strG12, zN);
            case 6:
                int iU7 = g.u(parcel);
                String strG13 = null;
                int iP8 = 0;
                while (parcel.dataPosition() < iU7) {
                    int i14 = parcel.readInt();
                    char c13 = (char) i14;
                    if (c13 == 1) {
                        iP8 = g.p(i14, parcel);
                    } else if (c13 != 2) {
                        g.s(i14, parcel);
                    } else {
                        strG13 = g.g(i14, parcel);
                    }
                }
                g.i(iU7, parcel);
                return new Scope(iP8, strG13);
            case 7:
                int iU8 = g.u(parcel);
                String strG14 = null;
                ConnectionResult connectionResult2 = null;
                int iP9 = 0;
                PendingIntent pendingIntent2 = null;
                while (parcel.dataPosition() < iU8) {
                    int i15 = parcel.readInt();
                    char c14 = (char) i15;
                    if (c14 == 1) {
                        iP9 = g.p(i15, parcel);
                    } else if (c14 == 2) {
                        strG14 = g.g(i15, parcel);
                    } else if (c14 == 3) {
                        pendingIntent2 = (PendingIntent) g.f(parcel, i15, PendingIntent.CREATOR);
                    } else if (c14 != 4) {
                        g.s(i15, parcel);
                    } else {
                        connectionResult2 = (ConnectionResult) g.f(parcel, i15, ConnectionResult.CREATOR);
                    }
                }
                g.i(iU8, parcel);
                return new Status(iP9, strG14, pendingIntent2, connectionResult2);
            case WakeMessage.ACTIVITY /* 8 */:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new x1.a(parcel);
            case 9:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new x1.g(parcel);
            case 10:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new h(parcel);
            case 11:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new i(parcel);
            case 12:
                d7.g.f("parcel", parcel);
                return new o(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null, null, false);
            case 13:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new y(parcel);
            case 14:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new f0(parcel);
            case 15:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new y2.a(parcel);
            case 16:
                d7.g.f("parcel", parcel);
                y2.e eVar = new y2.e();
                eVar.f6170a = parcel.readString();
                eVar.f6171b = parcel.readString();
                eVar.f6172c = parcel.readString();
                eVar.f6173d = parcel.readLong();
                eVar.f6174e = parcel.readLong();
                return eVar;
            case 17:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new y2.h(parcel);
            case 18:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new j(parcel);
            case 19:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new k(parcel);
            case 20:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new l(parcel);
            case 21:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                y2.o oVar = new y2.o();
                oVar.f6225b = -1;
                Parcelable[] parcelableArray = parcel.readParcelableArray(t.class.getClassLoader());
                if (parcelableArray == null) {
                    parcelableArray = new Parcelable[0];
                }
                ArrayList arrayList3 = new ArrayList();
                int length = parcelableArray.length;
                int i16 = 0;
                while (true) {
                    if (i16 >= length) {
                        oVar.f6224a = (t[]) arrayList3.toArray(new t[0]);
                        oVar.f6225b = parcel.readInt();
                        oVar.f6230g = (m) parcel.readParcelable(m.class.getClassLoader());
                        HashMap mapI = g0.I(parcel);
                        oVar.h = mapI != null ? r.y(mapI) : null;
                        HashMap mapI2 = g0.I(parcel);
                        oVar.f6231i = mapI2 != null ? r.y(mapI2) : null;
                        return oVar;
                    }
                    Parcelable parcelable = parcelableArray[i16];
                    t tVar = parcelable instanceof t ? (t) parcelable : null;
                    if (tVar != null) {
                        tVar.f6246b = oVar;
                    }
                    if (tVar != null) {
                        arrayList3.add(tVar);
                    }
                    i16++;
                }
                break;
            case 22:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new m(parcel);
            case 23:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new n(parcel);
            default:
                d7.g.f(FirebaseAnalytics.Param.SOURCE, parcel);
                return new v(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f4337a) {
            case 0:
                return new d[i6];
            case 1:
                return new f[i6];
            case 2:
                return new GoogleSignInAccount[i6];
            case 3:
                return new ConnectionResult[i6];
            case 4:
                return new v3.c[i6];
            case 5:
                return new p[i6];
            case 6:
                return new Scope[i6];
            case 7:
                return new Status[i6];
            case WakeMessage.ACTIVITY /* 8 */:
                return new x1.a[i6];
            case 9:
                return new x1.g[i6];
            case 10:
                return new h[i6];
            case 11:
                return new i[i6];
            case 12:
                return new o[i6];
            case 13:
                return new y[i6];
            case 14:
                return new f0[i6];
            case 15:
                return new y2.a[i6];
            case 16:
                return new y2.e[i6];
            case 17:
                return new y2.h[i6];
            case 18:
                return new j[i6];
            case 19:
                return new k[i6];
            case 20:
                return new l[i6];
            case 21:
                return new y2.o[i6];
            case 22:
                return new m[i6];
            case 23:
                return new n[i6];
            default:
                return new v[i6];
        }
    }
}
