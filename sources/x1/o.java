package x1;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5911d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f5913f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f5914g;
    public final String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l f5915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final o3.a f5907j = new o3.a(29);
    public static final Parcelable.Creator<o> CREATOR = new n4.e(12);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public o(int r1, int r2, int r3, java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.Object r8, x1.l r9, boolean r10) {
        /*
            r0 = this;
            r0.<init>()
            r0.f5908a = r1
            r0.f5909b = r2
            r0.f5910c = r3
            r0.f5911d = r4
            r0.f5912e = r6
            r0.f5913f = r7
            r0.f5914g = r8
            r0.h = r5
            o3.a r1 = x1.o.f5907j
            r4 = 2
            if (r9 == 0) goto L1c
            r0.f5915i = r9
            goto La0
        L1c:
            x1.t r5 = new x1.t
            java.lang.String r6 = r0.a()
            r5.<init>(r0, r6)
            r0.f5915i = r5
            q2.k r5 = r1.c()
            java.util.Map r6 = r5.f4754b
            java.util.Map r7 = r5.f4755c
            java.util.Map r5 = r5.f4753a
            r8 = 3
            if (r10 == 0) goto L36
        L34:
            r4 = r8
            goto La0
        L36:
            if (r5 == 0) goto L59
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            boolean r9 = r5.containsKey(r9)
            if (r9 == 0) goto L59
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            java.lang.Object r5 = r5.get(r9)
            java.util.Set r5 = (java.util.Set) r5
            if (r5 == 0) goto La0
            java.lang.Integer r9 = java.lang.Integer.valueOf(r3)
            boolean r5 = r5.contains(r9)
            if (r5 == 0) goto L59
            goto La0
        L59:
            if (r7 == 0) goto L7d
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            boolean r5 = r7.containsKey(r5)
            if (r5 == 0) goto L7d
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            java.lang.Object r5 = r7.get(r5)
            java.util.Set r5 = (java.util.Set) r5
            if (r5 == 0) goto L7b
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
            boolean r5 = r5.contains(r7)
            if (r5 == 0) goto L7d
        L7b:
            r4 = 1
            goto La0
        L7d:
            if (r6 == 0) goto La0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r2)
            boolean r5 = r6.containsKey(r5)
            if (r5 == 0) goto La0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r2 = r6.get(r2)
            java.util.Set r2 = (java.util.Set) r2
            if (r2 == 0) goto L34
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            boolean r2 = r2.contains(r3)
            if (r2 == 0) goto La0
            goto L34
        La0:
            r1.c()
            int[] r1 = q2.j.f4749a
            int r2 = androidx.fragment.app.m1.e(r4)
            r1 = r1[r2]
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.o.<init>(int, int, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Object, x1.l, boolean):void");
    }

    public final String a() {
        String str = this.h;
        if (str != null) {
            return str;
        }
        l lVar = this.f5915i;
        if (lVar != null) {
            return lVar.getLocalizedMessage();
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String str = "{HttpStatus: " + this.f5908a + ", errorCode: " + this.f5909b + ", subErrorCode: " + this.f5910c + ", errorType: " + this.f5911d + ", errorMessage: " + a() + "}";
        d7.g.e("StringBuilder(\"{HttpStat…(\"}\")\n        .toString()", str);
        return str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d7.g.f("out", parcel);
        parcel.writeInt(this.f5908a);
        parcel.writeInt(this.f5909b);
        parcel.writeInt(this.f5910c);
        parcel.writeString(this.f5911d);
        parcel.writeString(a());
        parcel.writeString(this.f5912e);
        parcel.writeString(this.f5913f);
    }

    public o(Exception exc) {
        this(-1, -1, -1, null, null, null, null, null, exc instanceof l ? (l) exc : new l(exc), false);
    }

    public o(int i6, String str, String str2) {
        this(-1, i6, -1, str, str2, null, null, null, null, false);
    }
}
