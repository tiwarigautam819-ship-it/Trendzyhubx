package p0;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f4585j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile k f4586k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f4587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s.f f4588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f4589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f4590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f f4591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j f4592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o3.a f4593g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f4594i;

    public k(r rVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f4587a = reentrantReadWriteLock;
        this.f4589c = 3;
        j jVar = rVar.f4611a;
        this.f4592f = jVar;
        int i6 = rVar.f4612b;
        this.h = i6;
        this.f4594i = rVar.f4613c;
        this.f4590d = new Handler(Looper.getMainLooper());
        this.f4588b = new s.f(0);
        this.f4593g = new o3.a(3);
        f fVar = new f(this);
        this.f4591e = fVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i6 == 0) {
            try {
                this.f4589c = 0;
            } catch (Throwable th) {
                this.f4587a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                jVar.a(new e(fVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static k a() {
        k kVar;
        synchronized (f4585j) {
            try {
                kVar = f4586k;
                if (!(kVar != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return kVar;
    }

    public final int b() {
        this.f4587a.readLock().lock();
        try {
            return this.f4589c;
        } finally {
            this.f4587a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.h == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.f4587a.writeLock().lock();
        try {
            if (this.f4589c == 0) {
                return;
            }
            this.f4589c = 0;
            this.f4587a.writeLock().unlock();
            f fVar = this.f4591e;
            k kVar = fVar.f4579a;
            try {
                kVar.f4592f.a(new e(fVar));
            } catch (Throwable th) {
                kVar.d(th);
            }
        } finally {
            this.f4587a.writeLock().unlock();
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f4587a.writeLock().lock();
        try {
            this.f4589c = 2;
            arrayList.addAll(this.f4588b);
            this.f4588b.clear();
            this.f4587a.writeLock().unlock();
            this.f4590d.post(new i(arrayList, this.f4589c, th));
        } catch (Throwable th2) {
            this.f4587a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0086 A[Catch: all -> 0x0079, TRY_ENTER, TryCatch #2 {all -> 0x0079, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:49:0x0086, B:51:0x0090, B:53:0x0093, B:55:0x0096, B:57:0x00a6, B:58:0x00a9), top: B:107:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0096 A[Catch: all -> 0x0079, TryCatch #2 {all -> 0x0079, blocks: (B:35:0x0051, B:38:0x0056, B:40:0x005a, B:42:0x0067, B:49:0x0086, B:51:0x0090, B:53:0x0093, B:55:0x0096, B:57:0x00a6, B:58:0x00a9), top: B:107:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b8 A[Catch: all -> 0x00ef, TRY_ENTER, TryCatch #3 {all -> 0x00ef, blocks: (B:62:0x00b8, B:65:0x00c0, B:68:0x00c8, B:47:0x007c), top: B:109:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.CharSequence e(java.lang.CharSequence r11, int r12, int r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p0.k.e(java.lang.CharSequence, int, int):java.lang.CharSequence");
    }

    public final void f(h hVar) {
        b2.k.b("initCallback cannot be null", hVar);
        this.f4587a.writeLock().lock();
        try {
            if (this.f4589c == 1 || this.f4589c == 2) {
                this.f4590d.post(new i(Arrays.asList(hVar), this.f4589c, null));
            } else {
                this.f4588b.add(hVar);
            }
            this.f4587a.writeLock().unlock();
        } catch (Throwable th) {
            this.f4587a.writeLock().unlock();
            throw th;
        }
    }
}
