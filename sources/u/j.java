package u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends h {
    public final /* synthetic */ k h;

    public j(k kVar) {
        this.h = kVar;
    }

    @Override // u.h
    public final String h() {
        i iVar = (i) this.h.f5440a.get();
        if (iVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + iVar.f5436a + "]";
    }
}
