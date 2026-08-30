package j0;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static f b(View view, f fVar) {
        ContentInfo contentInfoI = fVar.f3267a.i();
        Objects.requireNonNull(contentInfoI);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoI);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoI ? fVar : new f(new o5.c(contentInfoPerformReceiveContent));
    }
}
