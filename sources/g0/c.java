package g0;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f2820c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Objects.equals(this.f2818a, cVar.f2818a) && Objects.equals(this.f2819b, cVar.f2819b) && Objects.equals(this.f2820c, cVar.f2820c);
    }

    public final int hashCode() {
        return Objects.hash(this.f2818a, this.f2819b, this.f2820c);
    }
}
