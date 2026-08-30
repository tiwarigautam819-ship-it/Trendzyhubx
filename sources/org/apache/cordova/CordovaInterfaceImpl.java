package org.apache.cordova;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CordovaInterfaceImpl implements m {
    private static final String TAG = "CordovaInterfaceImpl";
    protected g.m activity;
    protected o activityResultCallback;
    protected int activityResultRequestCode;
    protected boolean activityWasDestroyed;
    protected String initCallbackService;
    protected e permissionResultCallbacks;
    protected l0 pluginManager;
    protected Bundle savedPluginState;
    protected n savedResult;
    protected ExecutorService threadPool;

    public CordovaInterfaceImpl(g.m mVar) {
        this(mVar, Executors.newCachedThreadPool());
    }

    @Override // org.apache.cordova.m
    public g.m getActivity() {
        return this.activity;
    }

    public Context getContext() {
        return this.activity;
    }

    @Override // org.apache.cordova.m
    public ExecutorService getThreadPool() {
        return this.threadPool;
    }

    public boolean hasPermission(String str) {
        return this.activity.checkSelfPermission(str) == 0;
    }

    public boolean onActivityResult(int i6, int i9, Intent intent) {
        String str;
        o oVarC = this.activityResultCallback;
        if (oVarC == null && (str = this.initCallbackService) != null) {
            n nVar = new n();
            nVar.f4554a = i6;
            nVar.f4555b = i9;
            nVar.f4556c = intent;
            this.savedResult = nVar;
            l0 l0Var = this.pluginManager;
            if (l0Var != null && (oVarC = l0Var.c(str)) != null) {
                oVarC.onRestoreStateForActivityResult(this.savedPluginState.getBundle(oVarC.getServiceName()), new ResumeCallback(oVarC.getServiceName(), this.pluginManager));
            }
        }
        this.activityResultCallback = null;
        if (oVarC == null) {
            return false;
        }
        this.initCallbackService = null;
        this.savedResult = null;
        oVarC.onActivityResult(i6, i9, intent);
        return true;
    }

    public void onCordovaInit(l0 l0Var) {
        CoreAndroid coreAndroid;
        this.pluginManager = l0Var;
        n nVar = this.savedResult;
        if (nVar != null) {
            onActivityResult(nVar.f4554a, nVar.f4555b, nVar.f4556c);
            return;
        }
        if (this.activityWasDestroyed) {
            this.activityWasDestroyed = false;
            if (l0Var == null || (coreAndroid = (CoreAndroid) l0Var.c(CoreAndroid.PLUGIN_NAME)) == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("action", "resume");
            } catch (JSONException e9) {
                Log.e(TAG, "Failed to create event message", e9);
            }
            coreAndroid.sendResumeEvent(new m0(jSONObject, 2));
        }
    }

    @Override // org.apache.cordova.m
    public Object onMessage(String str, Object obj) {
        if (!"exit".equals(str)) {
            return null;
        }
        this.activity.finish();
        return null;
    }

    public void onRequestPermissionResult(int i6, String[] strArr, int[] iArr) {
        Pair pairA = this.permissionResultCallbacks.a(i6);
        if (pairA != null) {
            ((o) pairA.first).onRequestPermissionResult(((Integer) pairA.second).intValue(), strArr, iArr);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundleOnSaveInstanceState;
        o oVar = this.activityResultCallback;
        if (oVar != null) {
            bundle.putString("callbackService", oVar.getServiceName());
        }
        l0 l0Var = this.pluginManager;
        if (l0Var != null) {
            l0Var.getClass();
            Bundle bundle2 = new Bundle();
            synchronized (l0Var.f4542a) {
                try {
                    for (o oVar2 : l0Var.f4542a.values()) {
                        if (oVar2 != null && (bundleOnSaveInstanceState = oVar2.onSaveInstanceState()) != null) {
                            bundle2.putBundle(oVar2.getServiceName(), bundleOnSaveInstanceState);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            bundle.putBundle("plugin", bundle2);
        }
    }

    public void requestPermission(o oVar, int i6, String str) {
        requestPermissions(oVar, i6, new String[]{str});
    }

    public void requestPermissions(o oVar, int i6, String[] strArr) {
        int i9;
        e eVar = this.permissionResultCallbacks;
        synchronized (eVar) {
            i9 = eVar.f4499a;
            eVar.f4499a = i9 + 1;
            eVar.f4500b.put(i9, new Pair(oVar, Integer.valueOf(i6)));
        }
        getActivity().requestPermissions(strArr, i9);
    }

    public void restoreInstanceState(Bundle bundle) {
        this.initCallbackService = bundle.getString("callbackService");
        this.savedPluginState = bundle.getBundle("plugin");
        this.activityWasDestroyed = true;
    }

    public void setActivityResultCallback(o oVar) {
        o oVar2 = this.activityResultCallback;
        if (oVar2 != null) {
            oVar2.onActivityResult(this.activityResultRequestCode, 0, null);
        }
        this.activityResultCallback = oVar;
    }

    public void setActivityResultRequestCode(int i6) {
        this.activityResultRequestCode = i6;
    }

    @Override // org.apache.cordova.m
    public void startActivityForResult(o oVar, Intent intent, int i6) {
        setActivityResultCallback(oVar);
        try {
            this.activity.startActivityForResult(intent, i6);
        } catch (RuntimeException e9) {
            this.activityResultCallback = null;
            throw e9;
        }
    }

    public CordovaInterfaceImpl(g.m mVar, ExecutorService executorService) {
        this.activityWasDestroyed = false;
        this.activity = mVar;
        this.threadPool = executorService;
        e eVar = new e();
        eVar.f4499a = 0;
        eVar.f4500b = new SparseArray();
        this.permissionResultCallbacks = eVar;
    }
}
