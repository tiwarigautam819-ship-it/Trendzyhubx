package k;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import l.q;
import m.g1;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f3466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class[] f3467f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f3468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f3469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f3470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3471d;

    static {
        Class[] clsArr = {Context.class};
        f3466e = clsArr;
        f3467f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f3470c = context;
        Object[] objArr = {context};
        this.f3468a = objArr;
        this.f3469b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i6;
        XmlPullParser xmlPullParser2;
        ColorStateList colorStateList;
        int resourceId;
        h hVar = new h(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i6 = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z5 = false;
        boolean z8 = false;
        String str = null;
        while (!z5) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != i6) {
                if (eventType != 3) {
                    xmlPullParser2 = xmlPullParser;
                    z5 = z5;
                } else {
                    String name2 = xmlPullParser.getName();
                    if (z8 && name2.equals(str)) {
                        xmlPullParser2 = xmlPullParser;
                        z8 = false;
                        str = null;
                    } else {
                        if (name2.equals("group")) {
                            hVar.f3442b = 0;
                            hVar.f3443c = 0;
                            hVar.f3444d = 0;
                            hVar.f3445e = 0;
                            hVar.f3446f = true;
                            hVar.f3447g = true;
                        } else if (name2.equals("item")) {
                            if (!hVar.h) {
                                q qVar = hVar.f3465z;
                                if (qVar == null || !qVar.f3722b.hasSubMenu()) {
                                    hVar.h = true;
                                    hVar.b(hVar.f3441a.add(hVar.f3442b, hVar.f3448i, hVar.f3449j, hVar.f3450k));
                                } else {
                                    hVar.h = true;
                                    hVar.b(hVar.f3441a.addSubMenu(hVar.f3442b, hVar.f3448i, hVar.f3449j, hVar.f3450k).getItem());
                                }
                            }
                        } else if (name2.equals("menu")) {
                            xmlPullParser2 = xmlPullParser;
                            z5 = true;
                        }
                        xmlPullParser2 = xmlPullParser;
                        z5 = z5;
                    }
                }
                eventType = xmlPullParser2.next();
                i6 = 2;
                z5 = z5;
                z8 = z8;
            } else {
                if (!z8) {
                    String name3 = xmlPullParser.getName();
                    boolean zEquals = name3.equals("group");
                    Context context = this.f3470c;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.a.f2506p);
                        hVar.f3442b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                        hVar.f3443c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        hVar.f3444d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        hVar.f3445e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        hVar.f3446f = typedArrayObtainStyledAttributes.getBoolean(2, true);
                        hVar.f3447g = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                    } else {
                        if (name3.equals("item")) {
                            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f.a.f2507q);
                            hVar.f3448i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                            hVar.f3449j = (typedArrayObtainStyledAttributes2.getInt(5, hVar.f3443c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, hVar.f3444d) & 65535);
                            hVar.f3450k = typedArrayObtainStyledAttributes2.getText(7);
                            hVar.f3451l = typedArrayObtainStyledAttributes2.getText(8);
                            hVar.f3452m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                            String string = typedArrayObtainStyledAttributes2.getString(9);
                            hVar.f3453n = string == null ? (char) 0 : string.charAt(0);
                            hVar.f3454o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                            String string2 = typedArrayObtainStyledAttributes2.getString(10);
                            hVar.f3455p = string2 == null ? (char) 0 : string2.charAt(0);
                            hVar.f3456q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                            if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                                hVar.f3457r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                            } else {
                                hVar.f3457r = hVar.f3445e;
                            }
                            hVar.f3458s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                            hVar.f3459t = typedArrayObtainStyledAttributes2.getBoolean(4, hVar.f3446f);
                            hVar.f3460u = typedArrayObtainStyledAttributes2.getBoolean(1, hVar.f3447g);
                            hVar.f3461v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                            hVar.f3464y = typedArrayObtainStyledAttributes2.getString(12);
                            hVar.f3462w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                            hVar.f3463x = typedArrayObtainStyledAttributes2.getString(15);
                            String string3 = typedArrayObtainStyledAttributes2.getString(14);
                            boolean z9 = string3 != null;
                            if (z9 && hVar.f3462w == 0 && hVar.f3463x == null) {
                                hVar.f3465z = (q) hVar.a(string3, f3467f, this.f3469b);
                            } else {
                                if (z9) {
                                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                }
                                hVar.f3465z = null;
                            }
                            hVar.A = typedArrayObtainStyledAttributes2.getText(17);
                            hVar.B = typedArrayObtainStyledAttributes2.getText(22);
                            if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                                hVar.D = g1.b(typedArrayObtainStyledAttributes2.getInt(19, -1), hVar.D);
                            } else {
                                hVar.D = null;
                            }
                            if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                                if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = z7.l.i(context, resourceId)) == null) {
                                    colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                                }
                                hVar.C = colorStateList;
                            } else {
                                hVar.C = null;
                            }
                            typedArrayObtainStyledAttributes2.recycle();
                            hVar.h = false;
                            xmlPullParser2 = xmlPullParser;
                        } else if (name3.equals("menu")) {
                            hVar.h = true;
                            SubMenu subMenuAddSubMenu = hVar.f3441a.addSubMenu(hVar.f3442b, hVar.f3448i, hVar.f3449j, hVar.f3450k);
                            hVar.b(subMenuAddSubMenu.getItem());
                            xmlPullParser2 = xmlPullParser;
                            b(xmlPullParser2, attributeSet, subMenuAddSubMenu);
                        } else {
                            xmlPullParser2 = xmlPullParser;
                            str = name3;
                            z8 = true;
                        }
                        eventType = xmlPullParser2.next();
                        i6 = 2;
                        z5 = z5;
                        z8 = z8;
                    }
                }
                xmlPullParser2 = xmlPullParser;
                z5 = z5;
            }
            eventType = xmlPullParser2.next();
            i6 = 2;
            z5 = z5;
            z8 = z8;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i6, Menu menu) {
        if (!(menu instanceof l.n)) {
            super.inflate(i6, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z5 = false;
        try {
            try {
                layout = this.f3470c.getResources().getLayout(i6);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof l.n) {
                    l.n nVar = (l.n) menu;
                    if (!nVar.f3684p) {
                        nVar.w();
                        z5 = true;
                    }
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z5) {
                    ((l.n) menu).v();
                }
                layout.close();
            } catch (IOException e9) {
                throw new InflateException("Error inflating menu XML", e9);
            } catch (XmlPullParserException e10) {
                throw new InflateException("Error inflating menu XML", e10);
            }
        } catch (Throwable th) {
            if (z5) {
                ((l.n) menu).v();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
