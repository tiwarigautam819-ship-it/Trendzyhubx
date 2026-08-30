package r7;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f5013n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f5020g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f5022j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f5023k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f5024l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f5025m;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        d7.g.f("timeUnit", timeUnit);
        timeUnit.toSeconds(Integer.MAX_VALUE);
    }

    public c(boolean z5, boolean z8, int i6, int i9, boolean z9, boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, String str) {
        this.f5014a = z5;
        this.f5015b = z8;
        this.f5016c = i6;
        this.f5017d = i9;
        this.f5018e = z9;
        this.f5019f = z10;
        this.f5020g = z11;
        this.h = i10;
        this.f5021i = i11;
        this.f5022j = z12;
        this.f5023k = z13;
        this.f5024l = z14;
        this.f5025m = str;
    }

    public final String toString() {
        String str = this.f5025m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f5014a) {
            sb.append("no-cache, ");
        }
        if (this.f5015b) {
            sb.append("no-store, ");
        }
        int i6 = this.f5016c;
        if (i6 != -1) {
            sb.append("max-age=");
            sb.append(i6);
            sb.append(", ");
        }
        int i9 = this.f5017d;
        if (i9 != -1) {
            sb.append("s-maxage=");
            sb.append(i9);
            sb.append(", ");
        }
        if (this.f5018e) {
            sb.append("private, ");
        }
        if (this.f5019f) {
            sb.append("public, ");
        }
        if (this.f5020g) {
            sb.append("must-revalidate, ");
        }
        int i10 = this.h;
        if (i10 != -1) {
            sb.append("max-stale=");
            sb.append(i10);
            sb.append(", ");
        }
        int i11 = this.f5021i;
        if (i11 != -1) {
            sb.append("min-fresh=");
            sb.append(i11);
            sb.append(", ");
        }
        if (this.f5022j) {
            sb.append("only-if-cached, ");
        }
        if (this.f5023k) {
            sb.append("no-transform, ");
        }
        if (this.f5024l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        d7.g.e("StringBuilder().apply(builderAction).toString()", string);
        this.f5025m = string;
        return string;
    }
}
