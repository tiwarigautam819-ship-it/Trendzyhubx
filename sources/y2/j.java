package y2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends t {
    public static final Parcelable.Creator<j> CREATOR = new n4.e(18);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f6195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6196d;

    public j(o oVar) {
        this.f6246b = oVar;
        this.f6196d = "get_token";
    }

    @Override // y2.t
    public final void b() {
        i iVar = this.f6195c;
        if (iVar != null) {
            iVar.f6189d = false;
            iVar.f6188c = null;
            this.f6195c = null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.f6196d;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004c A[Catch: all -> 0x008b, TRY_ENTER, TryCatch #1 {, blocks: (B:8:0x001c, B:13:0x0025, B:25:0x004c, B:28:0x0056, B:19:0x0043, B:16:0x0033), top: B:49:0x001c, inners: #0 }] */
    @Override // y2.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int k(y2.m r8) {
        /*
            r7 = this;
            java.lang.String r0 = "request"
            d7.g.f(r0, r8)
            y2.i r0 = new y2.i
            y2.o r1 = r7.d()
            androidx.fragment.app.h0 r1 = r1.e()
            if (r1 == 0) goto L12
            goto L16
        L12:
            android.content.Context r1 = x1.r.a()
        L16:
            r0.<init>(r1, r8)
            r7.f6195c = r0
            monitor-enter(r0)
            boolean r1 = r0.f6189d     // Catch: java.lang.Throwable -> L8b
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L25
            monitor-exit(r0)
        L23:
            r1 = r2
            goto L5f
        L25:
            int r1 = r0.f6193i     // Catch: java.lang.Throwable -> L8b
            q2.b0 r4 = q2.b0.f4712a     // Catch: java.lang.Throwable -> L8b
            java.lang.Class<q2.b0> r4 = q2.b0.class
            boolean r5 = v2.a.b(r4)     // Catch: java.lang.Throwable -> L8b
            if (r5 == 0) goto L33
        L31:
            r1 = r2
            goto L47
        L33:
            q2.b0 r5 = q2.b0.f4712a     // Catch: java.lang.Throwable -> L42
            java.util.ArrayList r6 = q2.b0.f4713b     // Catch: java.lang.Throwable -> L42
            int[] r1 = new int[]{r1}     // Catch: java.lang.Throwable -> L42
            f4.j r1 = r5.g(r6, r1)     // Catch: java.lang.Throwable -> L42
            int r1 = r1.f2610a     // Catch: java.lang.Throwable -> L42
            goto L47
        L42:
            r1 = move-exception
            v2.a.a(r1, r4)     // Catch: java.lang.Throwable -> L8b
            goto L31
        L47:
            r4 = -1
            if (r1 != r4) goto L4c
            monitor-exit(r0)
            goto L23
        L4c:
            android.content.Context r1 = r0.f6186a     // Catch: java.lang.Throwable -> L8b
            android.content.Intent r1 = q2.b0.d(r1)     // Catch: java.lang.Throwable -> L8b
            if (r1 != 0) goto L56
            r1 = r2
            goto L5e
        L56:
            r0.f6189d = r3     // Catch: java.lang.Throwable -> L8b
            android.content.Context r4 = r0.f6186a     // Catch: java.lang.Throwable -> L8b
            r4.bindService(r1, r0, r3)     // Catch: java.lang.Throwable -> L8b
            r1 = r3
        L5e:
            monitor-exit(r0)
        L5f:
            if (r1 != 0) goto L62
            return r2
        L62:
            y2.o r0 = r7.d()
            y2.p r0 = r0.f6228e
            if (r0 == 0) goto L7d
            java.lang.Object r0 = r0.f6235a
            y2.q r0 = (y2.q) r0
            android.view.View r0 = r0.f6240j0
            if (r0 == 0) goto L76
            r0.setVisibility(r2)
            goto L7d
        L76:
            java.lang.String r8 = "progressBar"
            d7.g.i(r8)
            r8 = 0
            throw r8
        L7d:
            b2.d r0 = new b2.d
            r1 = 10
            r0.<init>(r7, r1, r8)
            y2.i r8 = r7.f6195c
            if (r8 == 0) goto L8a
            r8.f6188c = r0
        L8a:
            return r3
        L8b:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.j.k(y2.m):int");
    }

    public final void l(m mVar, Bundle bundle) {
        n nVar;
        x1.g gVar;
        d7.g.f("request", mVar);
        d7.g.f("result", bundle);
        try {
            x1.a aVarA = y1.j.a(bundle, mVar.f6203d);
            String str = mVar.f6213w;
            String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
            if (string == null || string.length() == 0 || str == null || str.length() == 0) {
                gVar = null;
            } else {
                try {
                    gVar = new x1.g(string, str);
                } catch (Exception e9) {
                    throw new x1.l(e9.getMessage());
                }
            }
            nVar = new n(mVar, 1, aVarA, gVar, null, null);
        } catch (x1.l e10) {
            m mVar2 = d().f6230g;
            String message = e10.getMessage();
            ArrayList arrayList = new ArrayList();
            if (message != null) {
                arrayList.add(message);
            }
            nVar = new n(mVar2, 3, null, TextUtils.join(": ", arrayList), null);
        }
        d().d(nVar);
    }

    public j(Parcel parcel) {
        super(parcel);
        this.f6196d = "get_token";
    }
}
