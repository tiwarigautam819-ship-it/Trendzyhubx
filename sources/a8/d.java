package a8;

import android.util.Log;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f104a = new d();

    @Override // java.util.logging.Handler
    public final void publish(LogRecord logRecord) {
        int iMin;
        d7.g.f("record", logRecord);
        CopyOnWriteArraySet copyOnWriteArraySet = c.f102a;
        String loggerName = logRecord.getLoggerName();
        d7.g.e("record.loggerName", loggerName);
        int iIntValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        int i6 = iIntValue > level.intValue() ? 5 : logRecord.getLevel().intValue() == level.intValue() ? 4 : 3;
        String message = logRecord.getMessage();
        d7.g.e("record.message", message);
        Throwable thrown = logRecord.getThrown();
        String strO = (String) c.f103b.get(loggerName);
        if (strO == null) {
            strO = k7.g.O(23, loggerName);
        }
        if (Log.isLoggable(strO, i6)) {
            if (thrown != null) {
                message = message + '\n' + Log.getStackTraceString(thrown);
            }
            int length = message.length();
            int i9 = 0;
            while (i9 < length) {
                int iA = k7.g.A(message, '\n', i9, 4);
                if (iA == -1) {
                    iA = length;
                }
                while (true) {
                    iMin = Math.min(iA, i9 + 4000);
                    String strSubstring = message.substring(i9, iMin);
                    d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
                    Log.println(i6, strO, strSubstring);
                    if (iMin >= iA) {
                        break;
                    } else {
                        i9 = iMin;
                    }
                }
                i9 = iMin + 1;
            }
        }
    }

    @Override // java.util.logging.Handler
    public final void close() {
    }

    @Override // java.util.logging.Handler
    public final void flush() {
    }
}
