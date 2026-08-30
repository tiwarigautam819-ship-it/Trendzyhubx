package q5;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4863a;

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        switch (this.f4863a) {
            case 0:
                Number number = (Number) obj;
                if (number != null) {
                    double dDoubleValue = number.doubleValue();
                    l.a(dDoubleValue);
                    aVar.z(dDoubleValue);
                } else {
                    aVar.w();
                }
                break;
            case 1:
                Number numberValueOf = (Number) obj;
                if (numberValueOf != null) {
                    float fFloatValue = numberValueOf.floatValue();
                    l.a(fFloatValue);
                    if (!(numberValueOf instanceof Float)) {
                        numberValueOf = Float.valueOf(fFloatValue);
                    }
                    aVar.B(numberValueOf);
                } else {
                    aVar.w();
                }
                break;
            default:
                Number number2 = (Number) obj;
                if (number2 != null) {
                    aVar.C(number2.toString());
                } else {
                    aVar.w();
                }
                break;
        }
    }
}
