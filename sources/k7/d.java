package k7;

import com.google.android.gms.internal.measurement.y4;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends s6.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y4 f3582a;

    public d(y4 y4Var) {
        this.f3582a = y4Var;
    }

    @Override // s6.c
    public final int a() {
        return ((Matcher) this.f3582a.f1990b).groupCount() + 1;
    }

    @Override // s6.c, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        String strGroup = ((Matcher) this.f3582a.f1990b).group(i6);
        return strGroup == null ? "" : strGroup;
    }

    @Override // s6.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // s6.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }
}
