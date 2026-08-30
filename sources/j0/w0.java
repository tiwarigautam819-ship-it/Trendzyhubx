package j0;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class w0 extends v0 {
    public w0(b1 b1Var, WindowInsets windowInsets) {
        super(b1Var, windowInsets);
    }

    @Override // j0.z0
    public b1 a() {
        return b1.g(this.f3315c.consumeDisplayCutout(), null);
    }

    @Override // j0.z0
    public h e() {
        DisplayCutout displayCutout = this.f3315c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new h(displayCutout);
    }

    @Override // j0.u0, j0.z0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w0)) {
            return false;
        }
        w0 w0Var = (w0) obj;
        return Objects.equals(this.f3315c, w0Var.f3315c) && Objects.equals(this.f3319g, w0Var.f3319g);
    }

    @Override // j0.z0
    public int hashCode() {
        return this.f3315c.hashCode();
    }
}
