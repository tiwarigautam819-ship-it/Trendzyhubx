package q5;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {
    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            x5.a aVar = new x5.a(stringWriter);
            aVar.f6023e = true;
            t5.p pVar = t5.s.f5384a;
            t5.h.b(aVar, this);
            return stringWriter.toString();
        } catch (IOException e9) {
            throw new AssertionError(e9);
        }
    }
}
