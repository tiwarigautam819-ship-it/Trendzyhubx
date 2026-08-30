package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1845b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1846c;

    public /* synthetic */ r(int i6, Object obj) {
        this.f1844a = i6;
        this.f1846c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f1844a) {
            case 0:
                if (this.f1845b < ((p) this.f1846c).f1798a.length()) {
                }
                break;
            case 1:
                if (this.f1845b < ((p) this.f1846c).f1798a.length()) {
                }
                break;
            default:
                if (this.f1845b < ((e) this.f1846c).g()) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        switch (this.f1844a) {
            case 0:
                int i6 = this.f1845b;
                p pVar = (p) this.f1846c;
                if (i6 >= pVar.f1798a.length()) {
                    throw new NoSuchElementException();
                }
                String str = pVar.f1798a;
                int i9 = this.f1845b;
                this.f1845b = i9 + 1;
                return new p(String.valueOf(str.charAt(i9)));
            case 1:
                if (this.f1845b >= ((p) this.f1846c).f1798a.length()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f1845b;
                this.f1845b = i10 + 1;
                return new p(String.valueOf(i10));
            default:
                int i11 = this.f1845b;
                e eVar = (e) this.f1846c;
                if (i11 >= eVar.g()) {
                    throw new NoSuchElementException(a1.a.i(this.f1845b, "Out of bounds index: "));
                }
                int i12 = this.f1845b;
                this.f1845b = i12 + 1;
                return eVar.e(i12);
        }
    }
}
