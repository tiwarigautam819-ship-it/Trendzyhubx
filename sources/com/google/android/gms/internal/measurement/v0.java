package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.engagelab.privates.core.api.WakeMessage;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v0 extends h0 implements s0 {
    public static s0 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof s0 ? (s0) iInterfaceQueryLocalInterface : new u0(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.h0
    public final boolean zza(int i6, Parcel parcel, Parcel parcel2, int i9) {
        boolean z5;
        w0 y0Var = null;
        w0 y0Var2 = null;
        w0 y0Var3 = null;
        w0 y0Var4 = null;
        x0 z0Var = null;
        x0 z0Var2 = null;
        x0 z0Var3 = null;
        w0 y0Var5 = null;
        w0 y0Var6 = null;
        w0 y0Var7 = null;
        w0 y0Var8 = null;
        w0 y0Var9 = null;
        w0 y0Var10 = null;
        c1 b1Var = null;
        w0 y0Var11 = null;
        w0 y0Var12 = null;
        w0 y0Var13 = null;
        w0 y0Var14 = null;
        w0 y0Var15 = null;
        switch (i6) {
            case 1:
                e4.a aVarD = e4.b.d(parcel.readStrongBinder());
                e1 e1Var = (e1) g0.a(parcel, e1.CREATOR);
                long j3 = parcel.readLong();
                g0.d(parcel);
                initialize(aVarD, e1Var, j3);
                break;
            case 2:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) g0.a(parcel, Bundle.CREATOR);
                boolean z8 = parcel.readInt() != 0;
                boolean z9 = parcel.readInt() != 0;
                long j8 = parcel.readLong();
                g0.d(parcel);
                logEvent(string, string2, bundle, z8, z9, j8);
                break;
            case 3:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                Bundle bundle2 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var = iInterfaceQueryLocalInterface instanceof w0 ? (w0) iInterfaceQueryLocalInterface : new y0(strongBinder);
                }
                w0 w0Var = y0Var;
                long j9 = parcel.readLong();
                g0.d(parcel);
                logEventAndBundle(string3, string4, bundle2, w0Var, j9);
                break;
            case 4:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                e4.a aVarD2 = e4.b.d(parcel.readStrongBinder());
                ClassLoader classLoader = g0.f1648a;
                z5 = parcel.readInt() != 0;
                long j10 = parcel.readLong();
                g0.d(parcel);
                setUserProperty(string5, string6, aVarD2, z5, j10);
                break;
            case 5:
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                ClassLoader classLoader2 = g0.f1648a;
                z5 = parcel.readInt() != 0;
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var15 = iInterfaceQueryLocalInterface2 instanceof w0 ? (w0) iInterfaceQueryLocalInterface2 : new y0(strongBinder2);
                }
                g0.d(parcel);
                getUserProperties(string7, string8, z5, y0Var15);
                break;
            case 6:
                String string9 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var14 = iInterfaceQueryLocalInterface3 instanceof w0 ? (w0) iInterfaceQueryLocalInterface3 : new y0(strongBinder3);
                }
                g0.d(parcel);
                getMaxUserProperties(string9, y0Var14);
                break;
            case 7:
                String string10 = parcel.readString();
                long j11 = parcel.readLong();
                g0.d(parcel);
                setUserId(string10, j11);
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                Bundle bundle3 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                long j12 = parcel.readLong();
                g0.d(parcel);
                setConditionalUserProperty(bundle3, j12);
                break;
            case 9:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                Bundle bundle4 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                g0.d(parcel);
                clearConditionalUserProperty(string11, string12, bundle4);
                break;
            case 10:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var13 = iInterfaceQueryLocalInterface4 instanceof w0 ? (w0) iInterfaceQueryLocalInterface4 : new y0(strongBinder4);
                }
                g0.d(parcel);
                getConditionalUserProperties(string13, string14, y0Var13);
                break;
            case 11:
                ClassLoader classLoader3 = g0.f1648a;
                z5 = parcel.readInt() != 0;
                long j13 = parcel.readLong();
                g0.d(parcel);
                setMeasurementEnabled(z5, j13);
                break;
            case 12:
                long j14 = parcel.readLong();
                g0.d(parcel);
                resetAnalyticsData(j14);
                break;
            case 13:
                long j15 = parcel.readLong();
                g0.d(parcel);
                setMinimumSessionDuration(j15);
                break;
            case 14:
                long j16 = parcel.readLong();
                g0.d(parcel);
                setSessionTimeoutDuration(j16);
                break;
            case 15:
                e4.a aVarD3 = e4.b.d(parcel.readStrongBinder());
                String string15 = parcel.readString();
                String string16 = parcel.readString();
                long j17 = parcel.readLong();
                g0.d(parcel);
                setCurrentScreen(aVarD3, string15, string16, j17);
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var12 = iInterfaceQueryLocalInterface5 instanceof w0 ? (w0) iInterfaceQueryLocalInterface5 : new y0(strongBinder5);
                }
                g0.d(parcel);
                getCurrentScreenName(y0Var12);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var11 = iInterfaceQueryLocalInterface6 instanceof w0 ? (w0) iInterfaceQueryLocalInterface6 : new y0(strongBinder6);
                }
                g0.d(parcel);
                getCurrentScreenClass(y0Var11);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    b1Var = iInterfaceQueryLocalInterface7 instanceof c1 ? (c1) iInterfaceQueryLocalInterface7 : new b1(strongBinder7, "com.google.android.gms.measurement.api.internal.IStringProvider");
                }
                g0.d(parcel);
                setInstanceIdProvider(b1Var);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var10 = iInterfaceQueryLocalInterface8 instanceof w0 ? (w0) iInterfaceQueryLocalInterface8 : new y0(strongBinder8);
                }
                g0.d(parcel);
                getCachedAppInstanceId(y0Var10);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var9 = iInterfaceQueryLocalInterface9 instanceof w0 ? (w0) iInterfaceQueryLocalInterface9 : new y0(strongBinder9);
                }
                g0.d(parcel);
                getAppInstanceId(y0Var9);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var8 = iInterfaceQueryLocalInterface10 instanceof w0 ? (w0) iInterfaceQueryLocalInterface10 : new y0(strongBinder10);
                }
                g0.d(parcel);
                getGmpAppId(y0Var8);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var7 = iInterfaceQueryLocalInterface11 instanceof w0 ? (w0) iInterfaceQueryLocalInterface11 : new y0(strongBinder11);
                }
                g0.d(parcel);
                generateEventId(y0Var7);
                break;
            case 23:
                String string17 = parcel.readString();
                long j18 = parcel.readLong();
                g0.d(parcel);
                beginAdUnitExposure(string17, j18);
                break;
            case 24:
                String string18 = parcel.readString();
                long j19 = parcel.readLong();
                g0.d(parcel);
                endAdUnitExposure(string18, j19);
                break;
            case 25:
                e4.a aVarD4 = e4.b.d(parcel.readStrongBinder());
                long j20 = parcel.readLong();
                g0.d(parcel);
                onActivityStarted(aVarD4, j20);
                break;
            case 26:
                e4.a aVarD5 = e4.b.d(parcel.readStrongBinder());
                long j21 = parcel.readLong();
                g0.d(parcel);
                onActivityStopped(aVarD5, j21);
                break;
            case 27:
                e4.a aVarD6 = e4.b.d(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                long j22 = parcel.readLong();
                g0.d(parcel);
                onActivityCreated(aVarD6, bundle5, j22);
                break;
            case 28:
                e4.a aVarD7 = e4.b.d(parcel.readStrongBinder());
                long j23 = parcel.readLong();
                g0.d(parcel);
                onActivityDestroyed(aVarD7, j23);
                break;
            case 29:
                e4.a aVarD8 = e4.b.d(parcel.readStrongBinder());
                long j24 = parcel.readLong();
                g0.d(parcel);
                onActivityPaused(aVarD8, j24);
                break;
            case 30:
                e4.a aVarD9 = e4.b.d(parcel.readStrongBinder());
                long j25 = parcel.readLong();
                g0.d(parcel);
                onActivityResumed(aVarD9, j25);
                break;
            case 31:
                e4.a aVarD10 = e4.b.d(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var6 = iInterfaceQueryLocalInterface12 instanceof w0 ? (w0) iInterfaceQueryLocalInterface12 : new y0(strongBinder12);
                }
                long j26 = parcel.readLong();
                g0.d(parcel);
                onActivitySaveInstanceState(aVarD10, y0Var6, j26);
                break;
            case 32:
                Bundle bundle6 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var5 = iInterfaceQueryLocalInterface13 instanceof w0 ? (w0) iInterfaceQueryLocalInterface13 : new y0(strongBinder13);
                }
                long j27 = parcel.readLong();
                g0.d(parcel);
                performAction(bundle6, y0Var5, j27);
                break;
            case 33:
                int i10 = parcel.readInt();
                String string19 = parcel.readString();
                e4.a aVarD11 = e4.b.d(parcel.readStrongBinder());
                e4.a aVarD12 = e4.b.d(parcel.readStrongBinder());
                e4.a aVarD13 = e4.b.d(parcel.readStrongBinder());
                g0.d(parcel);
                logHealthData(i10, string19, aVarD11, aVarD12, aVarD13);
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var3 = iInterfaceQueryLocalInterface14 instanceof x0 ? (x0) iInterfaceQueryLocalInterface14 : new z0(strongBinder14);
                }
                g0.d(parcel);
                setEventInterceptor(z0Var3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var2 = iInterfaceQueryLocalInterface15 instanceof x0 ? (x0) iInterfaceQueryLocalInterface15 : new z0(strongBinder15);
                }
                g0.d(parcel);
                registerOnMeasurementEventListener(z0Var2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    z0Var = iInterfaceQueryLocalInterface16 instanceof x0 ? (x0) iInterfaceQueryLocalInterface16 : new z0(strongBinder16);
                }
                g0.d(parcel);
                unregisterOnMeasurementEventListener(z0Var);
                break;
            case 37:
                HashMap hashMap = parcel.readHashMap(g0.f1648a);
                g0.d(parcel);
                initForTests(hashMap);
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var4 = iInterfaceQueryLocalInterface17 instanceof w0 ? (w0) iInterfaceQueryLocalInterface17 : new y0(strongBinder17);
                }
                int i11 = parcel.readInt();
                g0.d(parcel);
                getTestFlag(y0Var4, i11);
                break;
            case 39:
                ClassLoader classLoader4 = g0.f1648a;
                z5 = parcel.readInt() != 0;
                g0.d(parcel);
                setDataCollectionEnabled(z5);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var3 = iInterfaceQueryLocalInterface18 instanceof w0 ? (w0) iInterfaceQueryLocalInterface18 : new y0(strongBinder18);
                }
                g0.d(parcel);
                isDataCollectionEnabled(y0Var3);
                break;
            case 41:
            case 47:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                g0.d(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long j28 = parcel.readLong();
                g0.d(parcel);
                clearMeasurementEnabled(j28);
                break;
            case 44:
                Bundle bundle8 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                long j29 = parcel.readLong();
                g0.d(parcel);
                setConsent(bundle8, j29);
                break;
            case 45:
                Bundle bundle9 = (Bundle) g0.a(parcel, Bundle.CREATOR);
                long j30 = parcel.readLong();
                g0.d(parcel);
                setConsentThirdParty(bundle9, j30);
                break;
            case 46:
                IBinder strongBinder19 = parcel.readStrongBinder();
                if (strongBinder19 != null) {
                    IInterface iInterfaceQueryLocalInterface19 = strongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    y0Var2 = iInterfaceQueryLocalInterface19 instanceof w0 ? (w0) iInterfaceQueryLocalInterface19 : new y0(strongBinder19);
                }
                g0.d(parcel);
                getSessionId(y0Var2);
                break;
            case 48:
                Intent intent = (Intent) g0.a(parcel, Intent.CREATOR);
                g0.d(parcel);
                setSgtmDebugInfo(intent);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
