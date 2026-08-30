package b5;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import z4.f;
import z4.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements z4.e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f967a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonWriter f968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final z4.d f971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f972f;

    public e(BufferedWriter bufferedWriter, HashMap map, HashMap map2, a aVar, boolean z5) {
        this.f968b = new JsonWriter(bufferedWriter);
        this.f969c = map;
        this.f970d = map2;
        this.f971e = aVar;
        this.f972f = z5;
    }

    @Override // z4.e
    public final z4.e a(z4.c cVar, int i6) throws IOException {
        String str = cVar.f6411a;
        h();
        JsonWriter jsonWriter = this.f968b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(i6);
        return this;
    }

    @Override // z4.e
    public final z4.e b(z4.c cVar, long j3) throws IOException {
        String str = cVar.f6411a;
        h();
        JsonWriter jsonWriter = this.f968b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(j3);
        return this;
    }

    @Override // z4.g
    public final g c(String str) throws IOException {
        h();
        this.f968b.value(str);
        return this;
    }

    @Override // z4.g
    public final g d(boolean z5) throws IOException {
        h();
        this.f968b.value(z5);
        return this;
    }

    @Override // z4.e
    public final z4.e e(z4.c cVar, Object obj) throws IOException {
        g(cVar.f6411a, obj);
        return this;
    }

    public final e f(Object obj) throws IOException {
        JsonWriter jsonWriter = this.f968b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        int i6 = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    f(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        g((String) key, entry.getValue());
                    } catch (ClassCastException e9) {
                        throw new z4.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e9);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            z4.d dVar = (z4.d) this.f969c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            f fVar = (f) this.f970d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                h();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.f971e.a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            h();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i6 < length) {
                jsonWriter.value(r7[i6]);
                i6++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i6 < length2) {
                long j3 = jArr[i6];
                h();
                jsonWriter.value(j3);
                i6++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i6 < length3) {
                jsonWriter.value(dArr[i6]);
                i6++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i6 < length4) {
                jsonWriter.value(zArr[i6]);
                i6++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i6 < length5) {
                f(numberArr[i6]);
                i6++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i6 < length6) {
                f(objArr[i6]);
                i6++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final e g(String str, Object obj) throws IOException {
        boolean z5 = this.f972f;
        JsonWriter jsonWriter = this.f968b;
        if (z5) {
            if (obj == null) {
                return this;
            }
            h();
            jsonWriter.name(str);
            f(obj);
            return this;
        }
        h();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        f(obj);
        return this;
    }

    public final void h() {
        if (!this.f967a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
