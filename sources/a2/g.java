package a2;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Trace;
import com.google.firebase.messaging.y;
import java.nio.MappedByteBuffer;
import p0.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f35a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f36b;

    public /* synthetic */ g(int i6, Object obj) {
        this.f35a = i6;
        this.f36b = obj;
    }

    private final void a() {
        q qVar = (q) this.f36b;
        synchronized (qVar.f4606d) {
            try {
                if (qVar.h == null) {
                    return;
                }
                try {
                    g0.j jVarD = qVar.d();
                    int i6 = jVarD.f2845e;
                    if (i6 == 2) {
                        synchronized (qVar.f4606d) {
                        }
                    }
                    if (i6 != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + i6 + ")");
                    }
                    try {
                        int i9 = f0.j.f2525a;
                        Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        o3.a aVar = qVar.f4605c;
                        Context context = qVar.f4603a;
                        aVar.getClass();
                        g0.j[] jVarArr = {jVarD};
                        x2.a aVar2 = c0.f.f996a;
                        z7.d.a("TypefaceCompat.createFromFontInfo");
                        try {
                            Typeface typefaceB = c0.f.f996a.b(context, jVarArr, 0);
                            Trace.endSection();
                            MappedByteBuffer mappedByteBufferS = y1.g.s(qVar.f4603a, jVarD.f2841a);
                            if (mappedByteBufferS == null || typefaceB == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            try {
                                Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                y yVar = new y(typefaceB, y1.j.l(mappedByteBufferS));
                                Trace.endSection();
                                synchronized (qVar.f4606d) {
                                    try {
                                        x2.a aVar3 = qVar.h;
                                        if (aVar3 != null) {
                                            aVar3.l(yVar);
                                        }
                                    } finally {
                                    }
                                }
                                qVar.b();
                            } finally {
                                int i10 = f0.j.f2525a;
                            }
                        } finally {
                            Trace.endSection();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } catch (Throwable th2) {
                    synchronized (qVar.f4606d) {
                        try {
                            x2.a aVar4 = qVar.h;
                            if (aVar4 != null) {
                                aVar4.k(th2);
                            }
                            qVar.b();
                        } finally {
                        }
                    }
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:257:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:507:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v110, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v124, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v126, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r10v22, types: [a2.a] */
    /* JADX WARN: Type inference failed for: r10v4, types: [a2.a[]] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [x1.e0] */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r5v11, types: [a2.l[]] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v24, types: [a2.l] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2512
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.g.run():void");
    }
}
