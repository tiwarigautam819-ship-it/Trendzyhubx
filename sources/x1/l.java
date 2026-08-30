package x1;

import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class l extends RuntimeException {
    public l(String str) {
        super(str);
        Random random = new Random();
        if (str == null || !r.f5931o.get() || random.nextInt(100) <= 50) {
            return;
        }
        q2.q.a(new com.google.firebase.messaging.j0(12, str), q2.o.ErrorReport);
    }

    @Override // java.lang.Throwable
    public String toString() {
        String message = getMessage();
        return message == null ? "" : message;
    }
}
