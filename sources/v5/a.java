package v5;

import java.io.IOException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t5.a f5624c = new t5.a(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t5.a f5625d = new t5.a(5);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t5.a f5626e = new t5.a(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5628b;

    public a(int i6) {
        this.f5627a = i6;
        switch (i6) {
            case 1:
                this.f5628b = new SimpleDateFormat("hh:mm:ss a");
                break;
            default:
                this.f5628b = new SimpleDateFormat("MMM d, yyyy");
                break;
        }
    }

    private final void b(x5.a aVar, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            aVar.w();
            return;
        }
        synchronized (this) {
            str = ((SimpleDateFormat) this.f5628b).format((Date) time);
        }
        aVar.C(str);
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        String str;
        switch (this.f5627a) {
            case 0:
                java.sql.Date date = (java.sql.Date) obj;
                if (date == null) {
                    aVar.w();
                    return;
                }
                synchronized (this) {
                    str = ((SimpleDateFormat) this.f5628b).format((Date) date);
                    break;
                }
                aVar.C(str);
                return;
            case 1:
                b(aVar, obj);
                return;
            default:
                ((x) this.f5628b).a(aVar, (Timestamp) obj);
                return;
        }
    }

    public a(x xVar) {
        this.f5627a = 2;
        this.f5628b = xVar;
    }
}
