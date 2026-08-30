package o1;

import com.capacitorjs.plugins.app.AppPlugin;
import com.getcapacitor.App;
import com.getcapacitor.PluginResult;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements App.AppStatusChangeListener, App.AppRestoredListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppPlugin f4396a;

    public /* synthetic */ a(AppPlugin appPlugin) {
        this.f4396a = appPlugin;
    }

    @Override // com.getcapacitor.App.AppRestoredListener
    public void onAppRestored(PluginResult pluginResult) {
        this.f4396a.lambda$load$1(pluginResult);
    }

    @Override // com.getcapacitor.App.AppStatusChangeListener
    public void onAppStatusChanged(Boolean bool) {
        this.f4396a.lambda$load$0(bool);
    }
}
