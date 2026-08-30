package i2;

import java.util.Currency;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f3090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Currency f3091c;

    public a(String str, double d6, Currency currency) {
        d7.g.f("eventName", str);
        this.f3089a = str;
        this.f3090b = d6;
        this.f3091c = currency;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return d7.g.a(this.f3089a, aVar.f3089a) && Double.compare(this.f3090b, aVar.f3090b) == 0 && d7.g.a(this.f3091c, aVar.f3091c);
    }

    public final int hashCode() {
        int iHashCode = this.f3089a.hashCode() * 31;
        long jDoubleToLongBits = Double.doubleToLongBits(this.f3090b);
        return this.f3091c.hashCode() + ((iHashCode + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31);
    }

    public final String toString() {
        return "InAppPurchase(eventName=" + this.f3089a + ", amount=" + this.f3090b + ", currency=" + this.f3091c + ')';
    }
}
