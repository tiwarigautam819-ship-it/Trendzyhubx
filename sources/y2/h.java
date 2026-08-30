package y2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.h0;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f6184e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w f6183d = new w(7);
    public static final Parcelable.Creator<h> CREATOR = new n4.e(17);

    public h(Parcel parcel) {
        super(parcel);
        this.f6185c = "device_auth";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // y2.t
    public final String e() {
        return this.f6185c;
    }

    @Override // y2.t
    public final int k(m mVar) {
        d7.g.f("request", mVar);
        h0 h0VarE = d().e();
        if (h0VarE == null || h0VarE.isFinishing()) {
            return 1;
        }
        g gVar = new g();
        gVar.L(h0VarE.getSupportFragmentManager(), "login_with_facebook");
        gVar.U(mVar);
        return 1;
    }

    public h(o oVar) {
        this.f6246b = oVar;
        this.f6185c = "device_auth";
    }
}
