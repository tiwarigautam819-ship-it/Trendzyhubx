package com.getcapacitor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class App {
    private AppRestoredListener appRestoredListener;
    private boolean isActive = false;
    private AppStatusChangeListener statusChangeListener;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface AppRestoredListener {
        void onAppRestored(PluginResult pluginResult);
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface AppStatusChangeListener {
        void onAppStatusChanged(Boolean bool);
    }

    public void fireRestoredResult(PluginResult pluginResult) {
        AppRestoredListener appRestoredListener = this.appRestoredListener;
        if (appRestoredListener != null) {
            appRestoredListener.onAppRestored(pluginResult);
        }
    }

    public void fireStatusChange(boolean z5) {
        this.isActive = z5;
        AppStatusChangeListener appStatusChangeListener = this.statusChangeListener;
        if (appStatusChangeListener != null) {
            appStatusChangeListener.onAppStatusChanged(Boolean.valueOf(z5));
        }
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setAppRestoredListener(AppRestoredListener appRestoredListener) {
        this.appRestoredListener = appRestoredListener;
    }

    public void setStatusChangeListener(AppStatusChangeListener appStatusChangeListener) {
        this.statusChangeListener = appStatusChangeListener;
    }
}
