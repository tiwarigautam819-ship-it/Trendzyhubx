package j0;

import android.view.DisplayCutout;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayCutout f3276a;

    public h(DisplayCutout displayCutout) {
        this.f3276a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f3276a, ((h) obj).f3276a);
    }

    public final int hashCode() {
        return this.f3276a.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f3276a + "}";
    }
}
