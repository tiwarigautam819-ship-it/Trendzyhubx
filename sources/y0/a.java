package y0;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntentFilter f6095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BroadcastReceiver f6096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6098d;

    public a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.f6095a = intentFilter;
        this.f6096b = broadcastReceiver;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.f6096b);
        sb.append(" filter=");
        sb.append(this.f6095a);
        if (this.f6098d) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
