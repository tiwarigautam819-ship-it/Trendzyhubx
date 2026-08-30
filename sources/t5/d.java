package t5;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import q5.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f5346c = new a(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5347a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5348b;

    public d() {
        ArrayList arrayList = new ArrayList();
        this.f5348b = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (s5.h.f5241a >= 9) {
            arrayList.add(s5.d.h(2, 2));
        }
    }

    private final void b(x5.a aVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            aVar.w();
            return;
        }
        DateFormat dateFormat = (DateFormat) ((ArrayList) this.f5348b).get(0);
        synchronized (((ArrayList) this.f5348b)) {
            str = dateFormat.format(date);
        }
        aVar.C(str);
    }

    @Override // q5.x
    public final void a(x5.a aVar, Object obj) throws IOException {
        String str;
        switch (this.f5347a) {
            case 0:
                Date date = (Date) obj;
                if (date == null) {
                    aVar.w();
                    return;
                }
                DateFormat dateFormat = (DateFormat) ((ArrayList) this.f5348b).get(0);
                synchronized (((ArrayList) this.f5348b)) {
                    str = dateFormat.format(date);
                    break;
                }
                aVar.C(str);
                return;
            case 1:
                b(aVar, obj);
                return;
            default:
                ((p) this.f5348b).f5379c.a(aVar, obj);
                return;
        }
    }

    public String toString() {
        switch (this.f5347a) {
            case 1:
                DateFormat dateFormat = (DateFormat) ((ArrayList) this.f5348b).get(0);
                if (dateFormat instanceof SimpleDateFormat) {
                    return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
                }
                return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
            default:
                return super.toString();
        }
    }

    public d(f fVar, int i6, int i9) {
        ArrayList arrayList = new ArrayList();
        this.f5348b = arrayList;
        Objects.requireNonNull(fVar);
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i6, i9, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i6, i9));
        }
        if (s5.h.f5241a >= 9) {
            arrayList.add(s5.d.h(i6, i9));
        }
    }

    public d(p pVar) {
        this.f5348b = pVar;
    }
}
