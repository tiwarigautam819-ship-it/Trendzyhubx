package t5;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.util.HashMap;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5376d;

    public o(Class cls) {
        this.f5373a = 1;
        this.f5374b = new HashMap();
        this.f5375c = new HashMap();
        this.f5376d = new HashMap();
        try {
            for (Field field : (Field[]) AccessController.doPrivileged(new r(cls))) {
                Enum r42 = (Enum) field.get(null);
                String strName = r42.name();
                String string = r42.toString();
                r5.b bVar = (r5.b) field.getAnnotation(r5.b.class);
                if (bVar != null) {
                    strName = bVar.value();
                    for (String str : bVar.alternate()) {
                        ((HashMap) this.f5374b).put(str, r42);
                    }
                }
                ((HashMap) this.f5374b).put(strName, r42);
                ((HashMap) this.f5375c).put(string, r42);
                ((HashMap) this.f5376d).put(r42, strName);
            }
        } catch (IllegalAccessException e9) {
            throw new AssertionError(e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0063  */
    @Override // q5.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(x5.a r5, java.lang.Object r6) throws java.io.IOException {
        /*
            r4 = this;
            int r0 = r4.f5373a
            switch(r0) {
                case 0: goto L19;
                default: goto L5;
            }
        L5:
            java.lang.Enum r6 = (java.lang.Enum) r6
            if (r6 != 0) goto Lb
            r6 = 0
            goto L15
        Lb:
            java.lang.Object r0 = r4.f5376d
            java.util.HashMap r0 = (java.util.HashMap) r0
            java.lang.Object r6 = r0.get(r6)
            java.lang.String r6 = (java.lang.String) r6
        L15:
            r5.C(r6)
            return
        L19:
            java.lang.Object r0 = r4.f5375c
            q5.x r0 = (q5.x) r0
            java.lang.Object r1 = r4.f5376d
            java.lang.reflect.Type r1 = (java.lang.reflect.Type) r1
            if (r6 == 0) goto L30
            boolean r2 = r1 instanceof java.lang.Class
            if (r2 != 0) goto L2b
            boolean r2 = r1 instanceof java.lang.reflect.TypeVariable
            if (r2 == 0) goto L30
        L2b:
            java.lang.Class r2 = r6.getClass()
            goto L31
        L30:
            r2 = r1
        L31:
            if (r2 == r1) goto L64
            java.lang.Object r1 = r4.f5374b
            q5.l r1 = (q5.l) r1
            w5.a r3 = new w5.a
            r3.<init>(r2)
            q5.x r1 = r1.b(r3)
            boolean r2 = r1 instanceof t5.k
            if (r2 != 0) goto L45
            goto L63
        L45:
            r2 = r0
        L46:
            boolean r3 = r2 instanceof q5.k
            if (r3 == 0) goto L5e
            r3 = r2
            q5.k r3 = (q5.k) r3
            q5.x r3 = r3.f4866a
            if (r3 == 0) goto L56
            if (r3 != r2) goto L54
            goto L5e
        L54:
            r2 = r3
            goto L46
        L56:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Adapter for type with cyclic dependency has been used before dependency has been resolved"
            r5.<init>(r6)
            throw r5
        L5e:
            boolean r2 = r2 instanceof t5.k
            if (r2 != 0) goto L63
            goto L64
        L63:
            r0 = r1
        L64:
            r0.a(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: t5.o.a(x5.a, java.lang.Object):void");
    }

    public o(Type type, q5.l lVar, x xVar) {
        this.f5373a = 0;
        this.f5374b = lVar;
        this.f5375c = xVar;
        this.f5376d = type;
    }
}
