package com.getcapacitor;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.getcapacitor.Bridge;
import com.getcapacitor.android.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class BridgeActivity extends g.m {
    protected Bridge bridge;
    protected CapConfig config;
    protected boolean keepRunning = true;
    protected int activityDepth = 0;
    protected List<Class<? extends Plugin>> initialPlugins = new ArrayList();
    protected final Bridge.Builder bridgeBuilder = new Bridge.Builder(this);

    public Bridge getBridge() {
        return this.bridge;
    }

    public void load() {
        Logger.debug("Starting BridgeActivity");
        Bridge bridgeCreate = this.bridgeBuilder.addPlugins(this.initialPlugins).setConfig(this.config).create();
        this.bridge = bridgeCreate;
        this.keepRunning = bridgeCreate.shouldKeepRunning();
        onNewIntent(getIntent());
    }

    @Override // androidx.fragment.app.h0, b.p, android.app.Activity
    public void onActivityResult(int i6, int i9, Intent intent) {
        Bridge bridge = this.bridge;
        if (bridge == null || bridge.onActivityResult(i6, i9, intent)) {
            return;
        }
        super.onActivityResult(i6, i9, intent);
    }

    @Override // g.m, b.p, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) throws IllegalAccessException {
        super.onConfigurationChanged(configuration);
        Bridge bridge = this.bridge;
        if (bridge == null) {
            return;
        }
        bridge.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.h0, b.p, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bridgeBuilder.setInstanceState(bundle);
        getApplication().setTheme(R.style.AppTheme_NoActionBar);
        setTheme(R.style.AppTheme_NoActionBar);
        try {
            setContentView(R.layout.capacitor_bridge_layout_main);
            try {
                this.bridgeBuilder.addPlugins(new PluginManager(getAssets()).loadPluginClasses());
            } catch (PluginLoadException e9) {
                Logger.error("Error loading plugins.", e9);
            }
            load();
        } catch (Exception unused) {
            setContentView(R.layout.no_webview);
        }
    }

    @Override // g.m, androidx.fragment.app.h0, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Bridge bridge = this.bridge;
        if (bridge != null) {
            bridge.onDestroy();
            Logger.debug("App destroyed");
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.bridge.onDetachedFromWindow();
    }

    @Override // b.p, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Bridge bridge = this.bridge;
        if (bridge != null) {
            bridge.onNewIntent(intent);
        }
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onPause() {
        super.onPause();
        Bridge bridge = this.bridge;
        if (bridge != null) {
            bridge.onPause();
            Logger.debug("App paused");
        }
    }

    @Override // androidx.fragment.app.h0, b.p, android.app.Activity
    public void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        Bridge bridge = this.bridge;
        if (bridge == null || bridge.onRequestPermissionsResult(i6, strArr, iArr)) {
            return;
        }
        super.onRequestPermissionsResult(i6, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        this.bridge.onRestart();
        Logger.debug("App restarted");
    }

    @Override // androidx.fragment.app.h0, android.app.Activity
    public void onResume() {
        super.onResume();
        Bridge bridge = this.bridge;
        if (bridge != null) {
            bridge.getApp().fireStatusChange(true);
            this.bridge.onResume();
            Logger.debug("App resumed");
        }
    }

    @Override // b.p, y.h, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.bridge.saveInstanceState(bundle);
    }

    @Override // g.m, androidx.fragment.app.h0, android.app.Activity
    public void onStart() throws IllegalAccessException {
        super.onStart();
        this.activityDepth++;
        Bridge bridge = this.bridge;
        if (bridge != null) {
            bridge.onStart();
            Logger.debug("App started");
        }
    }

    @Override // g.m, androidx.fragment.app.h0, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.bridge != null) {
            int iMax = Math.max(0, this.activityDepth - 1);
            this.activityDepth = iMax;
            if (iMax == 0) {
                this.bridge.getApp().fireStatusChange(false);
            }
            this.bridge.onStop();
            Logger.debug("App stopped");
        }
    }

    public void registerPlugin(Class<? extends Plugin> cls) {
        this.bridgeBuilder.addPlugin(cls);
    }

    public void registerPlugins(List<Class<? extends Plugin>> list) {
        this.bridgeBuilder.addPlugins(list);
    }
}
