package j0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements c, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3259a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ClipData f3260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Uri f3263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bundle f3264f;

    public /* synthetic */ d() {
    }

    @Override // j0.e
    public ClipData a() {
        return this.f3260b;
    }

    @Override // j0.c
    public f build() {
        return new f(new d(this));
    }

    @Override // j0.e
    public int g() {
        return this.f3262d;
    }

    @Override // j0.e
    public ContentInfo i() {
        return null;
    }

    @Override // j0.c
    public void k(Uri uri) {
        this.f3263e = uri;
    }

    @Override // j0.e
    public int l() {
        return this.f3261c;
    }

    @Override // j0.c
    public void p(int i6) {
        this.f3262d = i6;
    }

    @Override // j0.c
    public void setExtras(Bundle bundle) {
        this.f3264f = bundle;
    }

    public String toString() {
        String str;
        switch (this.f3259a) {
            case 1:
                Uri uri = this.f3263e;
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(this.f3260b.getDescription());
                sb.append(", source=");
                int i6 = this.f3261c;
                sb.append(i6 != 0 ? i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? i6 != 5 ? String.valueOf(i6) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb.append(", flags=");
                int i9 = this.f3262d;
                sb.append((i9 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i9));
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                return q2.x.h(sb, this.f3264f != null ? ", hasExtras" : "", "}");
            default:
                return super.toString();
        }
    }

    public d(d dVar) {
        ClipData clipData = dVar.f3260b;
        clipData.getClass();
        this.f3260b = clipData;
        int i6 = dVar.f3261c;
        if (i6 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i6 > 5) {
            Locale locale2 = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
        }
        this.f3261c = i6;
        int i9 = dVar.f3262d;
        if ((i9 & 1) == i9) {
            this.f3262d = i9;
            this.f3263e = dVar.f3263e;
            this.f3264f = dVar.f3264f;
        } else {
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i9) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }
    }
}
