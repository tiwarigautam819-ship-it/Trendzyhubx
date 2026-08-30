package k2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.View;
import g.m0;
import j0.d0;
import j0.k0;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;
import java.util.WeakHashMap;
import m.g1;
import m.p;
import m.x2;
import r7.x;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f3548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3549f;

    public n(Long l4, Long l8) {
        UUID uuidRandomUUID = UUID.randomUUID();
        d7.g.e("randomUUID()", uuidRandomUUID);
        this.f3545b = l4;
        this.f3546c = l8;
        this.f3548e = uuidRandomUUID;
    }

    public void a() {
        View view = (View) this.f3545b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((x2) this.f3547d) != null) {
                if (((x2) this.f3549f) == null) {
                    this.f3549f = new x2();
                }
                x2 x2Var = (x2) this.f3549f;
                x2Var.f4173c = null;
                x2Var.f4172b = false;
                x2Var.f4174d = null;
                x2Var.f4171a = false;
                WeakHashMap weakHashMap = k0.f3286a;
                ColorStateList colorStateListC = d0.c(view);
                if (colorStateListC != null) {
                    x2Var.f4172b = true;
                    x2Var.f4173c = colorStateListC;
                }
                PorterDuff.Mode modeD = d0.d(view);
                if (modeD != null) {
                    x2Var.f4171a = true;
                    x2Var.f4174d = modeD;
                }
                if (x2Var.f4172b || x2Var.f4171a) {
                    p.d(background, x2Var, view.getDrawableState());
                    return;
                }
            }
            x2 x2Var2 = (x2) this.f3548e;
            if (x2Var2 != null) {
                p.d(background, x2Var2, view.getDrawableState());
                return;
            }
            x2 x2Var3 = (x2) this.f3547d;
            if (x2Var3 != null) {
                p.d(background, x2Var3, view.getDrawableState());
            }
        }
    }

    public ColorStateList b() {
        x2 x2Var = (x2) this.f3548e;
        if (x2Var != null) {
            return (ColorStateList) x2Var.f4173c;
        }
        return null;
    }

    public PorterDuff.Mode c() {
        x2 x2Var = (x2) this.f3548e;
        if (x2Var != null) {
            return (PorterDuff.Mode) x2Var.f4174d;
        }
        return null;
    }

    public boolean d() {
        return this.f3544a < ((List) this.f3547d).size() || !((ArrayList) this.f3549f).isEmpty();
    }

    public void e(AttributeSet attributeSet, int i6) {
        ColorStateList colorStateListI;
        View view = (View) this.f3545b;
        Context context = view.getContext();
        int[] iArr = f.a.f2516z;
        c5.h hVarQ = c5.h.q(context, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        View view2 = (View) this.f3545b;
        k0.g(view2, view2.getContext(), iArr, attributeSet, (TypedArray) hVarQ.f1061c, i6, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.f3544a = typedArray.getResourceId(0, -1);
                p pVar = (p) this.f3546c;
                Context context2 = view.getContext();
                int i9 = this.f3544a;
                synchronized (pVar) {
                    colorStateListI = pVar.f4061a.i(context2, i9);
                }
                if (colorStateListI != null) {
                    i(colorStateListI);
                }
            }
            if (typedArray.hasValue(1)) {
                d0.f(view, hVarQ.j(1));
            }
            if (typedArray.hasValue(2)) {
                d0.g(view, g1.b(typedArray.getInt(2, -1), null));
            }
            hVarQ.s();
        } catch (Throwable th) {
            hVarQ.s();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r1v26, types: [java.lang.Object, java.util.List] */
    public g.j f() throws UnknownHostException {
        String hostAddress;
        int port;
        List listB;
        boolean zContains;
        if (!d()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (this.f3544a < ((List) this.f3547d).size()) {
            r7.a aVar = (r7.a) this.f3545b;
            if (this.f3544a >= ((List) this.f3547d).size()) {
                throw new SocketException("No route to " + aVar.h.f5083d + "; exhausted proxy configurations: " + ((List) this.f3547d));
            }
            List list = (List) this.f3547d;
            int i6 = this.f3544a;
            this.f3544a = i6 + 1;
            Proxy proxy = (Proxy) list.get(i6);
            ArrayList arrayList2 = new ArrayList();
            this.f3548e = arrayList2;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                r7.m mVar = aVar.h;
                hostAddress = mVar.f5083d;
                port = mVar.f5084e;
            } else {
                SocketAddress socketAddressAddress = proxy.address();
                if (!(socketAddressAddress instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass()).toString());
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                InetAddress address = inetSocketAddress.getAddress();
                if (address == null) {
                    hostAddress = inetSocketAddress.getHostName();
                    d7.g.e("hostName", hostAddress);
                } else {
                    hostAddress = address.getHostAddress();
                    d7.g.e("address.hostAddress", hostAddress);
                }
                port = inetSocketAddress.getPort();
            }
            if (1 > port || port >= 65536) {
                throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList2.add(InetSocketAddress.createUnresolved(hostAddress, port));
            } else {
                byte[] bArr = s7.b.f5287a;
                d7.g.f("<this>", hostAddress);
                k7.f fVar = s7.b.f5292f;
                fVar.getClass();
                if (fVar.f3585a.matcher(hostAddress).matches()) {
                    listB = f4.f.b(InetAddress.getByName(hostAddress));
                } else {
                    aVar.f5001a.getClass();
                    try {
                        InetAddress[] allByName = InetAddress.getAllByName(hostAddress);
                        d7.g.e("getAllByName(hostname)", allByName);
                        List listR = s6.f.r(allByName);
                        if (listR.isEmpty()) {
                            throw new UnknownHostException(aVar.f5001a + " returned no addresses for " + hostAddress);
                        }
                        listB = listR;
                    } catch (NullPointerException e9) {
                        UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(hostAddress));
                        unknownHostException.initCause(e9);
                        throw unknownHostException;
                    }
                }
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new InetSocketAddress((InetAddress) it.next(), port));
                }
            }
            Iterator it2 = this.f3548e.iterator();
            while (it2.hasNext()) {
                x xVar = new x((r7.a) this.f3545b, proxy, (InetSocketAddress) it2.next());
                o5.c cVar = (o5.c) this.f3546c;
                synchronized (cVar) {
                    zContains = ((LinkedHashSet) cVar.f4446b).contains(xVar);
                }
                if (zContains) {
                    ((ArrayList) this.f3549f).add(xVar);
                } else {
                    arrayList.add(xVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            s6.m.o(arrayList, (ArrayList) this.f3549f);
            ((ArrayList) this.f3549f).clear();
        }
        return new g.j(arrayList, 5);
    }

    public void g() {
        this.f3544a = -1;
        i(null);
        a();
    }

    public void h(int i6) {
        ColorStateList colorStateListI;
        this.f3544a = i6;
        p pVar = (p) this.f3546c;
        if (pVar != null) {
            Context context = ((View) this.f3545b).getContext();
            synchronized (pVar) {
                colorStateListI = pVar.f4061a.i(context, i6);
            }
        } else {
            colorStateListI = null;
        }
        i(colorStateListI);
        a();
    }

    public void i(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((x2) this.f3547d) == null) {
                this.f3547d = new x2();
            }
            x2 x2Var = (x2) this.f3547d;
            x2Var.f4173c = colorStateList;
            x2Var.f4172b = true;
        } else {
            this.f3547d = null;
        }
        a();
    }

    public void j(ColorStateList colorStateList) {
        if (((x2) this.f3548e) == null) {
            this.f3548e = new x2();
        }
        x2 x2Var = (x2) this.f3548e;
        x2Var.f4173c = colorStateList;
        x2Var.f4172b = true;
        a();
    }

    public void k(PorterDuff.Mode mode) {
        if (((x2) this.f3548e) == null) {
            this.f3548e = new x2();
        }
        x2 x2Var = (x2) this.f3548e;
        x2Var.f4174d = mode;
        x2Var.f4171a = true;
        a();
    }

    public void l() {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(r.a()).edit();
        Long l4 = (Long) this.f3545b;
        editorEdit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", l4 != null ? l4.longValue() : 0L);
        Long l8 = (Long) this.f3546c;
        editorEdit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", l8 != null ? l8.longValue() : 0L);
        editorEdit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f3544a);
        editorEdit.putString("com.facebook.appevents.SessionInfo.sessionId", ((UUID) this.f3548e).toString());
        editorEdit.apply();
        m0 m0Var = (m0) this.f3549f;
        if (m0Var == null || m0Var == null) {
            return;
        }
        SharedPreferences.Editor editorEdit2 = PreferenceManager.getDefaultSharedPreferences(r.a()).edit();
        editorEdit2.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", (String) m0Var.f2752c);
        editorEdit2.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", m0Var.f2751b);
        editorEdit2.apply();
    }

    public n(r7.a aVar, o5.c cVar, v7.i iVar) {
        List listK;
        d7.g.f("routeDatabase", cVar);
        this.f3545b = aVar;
        this.f3546c = cVar;
        s6.o oVar = s6.o.f5282a;
        this.f3547d = oVar;
        this.f3548e = oVar;
        this.f3549f = new ArrayList();
        r7.m mVar = aVar.h;
        d7.g.f("url", mVar);
        URI uriG = mVar.g();
        if (uriG.getHost() == null) {
            listK = s7.b.k(Proxy.NO_PROXY);
        } else {
            List<Proxy> listSelect = aVar.f5007g.select(uriG);
            List<Proxy> list = listSelect;
            if (list != null && !list.isEmpty()) {
                d7.g.e("proxiesOrNull", listSelect);
                listK = s7.b.w(listSelect);
            } else {
                listK = s7.b.k(Proxy.NO_PROXY);
            }
        }
        this.f3547d = listK;
        this.f3544a = 0;
    }

    public n(View view) {
        this.f3544a = -1;
        this.f3545b = view;
        this.f3546c = p.a();
    }
}
