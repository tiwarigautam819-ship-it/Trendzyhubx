package b6;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f974b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f973a = new int[1];

    public final void a(boolean z5) {
        c(this.f974b + 1);
        if (z5) {
            int[] iArr = this.f973a;
            int i6 = this.f974b;
            int i9 = i6 / 32;
            iArr[i9] = (1 << (i6 & 31)) | iArr[i9];
        }
        this.f974b++;
    }

    public final void b(int i6, int i9) {
        if (i9 < 0 || i9 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        c(this.f974b + i9);
        while (i9 > 0) {
            boolean z5 = true;
            if (((i6 >> (i9 - 1)) & 1) != 1) {
                z5 = false;
            }
            a(z5);
            i9--;
        }
    }

    public final void c(int i6) {
        int[] iArr = this.f973a;
        if (i6 > (iArr.length << 5)) {
            int[] iArr2 = new int[(i6 + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f973a = iArr2;
        }
    }

    public final Object clone() {
        int[] iArr = (int[]) this.f973a.clone();
        int i6 = this.f974b;
        a aVar = new a();
        aVar.f973a = iArr;
        aVar.f974b = i6;
        return aVar;
    }

    public final boolean d(int i6) {
        return ((1 << (i6 & 31)) & this.f973a[i6 / 32]) != 0;
    }

    public final int e() {
        return (this.f974b + 7) / 8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f974b == aVar.f974b && Arrays.equals(this.f973a, aVar.f973a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f973a) + (this.f974b * 31);
    }

    public final String toString() {
        int i6 = this.f974b;
        StringBuilder sb = new StringBuilder((i6 / 8) + i6 + 1);
        for (int i9 = 0; i9 < this.f974b; i9++) {
            if ((i9 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(d(i9) ? 'X' : '.');
        }
        return sb.toString();
    }
}
