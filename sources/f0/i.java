package f0;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocaleList f2524a;

    public i(Object obj) {
        this.f2524a = com.getcapacitor.a.f(obj);
    }

    @Override // f0.h
    public final String a() {
        return this.f2524a.toLanguageTags();
    }

    @Override // f0.h
    public final Object b() {
        return this.f2524a;
    }

    public final boolean equals(Object obj) {
        return this.f2524a.equals(((h) obj).b());
    }

    @Override // f0.h
    public final Locale get(int i6) {
        return this.f2524a.get(i6);
    }

    public final int hashCode() {
        return this.f2524a.hashCode();
    }

    @Override // f0.h
    public final boolean isEmpty() {
        return this.f2524a.isEmpty();
    }

    @Override // f0.h
    public final int size() {
        return this.f2524a.size();
    }

    public final String toString() {
        return this.f2524a.toString();
    }
}
