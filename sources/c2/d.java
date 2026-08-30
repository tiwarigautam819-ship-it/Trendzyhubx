package c2;

import android.widget.TextView;
import d7.g;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f1029a = new d();

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005a A[Catch: all -> 0x00c5, TRY_LEAVE, TryCatch #1 {all -> 0x00c5, blocks: (B:5:0x000d, B:7:0x0011, B:19:0x0035, B:21:0x003e, B:31:0x005a, B:41:0x0076, B:51:0x0091, B:65:0x00be, B:49:0x008b, B:39:0x0070, B:29:0x0054, B:17:0x002f, B:24:0x0049, B:44:0x0081, B:54:0x009b, B:57:0x00a5, B:59:0x00ab, B:62:0x00b2, B:11:0x001d, B:14:0x0027, B:34:0x0065), top: B:77:0x000d, inners: #0, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0076 A[Catch: all -> 0x00c5, TRY_LEAVE, TryCatch #1 {all -> 0x00c5, blocks: (B:5:0x000d, B:7:0x0011, B:19:0x0035, B:21:0x003e, B:31:0x005a, B:41:0x0076, B:51:0x0091, B:65:0x00be, B:49:0x008b, B:39:0x0070, B:29:0x0054, B:17:0x002f, B:24:0x0049, B:44:0x0081, B:54:0x009b, B:57:0x00a5, B:59:0x00ab, B:62:0x00b2, B:11:0x001d, B:14:0x0027, B:34:0x0065), top: B:77:0x000d, inners: #0, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0091 A[Catch: all -> 0x00c5, TRY_LEAVE, TryCatch #1 {all -> 0x00c5, blocks: (B:5:0x000d, B:7:0x0011, B:19:0x0035, B:21:0x003e, B:31:0x005a, B:41:0x0076, B:51:0x0091, B:65:0x00be, B:49:0x008b, B:39:0x0070, B:29:0x0054, B:17:0x002f, B:24:0x0049, B:44:0x0081, B:54:0x009b, B:57:0x00a5, B:59:0x00ab, B:62:0x00b2, B:11:0x001d, B:14:0x0027, B:34:0x0065), top: B:77:0x000d, inners: #0, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean b(android.view.View r7) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.d.b(android.view.View):boolean");
    }

    public final boolean a(TextView textView) {
        if (v2.a.b(this)) {
            return false;
        }
        try {
            String strI = e.i(textView);
            Pattern patternCompile = Pattern.compile("\\s");
            g.e("compile(...)", patternCompile);
            g.f("input", strI);
            String strReplaceAll = patternCompile.matcher(strI).replaceAll("");
            g.e("replaceAll(...)", strReplaceAll);
            int length = strReplaceAll.length();
            if (length >= 12 && length <= 19) {
                int i6 = 0;
                boolean z5 = false;
                for (int i9 = length - 1; -1 < i9; i9--) {
                    char cCharAt = strReplaceAll.charAt(i9);
                    if (!Character.isDigit(cCharAt)) {
                        return false;
                    }
                    int iDigit = Character.digit((int) cCharAt, 10);
                    if (iDigit < 0) {
                        throw new IllegalArgumentException("Char " + cCharAt + " is not a decimal digit");
                    }
                    if (z5 && (iDigit = iDigit * 2) > 9) {
                        iDigit = (iDigit % 10) + 1;
                    }
                    i6 += iDigit;
                    z5 = !z5;
                }
                if (i6 % 10 == 0) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return false;
        }
    }
}
