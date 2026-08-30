package q7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4891i = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f4892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d7.k f4893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f4896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4897f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4898g;
    public final /* synthetic */ b h;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile int workerCtl;

    public a(b bVar, int i6) {
        this.h = bVar;
        setDaemon(true);
        this.f4892a = new l();
        this.f4893b = new d7.k();
        this.f4894c = 4;
        this.nextParkedWorker = b.f4901k;
        f7.d dVar = f7.e.f2634a;
        this.f4897f = f7.e.f2635b.a().nextInt();
        f(i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        r11 = q7.l.f4927d.get(r9);
        r0 = q7.l.f4926c.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        if (r11 == r0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        if (q7.l.f4928e.get(r9) != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        r0 = r0 - 1;
        r1 = r9.b(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        if (r1 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
    
        r7 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final q7.h a(boolean r11) {
        /*
            r10 = this;
            int r0 = r10.f4894c
            q7.b r2 = r10.h
            r7 = 0
            r8 = 1
            q7.l r9 = r10.f4892a
            if (r0 != r8) goto Lc
            goto L84
        Lc:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = q7.b.f4899i
        Le:
            long r3 = r0.get(r2)
            r5 = 9223367638808264704(0x7ffffc0000000000, double:NaN)
            long r5 = r5 & r3
            r1 = 42
            long r5 = r5 >> r1
            int r1 = (int) r5
            if (r1 != 0) goto L73
            r9.getClass()
        L21:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r11 = q7.l.f4925b
            java.lang.Object r0 = r11.get(r9)
            q7.h r0 = (q7.h) r0
            if (r0 != 0) goto L2c
            goto L41
        L2c:
            f4.j r1 = r0.f4915b
            int r1 = r1.f2610a
            if (r1 != r8) goto L41
        L32:
            boolean r1 = r11.compareAndSet(r9, r0, r7)
            if (r1 == 0) goto L3a
            r7 = r0
            goto L61
        L3a:
            java.lang.Object r1 = r11.get(r9)
            if (r1 == r0) goto L32
            goto L21
        L41:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r11 = q7.l.f4927d
            int r11 = r11.get(r9)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = q7.l.f4926c
            int r0 = r0.get(r9)
        L4d:
            if (r11 == r0) goto L61
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = q7.l.f4928e
            int r1 = r1.get(r9)
            if (r1 != 0) goto L58
            goto L61
        L58:
            int r0 = r0 + (-1)
            q7.h r1 = r9.b(r0, r8)
            if (r1 == 0) goto L4d
            r7 = r1
        L61:
            if (r7 != 0) goto L72
            q7.e r11 = r2.f4907f
            java.lang.Object r11 = r11.d()
            q7.h r11 = (q7.h) r11
            if (r11 != 0) goto L71
            q7.h r11 = r10.i(r8)
        L71:
            return r11
        L72:
            return r7
        L73:
            r5 = 4398046511104(0x40000000000, double:2.1729236899484E-311)
            long r5 = r3 - r5
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = q7.b.f4899i
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto Le
            r10.f4894c = r8
        L84:
            if (r11 == 0) goto Lb8
            int r11 = r2.f4902a
            int r11 = r11 * 2
            int r11 = r10.d(r11)
            if (r11 != 0) goto L91
            goto L92
        L91:
            r8 = 0
        L92:
            if (r8 == 0) goto L9b
            q7.h r11 = r10.e()
            if (r11 == 0) goto L9b
            return r11
        L9b:
            r9.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r11 = q7.l.f4925b
            java.lang.Object r11 = r11.getAndSet(r9, r7)
            q7.h r11 = (q7.h) r11
            if (r11 != 0) goto Lac
            q7.h r11 = r9.a()
        Lac:
            if (r11 == 0) goto Laf
            return r11
        Laf:
            if (r8 != 0) goto Lbf
            q7.h r11 = r10.e()
            if (r11 == 0) goto Lbf
            return r11
        Lb8:
            q7.h r11 = r10.e()
            if (r11 == 0) goto Lbf
            return r11
        Lbf:
            r11 = 3
            q7.h r11 = r10.i(r11)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.a(boolean):q7.h");
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i6) {
        int i9 = this.f4897f;
        int i10 = i9 ^ (i9 << 13);
        int i11 = i10 ^ (i10 >> 17);
        int i12 = i11 ^ (i11 << 5);
        this.f4897f = i12;
        int i13 = i6 - 1;
        return (i13 & i6) == 0 ? i12 & i13 : (i12 & Integer.MAX_VALUE) % i6;
    }

    public final h e() {
        int iD = d(2);
        b bVar = this.h;
        if (iD == 0) {
            h hVar = (h) bVar.f4906e.d();
            return hVar != null ? hVar : (h) bVar.f4907f.d();
        }
        h hVar2 = (h) bVar.f4907f.d();
        return hVar2 != null ? hVar2 : (h) bVar.f4906e.d();
    }

    public final void f(int i6) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h.f4905d);
        sb.append("-worker-");
        sb.append(i6 == 0 ? "TERMINATED" : String.valueOf(i6));
        setName(sb.toString());
        this.indexInArray = i6;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i6) {
        int i9 = this.f4894c;
        boolean z5 = i9 == 1;
        if (z5) {
            b.f4899i.addAndGet(this.h, 4398046511104L);
        }
        if (i9 != i6) {
            this.f4894c = i6;
        }
        return z5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
    
        r7 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a1, code lost:
    
        r7 = -2;
        r5 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final q7.h i(int r26) {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.i(int):q7.h");
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.a.run():void");
    }
}
