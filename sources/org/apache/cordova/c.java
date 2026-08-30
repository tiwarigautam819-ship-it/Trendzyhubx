package org.apache.cordova;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends f {
    public final /* synthetic */ AllowListPlugin h;

    public c(AllowListPlugin allowListPlugin) {
        this.h = allowListPlugin;
        new HashMap(20);
    }

    @Override // org.apache.cordova.f
    public final void b(XmlPullParser xmlPullParser) {
        String attributeValue;
        String name = xmlPullParser.getName();
        boolean zEquals = name.equals(FirebaseAnalytics.Param.CONTENT);
        AllowListPlugin allowListPlugin = this.h;
        if (zEquals) {
            allowListPlugin.f4455b.a(xmlPullParser.getAttributeValue(null, "src"));
            return;
        }
        if (name.equals("allow-navigation")) {
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "href");
            if (!"*".equals(attributeValue2)) {
                allowListPlugin.f4455b.a(attributeValue2);
                return;
            }
            allowListPlugin.f4455b.a("http://*/*");
            allowListPlugin.f4455b.a("https://*/*");
            allowListPlugin.f4455b.a("data:*");
            return;
        }
        if (name.equals("allow-intent")) {
            allowListPlugin.f4456c.a(xmlPullParser.getAttributeValue(null, "href"));
            return;
        }
        if (!name.equals("access") || (attributeValue = xmlPullParser.getAttributeValue(null, "origin")) == null) {
            return;
        }
        if ("*".equals(attributeValue)) {
            allowListPlugin.f4457d.a("http://*/*");
            allowListPlugin.f4457d.a("https://*/*");
            return;
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "subdomains");
        b bVar = allowListPlugin.f4457d;
        if (attributeValue3 != null) {
            attributeValue3.compareToIgnoreCase("true");
        }
        bVar.a(attributeValue);
    }

    @Override // org.apache.cordova.f
    public final void a(XmlPullParser xmlPullParser) {
    }
}
