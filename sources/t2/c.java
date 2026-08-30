package t2;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import m1.g;
import org.json.JSONArray;
import q2.g0;
import s2.d;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f5306a = new AtomicBoolean(false);

    public static final void a() {
        File[] fileArrListFiles;
        if (v2.a.b(c.class)) {
            return;
        }
        try {
            if (g0.z()) {
                return;
            }
            File fileD = android.support.v4.media.session.a.d();
            if (fileD == null) {
                fileArrListFiles = new File[0];
            } else {
                fileArrListFiles = fileD.listFiles(new g(3));
                if (fileArrListFiles == null) {
                    fileArrListFiles = new File[0];
                }
            }
            ArrayList arrayList = new ArrayList(fileArrListFiles.length);
            for (File file : fileArrListFiles) {
                arrayList.add(a2.c.i(file));
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                if (((d) obj).a()) {
                    arrayList2.add(obj);
                }
            }
            List listU = s6.g.u(arrayList2, new g0.a(1));
            JSONArray jSONArray = new JSONArray();
            Iterator it = a2.c.m(0, Math.min(listU.size(), 5)).iterator();
            while (((h7.b) it).f3022c) {
                jSONArray.put(listU.get(((h7.b) it).nextInt()));
            }
            android.support.v4.media.session.a.j("anr_reports", jSONArray, new b(listU, 0));
        } catch (Throwable th) {
            v2.a.a(th, c.class);
        }
    }
}
