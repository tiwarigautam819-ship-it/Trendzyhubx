package b0;

import android.content.res.Resources;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources.Theme f873b;

    public j(Resources resources, Resources.Theme theme) {
        this.f872a = resources;
        this.f873b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && j.class == obj.getClass()) {
            j jVar = (j) obj;
            if (this.f872a.equals(jVar.f872a) && Objects.equals(this.f873b, jVar.f873b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f872a, this.f873b);
    }
}
