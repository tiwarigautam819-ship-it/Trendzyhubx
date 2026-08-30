package org.apache.cordova;

import android.content.Context;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f4513a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4514b = new ArrayList(20);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4515c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4516d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4517e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f4518f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4519g = false;

    public void a(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getName().equals("feature")) {
            this.f4514b.add(new j0(this.f4516d, this.f4517e, this.f4519g));
            this.f4516d = "";
            this.f4517e = "";
            this.f4515c = false;
            this.f4519g = false;
        }
    }

    public void b(XmlPullParser xmlPullParser) {
        String name = xmlPullParser.getName();
        if (name.equals("feature")) {
            this.f4515c = true;
            this.f4516d = xmlPullParser.getAttributeValue(null, "name");
            return;
        }
        if (!this.f4515c || !name.equals("param")) {
            if (!name.equals("preference")) {
                if (name.equals(FirebaseAnalytics.Param.CONTENT)) {
                    xmlPullParser.getAttributeValue(null, "src");
                    return;
                }
                return;
            } else {
                String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                Locale locale = Locale.ENGLISH;
                String lowerCase = attributeValue.toLowerCase(locale);
                this.f4513a.f4558a.put(lowerCase.toLowerCase(locale), xmlPullParser.getAttributeValue(null, "value"));
                return;
            }
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
        this.f4518f = attributeValue2;
        if (attributeValue2.equals("service")) {
            this.f4516d = xmlPullParser.getAttributeValue(null, "value");
            return;
        }
        if (this.f4518f.equals("package") || this.f4518f.equals("android-package")) {
            this.f4517e = xmlPullParser.getAttributeValue(null, "value");
        } else if (this.f4518f.equals("onload")) {
            this.f4519g = "true".equals(xmlPullParser.getAttributeValue(null, "value"));
        }
    }

    public final void c(Context context) {
        int identifier = context.getResources().getIdentifier("config", "xml", context.getClass().getPackage().getName());
        if (identifier == 0 && (identifier = context.getResources().getIdentifier("config", "xml", context.getPackageName())) == 0) {
            Log.e("ConfigXmlParser", "res/xml/config.xml is missing!");
        } else {
            this.f4514b.add(new j0(AllowListPlugin.PLUGIN_NAME, "org.apache.cordova.AllowListPlugin", true));
            d(context.getResources().getXml(identifier));
        }
    }

    public final void d(XmlPullParser xmlPullParser) {
        int next = -1;
        while (next != 1) {
            if (next == 2) {
                b(xmlPullParser);
            } else if (next == 3) {
                a(xmlPullParser);
            }
            try {
                next = xmlPullParser.next();
            } catch (IOException e9) {
                e9.printStackTrace();
            } catch (XmlPullParserException e10) {
                e10.printStackTrace();
            }
        }
    }
}
