package s;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class i {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final t.b lock;
    private final t.c map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public i(int i6) {
        this.maxSize = i6;
        if (i6 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.map = new t.c();
        this.lock = new t.b();
    }

    public final int a(Object obj, Object obj2) {
        int iSizeOf = sizeOf(obj, obj2);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    public Object create(Object obj) {
        return null;
    }

    public final int createCount() {
        int i6;
        synchronized (this.lock) {
            i6 = this.createCount;
        }
        return i6;
    }

    public void entryRemoved(boolean z5, Object obj, Object obj2, Object obj3) {
        d7.g.f("key", obj);
        d7.g.f("oldValue", obj2);
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i6;
        synchronized (this.lock) {
            i6 = this.evictionCount;
        }
        return i6;
    }

    public final Object get(Object obj) {
        Object objPut;
        d7.g.f("key", obj);
        synchronized (this.lock) {
            t.c cVar = this.map;
            cVar.getClass();
            Object obj2 = cVar.f5296a.get(obj);
            if (obj2 != null) {
                this.hitCount++;
                return obj2;
            }
            this.missCount++;
            Object objCreate = create(obj);
            if (objCreate == null) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    this.createCount++;
                    objPut = this.map.f5296a.put(obj, objCreate);
                    if (objPut != null) {
                        this.map.f5296a.put(obj, objPut);
                    } else {
                        this.size += a(obj, objCreate);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objPut != null) {
                entryRemoved(false, obj, objCreate, objPut);
                return objPut;
            }
            trimToSize(this.maxSize);
            return objCreate;
        }
    }

    public final int hitCount() {
        int i6;
        synchronized (this.lock) {
            i6 = this.hitCount;
        }
        return i6;
    }

    public final int maxSize() {
        int i6;
        synchronized (this.lock) {
            i6 = this.maxSize;
        }
        return i6;
    }

    public final int missCount() {
        int i6;
        synchronized (this.lock) {
            i6 = this.missCount;
        }
        return i6;
    }

    public final Object put(Object obj, Object obj2) {
        Object objPut;
        d7.g.f("key", obj);
        d7.g.f("value", obj2);
        synchronized (this.lock) {
            this.putCount++;
            this.size += a(obj, obj2);
            objPut = this.map.f5296a.put(obj, obj2);
            if (objPut != null) {
                this.size -= a(obj, objPut);
            }
        }
        if (objPut != null) {
            entryRemoved(false, obj, objPut, obj2);
        }
        trimToSize(this.maxSize);
        return objPut;
    }

    public final int putCount() {
        int i6;
        synchronized (this.lock) {
            i6 = this.putCount;
        }
        return i6;
    }

    public final Object remove(Object obj) {
        Object objRemove;
        d7.g.f("key", obj);
        synchronized (this.lock) {
            t.c cVar = this.map;
            cVar.getClass();
            objRemove = cVar.f5296a.remove(obj);
            if (objRemove != null) {
                this.size -= a(obj, objRemove);
            }
        }
        if (objRemove != null) {
            entryRemoved(false, obj, objRemove, null);
        }
        return objRemove;
    }

    public void resize(int i6) {
        if (i6 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this.lock) {
            this.maxSize = i6;
        }
        trimToSize(i6);
    }

    public final int size() {
        int i6;
        synchronized (this.lock) {
            i6 = this.size;
        }
        return i6;
    }

    public int sizeOf(Object obj, Object obj2) {
        d7.g.f("key", obj);
        d7.g.f("value", obj2);
        return 1;
    }

    public final Map<Object, Object> snapshot() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (this.lock) {
            Set<Map.Entry> setEntrySet = this.map.f5296a.entrySet();
            d7.g.e("map.entries", setEntrySet);
            for (Map.Entry entry : setEntrySet) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            try {
                int i6 = this.hitCount;
                int i9 = this.missCount + i6;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i9 != 0 ? (i6 * 100) / i9 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x008e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void trimToSize(int r7) {
        /*
            r6 = this;
        L0:
            t.b r0 = r6.lock
            monitor-enter(r0)
            int r1 = r6.size     // Catch: java.lang.Throwable -> L16
            if (r1 < 0) goto L8f
            t.c r1 = r6.map     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f5296a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L19
            int r1 = r6.size     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L8f
            goto L19
        L16:
            r7 = move-exception
            goto L97
        L19:
            int r1 = r6.size     // Catch: java.lang.Throwable -> L16
            if (r1 <= r7) goto L8d
            t.c r1 = r6.map     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f5296a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L28
            goto L8d
        L28:
            t.c r1 = r6.map     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f5296a     // Catch: java.lang.Throwable -> L16
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "map.entries"
            d7.g.e(r2, r1)     // Catch: java.lang.Throwable -> L16
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L16
            r3 = 0
            if (r2 == 0) goto L4c
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r2 == 0) goto L46
        L44:
            r1 = r3
            goto L5b
        L46:
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L16
            goto L5b
        L4c:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L16
            if (r2 != 0) goto L57
            goto L44
        L57:
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L16
        L5b:
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L61
            monitor-exit(r0)
            return
        L61:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L16
            t.c r4 = r6.map     // Catch: java.lang.Throwable -> L16
            r4.getClass()     // Catch: java.lang.Throwable -> L16
            java.lang.String r5 = "key"
            d7.g.f(r5, r2)     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r4 = r4.f5296a     // Catch: java.lang.Throwable -> L16
            r4.remove(r2)     // Catch: java.lang.Throwable -> L16
            int r4 = r6.size     // Catch: java.lang.Throwable -> L16
            int r5 = r6.a(r2, r1)     // Catch: java.lang.Throwable -> L16
            int r4 = r4 - r5
            r6.size = r4     // Catch: java.lang.Throwable -> L16
            int r4 = r6.evictionCount     // Catch: java.lang.Throwable -> L16
            r5 = 1
            int r4 = r4 + r5
            r6.evictionCount = r4     // Catch: java.lang.Throwable -> L16
            monitor-exit(r0)
            r6.entryRemoved(r5, r2, r1, r3)
            goto L0
        L8d:
            monitor-exit(r0)
            return
        L8f:
            java.lang.String r7 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L16
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L16
            throw r1     // Catch: java.lang.Throwable -> L16
        L97:
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: s.i.trimToSize(int):void");
    }
}
