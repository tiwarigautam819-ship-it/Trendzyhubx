package t5;

import com.engagelab.privates.core.api.WakeMessage;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f5353b = new g(new h(0), 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5354a;

    public /* synthetic */ h(int i6) {
        this.f5354a = i6;
    }

    public static void b(x5.a aVar, q5.o oVar) {
        if (oVar == null || (oVar instanceof q5.p)) {
            aVar.w();
            return;
        }
        boolean z5 = oVar instanceof q5.r;
        if (z5) {
            if (z5) {
                aVar.C(((q5.r) oVar).b());
                return;
            } else {
                throw new IllegalStateException("Not a JSON Primitive: " + oVar);
            }
        }
        boolean z8 = oVar instanceof q5.n;
        if (z8) {
            aVar.c();
            if (z8) {
                throw null;
            }
            throw new IllegalStateException("Not a JSON Array: " + oVar);
        }
        boolean z9 = oVar instanceof q5.q;
        if (!z9) {
            throw new IllegalArgumentException("Couldn't write " + oVar.getClass());
        }
        aVar.g();
        if (z9) {
            throw null;
        }
        throw new IllegalStateException("Not a JSON Object: " + oVar);
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        switch (this.f5354a) {
            case 0:
                aVar.B((Number) obj);
                return;
            case 1:
                aVar.c();
                int length = ((AtomicIntegerArray) obj).length();
                for (int i6 = 0; i6 < length; i6++) {
                    aVar.A(r6.get(i6));
                }
                aVar.s();
                return;
            case 2:
                Number number = (Number) obj;
                if (number == null) {
                    aVar.w();
                    return;
                } else {
                    aVar.A(number.longValue());
                    return;
                }
            case 3:
                Number numberValueOf = (Number) obj;
                if (numberValueOf == null) {
                    aVar.w();
                    return;
                }
                if (!(numberValueOf instanceof Float)) {
                    numberValueOf = Float.valueOf(numberValueOf.floatValue());
                }
                aVar.B(numberValueOf);
                return;
            case 4:
                Number number2 = (Number) obj;
                if (number2 == null) {
                    aVar.w();
                    return;
                } else {
                    aVar.z(number2.doubleValue());
                    return;
                }
            case 5:
                Character ch = (Character) obj;
                aVar.C(ch == null ? null : String.valueOf(ch));
                return;
            case 6:
                aVar.C((String) obj);
                return;
            case 7:
                aVar.B((BigDecimal) obj);
                return;
            case WakeMessage.ACTIVITY /* 8 */:
                aVar.B((BigInteger) obj);
                return;
            case 9:
                aVar.B((s5.i) obj);
                return;
            case 10:
                StringBuilder sb = (StringBuilder) obj;
                aVar.C(sb == null ? null : sb.toString());
                return;
            case 11:
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?");
            case 12:
                StringBuffer stringBuffer = (StringBuffer) obj;
                aVar.C(stringBuffer == null ? null : stringBuffer.toString());
                return;
            case 13:
                URL url = (URL) obj;
                aVar.C(url == null ? null : url.toExternalForm());
                return;
            case 14:
                URI uri = (URI) obj;
                aVar.C(uri == null ? null : uri.toASCIIString());
                return;
            case 15:
                InetAddress inetAddress = (InetAddress) obj;
                aVar.C(inetAddress == null ? null : inetAddress.getHostAddress());
                return;
            case 16:
                UUID uuid = (UUID) obj;
                aVar.C(uuid == null ? null : uuid.toString());
                return;
            case 17:
                aVar.C(((Currency) obj).getCurrencyCode());
                return;
            case 18:
                if (((Calendar) obj) == null) {
                    aVar.w();
                    return;
                }
                aVar.g();
                aVar.u("year");
                aVar.A(r6.get(1));
                aVar.u("month");
                aVar.A(r6.get(2));
                aVar.u("dayOfMonth");
                aVar.A(r6.get(5));
                aVar.u("hourOfDay");
                aVar.A(r6.get(11));
                aVar.u("minute");
                aVar.A(r6.get(12));
                aVar.u("second");
                aVar.A(r6.get(13));
                aVar.t();
                return;
            case 19:
                Locale locale = (Locale) obj;
                aVar.C(locale == null ? null : locale.toString());
                return;
            case 20:
                b(aVar, (q5.o) obj);
                return;
            case 21:
                BitSet bitSet = (BitSet) obj;
                aVar.c();
                int length2 = bitSet.length();
                for (int i9 = 0; i9 < length2; i9++) {
                    aVar.A(bitSet.get(i9) ? 1L : 0L);
                }
                aVar.s();
                return;
            case 22:
                Boolean bool = (Boolean) obj;
                if (bool == null) {
                    aVar.w();
                    return;
                }
                aVar.E();
                aVar.a();
                aVar.f6019a.write(bool.booleanValue() ? "true" : "false");
                return;
            case 23:
                Boolean bool2 = (Boolean) obj;
                aVar.C(bool2 == null ? "null" : bool2.toString());
                return;
            case 24:
                if (((Number) obj) == null) {
                    aVar.w();
                    return;
                } else {
                    aVar.A(r6.byteValue());
                    return;
                }
            case 25:
                if (((Number) obj) == null) {
                    aVar.w();
                    return;
                } else {
                    aVar.A(r6.shortValue());
                    return;
                }
            case 26:
                if (((Number) obj) == null) {
                    aVar.w();
                    return;
                } else {
                    aVar.A(r6.intValue());
                    return;
                }
            case 27:
                aVar.A(((AtomicInteger) obj).get());
                return;
            default:
                aVar.D(((AtomicBoolean) obj).get());
                return;
        }
    }
}
