package com.getcapacitor.cordova;

import android.util.Pair;
import g.m;
import java.util.concurrent.Executors;
import org.apache.cordova.CordovaInterfaceImpl;
import org.apache.cordova.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MockCordovaInterfaceImpl extends CordovaInterfaceImpl {
    public MockCordovaInterfaceImpl(m mVar) {
        super(mVar, Executors.newCachedThreadPool());
    }

    public o getActivityResultCallback() {
        return this.activityResultCallback;
    }

    public boolean handlePermissionResult(int i6, String[] strArr, int[] iArr) {
        Pair pairA = this.permissionResultCallbacks.a(i6);
        if (pairA == null) {
            return false;
        }
        ((o) pairA.first).onRequestPermissionResult(((Integer) pairA.second).intValue(), strArr, iArr);
        return true;
    }
}
