package a;

import a.c;
import android.accounts.Account;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaBrowserCompat$MediaItem;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.fragment.app.a1;
import androidx.fragment.app.e1;
import androidx.fragment.app.u0;
import androidx.versionedparcelable.ParcelImpl;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.j0;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.internal.v;
import com.google.android.gms.common.internal.w;
import j7.g;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2a;

    public /* synthetic */ c(int i6) {
        this.f2a = i6;
    }

    public static void a(i iVar, Parcel parcel, int i6) {
        int iP = z7.d.p(20293, parcel);
        int i9 = iVar.f1426a;
        z7.d.r(parcel, 1, 4);
        parcel.writeInt(i9);
        int i10 = iVar.f1427b;
        z7.d.r(parcel, 2, 4);
        parcel.writeInt(i10);
        int i11 = iVar.f1428c;
        z7.d.r(parcel, 3, 4);
        parcel.writeInt(i11);
        z7.d.m(parcel, 4, iVar.f1429d);
        z7.d.k(parcel, 5, iVar.f1430e);
        z7.d.n(parcel, 6, iVar.f1431f, i6);
        z7.d.j(parcel, 7, iVar.f1432g);
        z7.d.l(parcel, 8, iVar.h, i6);
        z7.d.n(parcel, 10, iVar.f1433i, i6);
        z7.d.n(parcel, 11, iVar.f1434j, i6);
        boolean z5 = iVar.f1435k;
        z7.d.r(parcel, 12, 4);
        parcel.writeInt(z5 ? 1 : 0);
        int i12 = iVar.f1436l;
        z7.d.r(parcel, 13, 4);
        parcel.writeInt(i12);
        boolean z8 = iVar.f1437m;
        z7.d.r(parcel, 14, 4);
        parcel.writeInt(z8 ? 1 : 0);
        z7.d.m(parcel, 15, iVar.f1438v);
        z7.d.q(iP, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(final Parcel parcel) {
        Uri mediaUri;
        Bundle bundle;
        int iP = 0;
        b bVar = null;
        Intent intent = null;
        Bundle bundleE = null;
        Bundle bundleE2 = null;
        Account account = null;
        switch (this.f2a) {
            case 0:
                e eVar = new e();
                IBinder strongBinder = parcel.readStrongBinder();
                int i6 = d.f3c;
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(b.f1a);
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) {
                        a aVar = new a();
                        aVar.f0b = strongBinder;
                        bVar = aVar;
                    } else {
                        bVar = (b) iInterfaceQueryLocalInterface;
                    }
                }
                eVar.f5a = bVar;
                return eVar;
            case 1:
                return new Parcelable(parcel) { // from class: android.support.v4.media.MediaBrowserCompat$MediaItem
                    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new c(1);

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final int f118a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final MediaDescriptionCompat f119b;

                    {
                        this.f118a = parcel.readInt();
                        this.f119b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final String toString() {
                        return "MediaItem{mFlags=" + this.f118a + ", mDescription=" + this.f119b + '}';
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i9) {
                        parcel2.writeInt(this.f118a);
                        this.f119b.writeToParcel(parcel2, i9);
                    }
                };
            case 2:
                Object objCreateFromParcel = MediaDescription.CREATOR.createFromParcel(parcel);
                if (objCreateFromParcel == null) {
                    return null;
                }
                MediaDescription mediaDescription = (MediaDescription) objCreateFromParcel;
                String mediaId = mediaDescription.getMediaId();
                CharSequence title = mediaDescription.getTitle();
                CharSequence subtitle = mediaDescription.getSubtitle();
                CharSequence description = mediaDescription.getDescription();
                Bitmap iconBitmap = mediaDescription.getIconBitmap();
                Uri iconUri = mediaDescription.getIconUri();
                Bundle extras = mediaDescription.getExtras();
                if (extras != null) {
                    extras.setClassLoader(android.support.v4.media.session.a.class.getClassLoader());
                    mediaUri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
                } else {
                    mediaUri = null;
                }
                if (mediaUri == null) {
                    bundle = extras;
                } else if (extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && extras.size() == 2) {
                    bundle = null;
                } else {
                    extras.remove("android.support.v4.media.description.MEDIA_URI");
                    extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    bundle = extras;
                }
                if (mediaUri == null) {
                    mediaUri = mediaDescription.getMediaUri();
                }
                MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(mediaId, title, subtitle, description, iconBitmap, iconUri, bundle, mediaUri);
                mediaDescriptionCompat.f127i = objCreateFromParcel;
                return mediaDescriptionCompat;
            case 3:
                return new MediaMetadataCompat(parcel);
            case 4:
                return new RatingCompat(parcel.readInt(), parcel.readFloat());
            case 5:
                return new Parcelable(parcel) { // from class: android.support.v4.media.session.MediaSessionCompat$QueueItem
                    public static final Parcelable.Creator<MediaSessionCompat$QueueItem> CREATOR = new c(5);

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final MediaDescriptionCompat f131a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final long f132b;

                    {
                        this.f131a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        this.f132b = parcel.readLong();
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final String toString() {
                        return "MediaSession.QueueItem {Description=" + this.f131a + ", Id=" + this.f132b + " }";
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i9) {
                        this.f131a.writeToParcel(parcel2, i9);
                        parcel2.writeLong(this.f132b);
                    }
                };
            case 6:
                MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper = new MediaSessionCompat$ResultReceiverWrapper();
                mediaSessionCompat$ResultReceiverWrapper.f133a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
                return mediaSessionCompat$ResultReceiverWrapper;
            case 7:
                final Parcelable parcelable = parcel.readParcelable(null);
                return new Parcelable(parcelable) { // from class: android.support.v4.media.session.MediaSessionCompat$Token
                    public static final Parcelable.Creator<MediaSessionCompat$Token> CREATOR = new c(7);

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Object f134a;

                    {
                        this.f134a = parcelable;
                    }

                    @Override // android.os.Parcelable
                    public final int describeContents() {
                        return 0;
                    }

                    public final boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof MediaSessionCompat$Token)) {
                            return false;
                        }
                        Object obj2 = ((MediaSessionCompat$Token) obj).f134a;
                        Object obj3 = this.f134a;
                        if (obj3 == null) {
                            return obj2 == null;
                        }
                        if (obj2 == null) {
                            return false;
                        }
                        return obj3.equals(obj2);
                    }

                    public final int hashCode() {
                        Object obj = this.f134a;
                        if (obj == null) {
                            return 0;
                        }
                        return obj.hashCode();
                    }

                    @Override // android.os.Parcelable
                    public final void writeToParcel(Parcel parcel2, int i9) {
                        parcel2.writeParcelable((Parcelable) this.f134a, i9);
                    }
                };
            case WakeMessage.ACTIVITY /* 8 */:
                ParcelableVolumeInfo parcelableVolumeInfo = new ParcelableVolumeInfo();
                parcelableVolumeInfo.f135a = parcel.readInt();
                parcelableVolumeInfo.f137c = parcel.readInt();
                parcelableVolumeInfo.f138d = parcel.readInt();
                parcelableVolumeInfo.f139e = parcel.readInt();
                parcelableVolumeInfo.f136b = parcel.readInt();
                return parcelableVolumeInfo;
            case 9:
                return new PlaybackStateCompat(parcel);
            case 10:
                return new androidx.fragment.app.b(parcel);
            case 11:
                return new androidx.fragment.app.c(parcel);
            case 12:
                u0 u0Var = new u0();
                u0Var.f627a = parcel.readString();
                u0Var.f628b = parcel.readInt();
                return u0Var;
            case 13:
                a1 a1Var = new a1();
                a1Var.f440e = null;
                a1Var.f441f = new ArrayList();
                a1Var.f442g = new ArrayList();
                a1Var.f436a = parcel.createStringArrayList();
                a1Var.f437b = parcel.createStringArrayList();
                a1Var.f438c = (androidx.fragment.app.b[]) parcel.createTypedArray(androidx.fragment.app.b.CREATOR);
                a1Var.f439d = parcel.readInt();
                a1Var.f440e = parcel.readString();
                a1Var.f441f = parcel.createStringArrayList();
                a1Var.f442g = parcel.createTypedArrayList(androidx.fragment.app.c.CREATOR);
                a1Var.h = parcel.createTypedArrayList(u0.CREATOR);
                return a1Var;
            case 14:
                return new e1(parcel);
            case 15:
                int iU = g.u(parcel);
                while (true) {
                    ArrayList arrayListCreateTypedArrayList = null;
                    while (parcel.dataPosition() < iU) {
                        int i9 = parcel.readInt();
                        char c8 = (char) i9;
                        if (c8 == 1) {
                            iP = g.p(i9, parcel);
                        } else if (c8 != 2) {
                            g.s(i9, parcel);
                        } else {
                            Parcelable.Creator<n> creator = n.CREATOR;
                            int iR = g.r(i9, parcel);
                            int iDataPosition = parcel.dataPosition();
                            if (iR == 0) {
                            }
                            arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
                            parcel.setDataPosition(iDataPosition + iR);
                        }
                        break;
                    }
                    g.i(iU, parcel);
                    return new q(arrayListCreateTypedArrayList, iP);
                }
                break;
            case 16:
                int iU2 = g.u(parcel);
                int iP2 = -1;
                long jQ = 0;
                long jQ2 = 0;
                int iP3 = 0;
                int iP4 = 0;
                int iP5 = 0;
                int iP6 = 0;
                String strG = null;
                String strG2 = null;
                while (parcel.dataPosition() < iU2) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            iP3 = g.p(i10, parcel);
                            break;
                        case 2:
                            iP4 = g.p(i10, parcel);
                            break;
                        case 3:
                            iP5 = g.p(i10, parcel);
                            break;
                        case 4:
                            jQ = g.q(i10, parcel);
                            break;
                        case 5:
                            jQ2 = g.q(i10, parcel);
                            break;
                        case 6:
                            strG = g.g(i10, parcel);
                            break;
                        case 7:
                            strG2 = g.g(i10, parcel);
                            break;
                        case WakeMessage.ACTIVITY /* 8 */:
                            iP6 = g.p(i10, parcel);
                            break;
                        case '\t':
                            iP2 = g.p(i10, parcel);
                            break;
                        default:
                            g.s(i10, parcel);
                            break;
                    }
                }
                g.i(iU2, parcel);
                return new n(iP3, iP4, iP5, jQ, jQ2, strG, strG2, iP6, iP2);
            case 17:
                int iU3 = g.u(parcel);
                int iP7 = 0;
                GoogleSignInAccount googleSignInAccount = null;
                while (parcel.dataPosition() < iU3) {
                    int i11 = parcel.readInt();
                    char c9 = (char) i11;
                    if (c9 == 1) {
                        iP = g.p(i11, parcel);
                    } else if (c9 == 2) {
                        account = (Account) g.f(parcel, i11, Account.CREATOR);
                    } else if (c9 == 3) {
                        iP7 = g.p(i11, parcel);
                    } else if (c9 != 4) {
                        g.s(i11, parcel);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) g.f(parcel, i11, GoogleSignInAccount.CREATOR);
                    }
                }
                g.i(iU3, parcel);
                return new v(iP, account, iP7, googleSignInAccount);
            case 18:
                int iU4 = g.u(parcel);
                int iP8 = 0;
                boolean zN = false;
                boolean zN2 = false;
                IBinder iBinderO = null;
                ConnectionResult connectionResult = null;
                while (parcel.dataPosition() < iU4) {
                    int i12 = parcel.readInt();
                    char c10 = (char) i12;
                    if (c10 == 1) {
                        iP8 = g.p(i12, parcel);
                    } else if (c10 == 2) {
                        iBinderO = g.o(i12, parcel);
                    } else if (c10 == 3) {
                        connectionResult = (ConnectionResult) g.f(parcel, i12, ConnectionResult.CREATOR);
                    } else if (c10 == 4) {
                        zN = g.n(i12, parcel);
                    } else if (c10 != 5) {
                        g.s(i12, parcel);
                    } else {
                        zN2 = g.n(i12, parcel);
                    }
                }
                g.i(iU4, parcel);
                return new w(iP8, iBinderO, connectionResult, zN, zN2);
            case 19:
                int iU5 = g.u(parcel);
                int iP9 = 0;
                int iP10 = 0;
                int iP11 = 0;
                boolean zN3 = false;
                boolean zN4 = false;
                while (parcel.dataPosition() < iU5) {
                    int i13 = parcel.readInt();
                    char c11 = (char) i13;
                    if (c11 == 1) {
                        iP9 = g.p(i13, parcel);
                    } else if (c11 == 2) {
                        zN3 = g.n(i13, parcel);
                    } else if (c11 == 3) {
                        zN4 = g.n(i13, parcel);
                    } else if (c11 == 4) {
                        iP10 = g.p(i13, parcel);
                    } else if (c11 != 5) {
                        g.s(i13, parcel);
                    } else {
                        iP11 = g.p(i13, parcel);
                    }
                }
                g.i(iU5, parcel);
                return new p(iP9, iP10, iP11, zN3, zN4);
            case 20:
                int iU6 = g.u(parcel);
                v3.c[] cVarArr = null;
                h hVar = null;
                while (parcel.dataPosition() < iU6) {
                    int i14 = parcel.readInt();
                    char c12 = (char) i14;
                    if (c12 == 1) {
                        bundleE2 = g.e(i14, parcel);
                    } else if (c12 == 2) {
                        cVarArr = (v3.c[]) g.h(parcel, i14, v3.c.CREATOR);
                    } else if (c12 == 3) {
                        iP = g.p(i14, parcel);
                    } else if (c12 != 4) {
                        g.s(i14, parcel);
                    } else {
                        hVar = (h) g.f(parcel, i14, h.CREATOR);
                    }
                }
                g.i(iU6, parcel);
                j0 j0Var = new j0();
                j0Var.f1441a = bundleE2;
                j0Var.f1442b = cVarArr;
                j0Var.f1443c = iP;
                j0Var.f1444d = hVar;
                return j0Var;
            case 21:
                int iU7 = g.u(parcel);
                boolean zN5 = false;
                boolean zN6 = false;
                int iP12 = 0;
                p pVar = null;
                int[] iArr = null;
                int[] iArr2 = null;
                while (parcel.dataPosition() < iU7) {
                    int i15 = parcel.readInt();
                    switch ((char) i15) {
                        case 1:
                            pVar = (p) g.f(parcel, i15, p.CREATOR);
                            break;
                        case 2:
                            zN5 = g.n(i15, parcel);
                            break;
                        case 3:
                            zN6 = g.n(i15, parcel);
                            break;
                        case 4:
                            int iR2 = g.r(i15, parcel);
                            int iDataPosition2 = parcel.dataPosition();
                            if (iR2 != 0) {
                                int[] iArrCreateIntArray = parcel.createIntArray();
                                parcel.setDataPosition(iDataPosition2 + iR2);
                                iArr = iArrCreateIntArray;
                            } else {
                                iArr = null;
                            }
                            break;
                        case 5:
                            iP12 = g.p(i15, parcel);
                            break;
                        case 6:
                            int iR3 = g.r(i15, parcel);
                            int iDataPosition3 = parcel.dataPosition();
                            if (iR3 != 0) {
                                int[] iArrCreateIntArray2 = parcel.createIntArray();
                                parcel.setDataPosition(iDataPosition3 + iR3);
                                iArr2 = iArrCreateIntArray2;
                            } else {
                                iArr2 = null;
                            }
                            break;
                        default:
                            g.s(i15, parcel);
                            break;
                    }
                }
                g.i(iU7, parcel);
                return new h(pVar, zN5, zN6, iArr, iP12, iArr2);
            case 22:
                int iU8 = g.u(parcel);
                Bundle bundle2 = new Bundle();
                Scope[] scopeArr = i.f1424w;
                v3.c[] cVarArr2 = i.f1425x;
                v3.c[] cVarArr3 = cVarArr2;
                int iP13 = 0;
                int iP14 = 0;
                int iP15 = 0;
                boolean zN7 = false;
                int iP16 = 0;
                boolean zN8 = false;
                String strG3 = null;
                IBinder iBinderO2 = null;
                Account account2 = null;
                String strG4 = null;
                while (parcel.dataPosition() < iU8) {
                    int i16 = parcel.readInt();
                    switch ((char) i16) {
                        case 1:
                            iP13 = g.p(i16, parcel);
                            break;
                        case 2:
                            iP14 = g.p(i16, parcel);
                            break;
                        case 3:
                            iP15 = g.p(i16, parcel);
                            break;
                        case 4:
                            strG3 = g.g(i16, parcel);
                            break;
                        case 5:
                            iBinderO2 = g.o(i16, parcel);
                            break;
                        case 6:
                            scopeArr = (Scope[]) g.h(parcel, i16, Scope.CREATOR);
                            break;
                        case 7:
                            bundle2 = g.e(i16, parcel);
                            break;
                        case WakeMessage.ACTIVITY /* 8 */:
                            account2 = (Account) g.f(parcel, i16, Account.CREATOR);
                            break;
                        case '\t':
                        default:
                            g.s(i16, parcel);
                            break;
                        case '\n':
                            cVarArr2 = (v3.c[]) g.h(parcel, i16, v3.c.CREATOR);
                            break;
                        case 11:
                            cVarArr3 = (v3.c[]) g.h(parcel, i16, v3.c.CREATOR);
                            break;
                        case '\f':
                            zN7 = g.n(i16, parcel);
                            break;
                        case '\r':
                            iP16 = g.p(i16, parcel);
                            break;
                        case 14:
                            zN8 = g.n(i16, parcel);
                            break;
                        case 15:
                            strG4 = g.g(i16, parcel);
                            break;
                    }
                }
                g.i(iU8, parcel);
                return new i(iP13, iP14, iP15, strG3, iBinderO2, scopeArr, bundle2, account2, cVarArr2, cVarArr3, zN7, iP16, zN8, strG4);
            case 23:
                int iU9 = g.u(parcel);
                while (parcel.dataPosition() < iU9) {
                    int i17 = parcel.readInt();
                    if (((char) i17) != 2) {
                        g.s(i17, parcel);
                    } else {
                        bundleE = g.e(i17, parcel);
                    }
                }
                g.i(iU9, parcel);
                return new com.google.firebase.messaging.w(bundleE);
            case 24:
                d7.g.f("parcel", parcel);
                return new d.a(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
            case 25:
                d7.g.f("inParcel", parcel);
                Parcelable parcelable2 = parcel.readParcelable(IntentSender.class.getClassLoader());
                d7.g.c(parcelable2);
                return new d.i((IntentSender) parcelable2, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 26:
                return new ParcelImpl(parcel);
            case 27:
                m.j0 j0Var2 = new m.j0(parcel);
                j0Var2.f4002a = parcel.readByte() != 0;
                return j0Var2;
            case 28:
                m0.h hVar2 = new m0.h(parcel);
                hVar2.f4203a = parcel.readInt();
                return hVar2;
            default:
                int iU10 = g.u(parcel);
                int iP17 = 0;
                while (parcel.dataPosition() < iU10) {
                    int i18 = parcel.readInt();
                    char c13 = (char) i18;
                    if (c13 == 1) {
                        iP = g.p(i18, parcel);
                    } else if (c13 == 2) {
                        iP17 = g.p(i18, parcel);
                    } else if (c13 != 3) {
                        g.s(i18, parcel);
                    } else {
                        intent = (Intent) g.f(parcel, i18, Intent.CREATOR);
                    }
                }
                g.i(iU10, parcel);
                return new n4.b(iP, iP17, intent);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f2a) {
            case 0:
                return new e[i6];
            case 1:
                return new MediaBrowserCompat$MediaItem[i6];
            case 2:
                return new MediaDescriptionCompat[i6];
            case 3:
                return new MediaMetadataCompat[i6];
            case 4:
                return new RatingCompat[i6];
            case 5:
                return new MediaSessionCompat$QueueItem[i6];
            case 6:
                return new MediaSessionCompat$ResultReceiverWrapper[i6];
            case 7:
                return new MediaSessionCompat$Token[i6];
            case WakeMessage.ACTIVITY /* 8 */:
                return new ParcelableVolumeInfo[i6];
            case 9:
                return new PlaybackStateCompat[i6];
            case 10:
                return new androidx.fragment.app.b[i6];
            case 11:
                return new androidx.fragment.app.c[i6];
            case 12:
                return new u0[i6];
            case 13:
                return new a1[i6];
            case 14:
                return new e1[i6];
            case 15:
                return new q[i6];
            case 16:
                return new n[i6];
            case 17:
                return new v[i6];
            case 18:
                return new w[i6];
            case 19:
                return new p[i6];
            case 20:
                return new j0[i6];
            case 21:
                return new h[i6];
            case 22:
                return new i[i6];
            case 23:
                return new com.google.firebase.messaging.w[i6];
            case 24:
                return new d.a[i6];
            case 25:
                return new d.i[i6];
            case 26:
                return new ParcelImpl[i6];
            case 27:
                return new m.j0[i6];
            case 28:
                return new m0.h[i6];
            default:
                return new n4.b[i6];
        }
    }
}
