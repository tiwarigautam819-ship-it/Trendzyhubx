package t5;

import java.util.Calendar;
import java.util.GregorianCalendar;
import q5.x;
import q5.y;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f5352b;

    public /* synthetic */ g(x xVar, int i6) {
        this.f5351a = i6;
        this.f5352b = xVar;
    }

    @Override // q5.y
    public final x a(q5.l lVar, w5.a aVar) {
        switch (this.f5351a) {
            case 0:
                if (aVar.f5756a == Number.class) {
                }
                break;
            default:
                Class cls = aVar.f5756a;
                if (cls == Calendar.class || cls == GregorianCalendar.class) {
                }
                break;
        }
        return (h) this.f5352b;
    }

    public String toString() {
        switch (this.f5351a) {
            case 1:
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((h) this.f5352b) + "]";
            default:
                return super.toString();
        }
    }
}
