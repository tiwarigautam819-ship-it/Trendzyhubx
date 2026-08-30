package i8;

import androidx.appcompat.widget.ActionBarContextView;
import j0.p0;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3237d;

    public i(String str, int i6, boolean z5) {
        this.f3234a = 0;
        this.f3236c = i6;
        this.f3237d = str;
        this.f3235b = z5;
    }

    @Override // j0.p0
    public void a() {
        if (this.f3235b) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.f3237d;
        actionBarContextView.f197f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f3236c);
    }

    @Override // j0.p0
    public void b() {
        this.f3235b = true;
    }

    @Override // j0.p0
    public void c() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f3235b = false;
    }

    public void d(Object... objArr) {
        int length = objArr.length;
        h8.b.c(length, objArr);
        int i6 = this.f3236c + length;
        Object[] objArr2 = (Object[]) this.f3237d;
        if (objArr2.length < i6) {
            int length2 = objArr2.length;
            if (i6 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = length2 + (length2 >> 1) + 1;
            if (iHighestOneBit < i6) {
                iHighestOneBit = Integer.highestOneBit(i6 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                iHighestOneBit = Integer.MAX_VALUE;
            }
            this.f3237d = Arrays.copyOf(objArr2, iHighestOneBit);
            this.f3235b = false;
        } else if (this.f3235b) {
            this.f3237d = (Object[]) objArr2.clone();
            this.f3235b = false;
        }
        System.arraycopy(objArr, 0, (Object[]) this.f3237d, this.f3236c, length);
        this.f3236c += length;
    }

    public String toString() {
        switch (this.f3234a) {
            case 0:
                return "HTTP " + this.f3236c + " : " + ((String) this.f3237d);
            default:
                return super.toString();
        }
    }

    public i(ActionBarContextView actionBarContextView) {
        this.f3234a = 1;
        this.f3237d = actionBarContextView;
        this.f3235b = false;
    }

    public i() {
        this.f3234a = 2;
        this.f3237d = new Object[4];
        this.f3236c = 0;
    }
}
