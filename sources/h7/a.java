package h7;

import java.util.Iterator;
import l2.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a implements Iterable, e7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3019c;

    public a(int i6, int i9, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i10 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f3017a = i6;
        this.f3018b = e.m(i6, i9, i10);
        this.f3019c = i10;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        if (isEmpty() && ((a) obj).isEmpty()) {
            return true;
        }
        a aVar = (a) obj;
        return this.f3017a == aVar.f3017a && this.f3018b == aVar.f3018b && this.f3019c == aVar.f3019c;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f3017a * 31) + this.f3018b) * 31) + this.f3019c;
    }

    public boolean isEmpty() {
        int i6 = this.f3019c;
        int i9 = this.f3018b;
        int i10 = this.f3017a;
        return i6 > 0 ? i10 > i9 : i10 < i9;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new b(this.f3017a, this.f3018b, this.f3019c);
    }

    public String toString() {
        StringBuilder sb;
        int i6 = this.f3018b;
        int i9 = this.f3017a;
        int i10 = this.f3019c;
        if (i10 > 0) {
            sb = new StringBuilder();
            sb.append(i9);
            sb.append("..");
            sb.append(i6);
            sb.append(" step ");
            sb.append(i10);
        } else {
            sb = new StringBuilder();
            sb.append(i9);
            sb.append(" downTo ");
            sb.append(i6);
            sb.append(" step ");
            sb.append(-i10);
        }
        return sb.toString();
    }
}
