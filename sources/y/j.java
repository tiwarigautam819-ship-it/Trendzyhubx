package y;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f6060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f6061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CharSequence f6065f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final PendingIntent f6066g;

    public j(String str, PendingIntent pendingIntent) {
        IconCompat iconCompatB = IconCompat.b(R.drawable.common_full_open_on_phone);
        Bundle bundle = new Bundle();
        this.f6063d = true;
        this.f6061b = iconCompatB;
        if (iconCompatB.d() == 2) {
            this.f6064e = iconCompatB.c();
        }
        this.f6065f = p.b(str);
        this.f6066g = pendingIntent;
        this.f6060a = bundle;
        this.f6062c = true;
        this.f6063d = true;
    }
}
