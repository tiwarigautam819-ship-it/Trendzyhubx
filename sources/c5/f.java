package c5;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements z4.e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f1049f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final z4.c f1050g = new z4.c("key", a1.a.l(a1.a.k(e.class, new a(1))));
    public static final z4.c h = new z4.c("value", a1.a.l(a1.a.k(e.class, new a(2))));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b5.a f1051i = new b5.a(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OutputStream f1052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f1053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final z4.d f1055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f1056e = new i(this);

    public f(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, z4.d dVar) {
        this.f1052a = byteArrayOutputStream;
        this.f1053b = map;
        this.f1054c = map2;
        this.f1055d = dVar;
    }

    public static int g(z4.c cVar) {
        e eVar = (e) ((Annotation) cVar.f6412b.get(e.class));
        if (eVar != null) {
            return ((a) eVar).f1045a;
        }
        throw new z4.b("Field has no @Protobuf config");
    }

    @Override // z4.e
    public final z4.e a(z4.c cVar, int i6) {
        c(cVar, i6, true);
        return this;
    }

    @Override // z4.e
    public final z4.e b(z4.c cVar, long j3) throws IOException {
        if (j3 == 0) {
            return this;
        }
        e eVar = (e) ((Annotation) cVar.f6412b.get(e.class));
        if (eVar == null) {
            throw new z4.b("Field has no @Protobuf config");
        }
        h(((a) eVar).f1045a << 3);
        i(j3);
        return this;
    }

    public final void c(z4.c cVar, int i6, boolean z5) {
        if (z5 && i6 == 0) {
            return;
        }
        e eVar = (e) ((Annotation) cVar.f6412b.get(e.class));
        if (eVar == null) {
            throw new z4.b("Field has no @Protobuf config");
        }
        h(((a) eVar).f1045a << 3);
        h(i6);
    }

    public final void d(z4.c cVar, Object obj, boolean z5) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z5 && charSequence.length() == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f1049f);
            h(bytes.length);
            this.f1052a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                d(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                f(f1051i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z5 && dDoubleValue == 0.0d) {
                return;
            }
            h((g(cVar) << 3) | 1);
            this.f1052a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z5 && fFloatValue == 0.0f) {
                return;
            }
            h((g(cVar) << 3) | 5);
            this.f1052a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            long jLongValue = ((Number) obj).longValue();
            if (z5 && jLongValue == 0) {
                return;
            }
            e eVar = (e) ((Annotation) cVar.f6412b.get(e.class));
            if (eVar == null) {
                throw new z4.b("Field has no @Protobuf config");
            }
            h(((a) eVar).f1045a << 3);
            i(jLongValue);
            return;
        }
        if (obj instanceof Boolean) {
            c(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z5);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z5 && bArr.length == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            h(bArr.length);
            this.f1052a.write(bArr);
            return;
        }
        z4.d dVar = (z4.d) this.f1053b.get(obj.getClass());
        if (dVar != null) {
            f(dVar, cVar, obj, z5);
            return;
        }
        z4.f fVar = (z4.f) this.f1054c.get(obj.getClass());
        if (fVar != null) {
            i iVar = this.f1056e;
            iVar.f1063a = false;
            iVar.f1065c = cVar;
            iVar.f1064b = z5;
            fVar.a(obj, iVar);
            return;
        }
        if (obj instanceof c) {
            c(cVar, ((c) obj).a(), true);
        } else if (obj instanceof Enum) {
            c(cVar, ((Enum) obj).ordinal(), true);
        } else {
            f(this.f1055d, cVar, obj, z5);
        }
    }

    @Override // z4.e
    public final z4.e e(z4.c cVar, Object obj) {
        d(cVar, obj, true);
        return this;
    }

    public final void f(z4.d dVar, z4.c cVar, Object obj, boolean z5) throws IOException {
        b bVar = new b();
        bVar.f1046a = 0L;
        try {
            OutputStream outputStream = this.f1052a;
            this.f1052a = bVar;
            try {
                dVar.a(obj, this);
                this.f1052a = outputStream;
                long j3 = bVar.f1046a;
                bVar.close();
                if (z5 && j3 == 0) {
                    return;
                }
                h((g(cVar) << 3) | 2);
                i(j3);
                dVar.a(obj, this);
            } catch (Throwable th) {
                this.f1052a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void h(int i6) throws IOException {
        while ((i6 & (-128)) != 0) {
            this.f1052a.write((i6 & ModuleDescriptor.MODULE_VERSION) | 128);
            i6 >>>= 7;
        }
        this.f1052a.write(i6 & ModuleDescriptor.MODULE_VERSION);
    }

    public final void i(long j3) throws IOException {
        while (((-128) & j3) != 0) {
            this.f1052a.write((((int) j3) & ModuleDescriptor.MODULE_VERSION) | 128);
            j3 >>>= 7;
        }
        this.f1052a.write(((int) j3) & ModuleDescriptor.MODULE_VERSION);
    }
}
