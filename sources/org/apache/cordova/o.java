package org.apache.cordova;

import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileNotFoundException;
import org.json.JSONArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4557a;
    public m cordova;
    public t webView;

    public boolean execute(String str, g gVar, d dVar) {
        return false;
    }

    public p getPathHandler() {
        return null;
    }

    public String getServiceName() {
        return this.f4557a;
    }

    public r handleOpenForRead(Uri uri) throws FileNotFoundException {
        throw new FileNotFoundException("Plugin can't handle uri: " + uri);
    }

    public boolean hasPermisssion() {
        return true;
    }

    public Object onMessage(String str, Object obj) {
        return null;
    }

    public boolean onOverrideUrlLoading(String str) {
        return false;
    }

    public boolean onReceivedClientCertRequest(t tVar, c0 c0Var) {
        return false;
    }

    public boolean onReceivedHttpAuthRequest(t tVar, e0 e0Var, String str, String str2) {
        return false;
    }

    public Bundle onSaveInstanceState() {
        return null;
    }

    public final void privateInitialize(String str, m mVar, t tVar, q qVar) {
        this.f4557a = str;
        this.cordova = mVar;
        this.webView = tVar;
        initialize(mVar, tVar);
        pluginInitialize();
    }

    public Uri remapUri(Uri uri) {
        return null;
    }

    public Boolean shouldAllowBridgeAccess(String str) {
        return shouldAllowNavigation(str);
    }

    public Boolean shouldAllowNavigation(String str) {
        return null;
    }

    public Boolean shouldAllowRequest(String str) {
        return null;
    }

    public Boolean shouldOpenExternalUrl(String str) {
        return null;
    }

    public boolean execute(String str, String str2, d dVar) {
        return execute(str, new JSONArray(str2), dVar);
    }

    public boolean execute(String str, JSONArray jSONArray, d dVar) {
        return execute(str, new g(), dVar);
    }

    public void onDestroy() {
    }

    public void onReset() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void pluginInitialize() {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onNewIntent(Intent intent) {
    }

    public void onPause(boolean z5) {
    }

    public void onResume(boolean z5) {
    }

    public void requestPermissions(int i6) {
    }

    public void initialize(m mVar, t tVar) {
    }

    public void onRestoreStateForActivityResult(Bundle bundle, d dVar) {
    }

    public void onActivityResult(int i6, int i9, Intent intent) {
    }

    @Deprecated
    public void onRequestPermissionResult(int i6, String[] strArr, int[] iArr) {
    }

    public void onRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
    }
}
