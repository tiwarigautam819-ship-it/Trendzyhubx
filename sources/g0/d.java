package g0;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s.i f2821a = new s.i(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f2822b = new a(0);

    public static g.j a(Context context, List list) {
        z7.d.a("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i6 = 0; i6 < list.size(); i6++) {
                e eVar = (e) list.get(i6);
                ProviderInfo providerInfoB = b(context.getPackageManager(), eVar, context.getResources());
                if (providerInfoB == null) {
                    g.j jVar = new g.j();
                    jVar.f2742a = 1;
                    jVar.f2743b = Collections.singletonList(null);
                    return jVar;
                }
                arrayList.add(c(context, eVar, providerInfoB.authority));
            }
            return new g.j(arrayList, 1);
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo b(PackageManager packageManager, e eVar, Resources resources) {
        a aVar = f2822b;
        s.i iVar = f2821a;
        z7.d.a("FontProvider.getProvider");
        try {
            List listH = eVar.f2826d;
            String str = eVar.f2823a;
            String str2 = eVar.f2824b;
            if (listH == null) {
                listH = b0.b.h(resources, 0);
            }
            c cVar = new c();
            cVar.f2818a = str;
            cVar.f2819b = str2;
            cVar.f2820c = listH;
            ProviderInfo providerInfo = (ProviderInfo) iVar.get(cVar);
            if (providerInfo != null) {
                return providerInfo;
            }
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, aVar);
            for (int i6 = 0; i6 < listH.size(); i6++) {
                ArrayList arrayList2 = new ArrayList((Collection) listH.get(i6));
                Collections.sort(arrayList2, aVar);
                if (arrayList.size() == arrayList2.size()) {
                    for (int i9 = 0; i9 < arrayList.size(); i9++) {
                        if (!Arrays.equals((byte[]) arrayList.get(i9), (byte[]) arrayList2.get(i9))) {
                            break;
                        }
                    }
                    iVar.put(cVar, providerInfoResolveContentProvider);
                    return providerInfoResolveContentProvider;
                }
            }
            Trace.endSection();
            return null;
        } finally {
            Trace.endSection();
        }
    }

    public static j[] c(Context context, e eVar, String str) {
        z7.d.a("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).appendPath("file").build();
            b hVar = Build.VERSION.SDK_INT < 24 ? new k1.h(context, uriBuild) : new o5.c(context, uriBuild);
            Cursor cursorC = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                z7.d.a("ContentQueryWrapper.query");
                try {
                    cursorC = hVar.c(uriBuild, strArr, new String[]{eVar.f2825c});
                    Trace.endSection();
                    if (cursorC != null && cursorC.getCount() > 0) {
                        int columnIndex = cursorC.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursorC.getColumnIndex("_id");
                        int columnIndex3 = cursorC.getColumnIndex("file_id");
                        int columnIndex4 = cursorC.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorC.getColumnIndex("font_weight");
                        int columnIndex6 = cursorC.getColumnIndex("font_italic");
                        while (cursorC.moveToNext()) {
                            int i6 = columnIndex != -1 ? cursorC.getInt(columnIndex) : 0;
                            arrayList2.add(new j(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorC.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorC.getLong(columnIndex3)), columnIndex4 != -1 ? cursorC.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorC.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorC.getInt(columnIndex6) == 1, i6));
                        }
                        arrayList = arrayList2;
                    }
                    if (cursorC != null) {
                        cursorC.close();
                    }
                    hVar.close();
                    return (j[]) arrayList.toArray(new j[0]);
                } finally {
                }
            } catch (Throwable th) {
                if (cursorC != null) {
                    cursorC.close();
                }
                hVar.close();
                throw th;
            }
        } finally {
        }
    }
}
