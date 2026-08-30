package c4;

import android.os.Process;
import y1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f1044b;

    public /* synthetic */ b(Runnable runnable, int i6) {
        this.f1043a = i6;
        this.f1044b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1043a) {
            case 0:
                Process.setThreadPriority(0);
                this.f1044b.run();
                break;
            case 1:
                try {
                    this.f1044b.run();
                } catch (Exception e9) {
                    j.e("Executor", "Background execution failure.", e9);
                    return;
                }
                break;
            default:
                this.f1044b.run();
                break;
        }
    }

    public String toString() {
        switch (this.f1043a) {
            case 2:
                return this.f1044b.toString();
            default:
                return super.toString();
        }
    }
}
