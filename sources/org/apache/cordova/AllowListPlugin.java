package org.apache.cordova;

import android.content.Context;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AllowListPlugin extends o {
    public static final String PLUGIN_NAME = "CordovaAllowListPlugin";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f4455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f4456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f4457d;

    public AllowListPlugin() {
    }

    public b getAllowedIntents() {
        return this.f4456c;
    }

    public b getAllowedNavigations() {
        return this.f4455b;
    }

    public b getAllowedRequests() {
        return this.f4457d;
    }

    @Override // org.apache.cordova.o
    public void pluginInitialize() {
        if (this.f4455b == null) {
            this.f4455b = new b();
            this.f4456c = new b();
            this.f4457d = new b();
            new c(this).c(this.webView.getContext());
        }
    }

    public void setAllowedIntents(b bVar) {
        this.f4456c = bVar;
    }

    public void setAllowedNavigations(b bVar) {
        this.f4455b = bVar;
    }

    public void setAllowedRequests(b bVar) {
        this.f4457d = bVar;
    }

    @Override // org.apache.cordova.o
    public Boolean shouldAllowNavigation(String str) {
        if (this.f4455b.b(str)) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Override // org.apache.cordova.o
    public Boolean shouldAllowRequest(String str) {
        Boolean bool = Boolean.TRUE;
        if (bool.equals(shouldAllowNavigation(str)) || this.f4457d.b(str)) {
            return bool;
        }
        return null;
    }

    @Override // org.apache.cordova.o
    public Boolean shouldOpenExternalUrl(String str) {
        if (this.f4456c.b(str)) {
            return Boolean.TRUE;
        }
        return null;
    }

    public AllowListPlugin(b bVar, b bVar2, b bVar3) {
        if (bVar3 == null) {
            bVar3 = new b();
            bVar3.a("file:///*");
            bVar3.a("data:*");
        }
        this.f4455b = bVar;
        this.f4456c = bVar2;
        this.f4457d = bVar3;
    }

    public AllowListPlugin(Context context) {
        this(new b(), new b(), null);
        new c(this).c(context);
    }

    public AllowListPlugin(XmlPullParser xmlPullParser) {
        this(new b(), new b(), null);
        new c(this).d(xmlPullParser);
    }
}
