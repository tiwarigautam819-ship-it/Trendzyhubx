package e6;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import m.n0;
import m.r0;
import m.s0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2407d;

    public b(String str, int i6, int i9) {
        this.f2406c = str;
        this.f2405b = i6;
        this.f2404a = i9;
        byte[] bArr = new byte[i6 * i9];
        this.f2407d = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    public void a() {
        new Handler(Looper.getMainLooper()).post(new a2.g(4, this));
    }

    public void b(int i6, int i9, int i10, int i11) {
        if (i6 < 0) {
            int i12 = this.f2404a;
            i6 += i12;
            i9 += 4 - ((i12 + 4) % 8);
        }
        int i13 = this.f2405b;
        if (i9 < 0) {
            i9 += i13;
            i6 += 4 - ((i13 + 4) % 8);
        }
        ((byte[]) this.f2407d)[(i6 * i13) + i9] = (byte) ((((CharSequence) this.f2406c).charAt(i10) & (1 << (8 - i11))) == 0 ? 0 : 1);
    }

    public void c(Typeface typeface) {
        int i6;
        if (Build.VERSION.SDK_INT >= 28 && (i6 = this.f2404a) != -1) {
            typeface = r0.a(typeface, i6, (this.f2405b & 2) != 0);
        }
        s0 s0Var = (s0) this.f2407d;
        WeakReference weakReference = (WeakReference) this.f2406c;
        if (s0Var.f4094m) {
            s0Var.f4093l = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new n0(textView, typeface, s0Var.f4091j));
                } else {
                    textView.setTypeface(typeface, s0Var.f4091j);
                }
            }
        }
    }

    public void d(int i6, int i9, int i10) {
        int i11 = i6 - 2;
        int i12 = i9 - 2;
        b(i11, i12, i10, 1);
        int i13 = i9 - 1;
        b(i11, i13, i10, 2);
        int i14 = i6 - 1;
        b(i14, i12, i10, 3);
        b(i14, i13, i10, 4);
        b(i14, i9, i10, 5);
        b(i6, i12, i10, 6);
        b(i6, i13, i10, 7);
        b(i6, i9, i10, 8);
    }

    public b(s0 s0Var, int i6, int i9, WeakReference weakReference) {
        this.f2407d = s0Var;
        this.f2404a = i6;
        this.f2405b = i9;
        this.f2406c = weakReference;
    }
}
