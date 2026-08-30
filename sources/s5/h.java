package s5;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f5241a;

    static {
        int i6;
        String property = System.getProperty("java.version");
        try {
            String[] strArrSplit = property.split("[._]");
            i6 = Integer.parseInt(strArrSplit[0]);
            if (i6 == 1 && strArrSplit.length > 1) {
                i6 = Integer.parseInt(strArrSplit[1]);
            }
        } catch (NumberFormatException unused) {
            i6 = -1;
        }
        if (i6 == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i9 = 0; i9 < property.length(); i9++) {
                    char cCharAt = property.charAt(i9);
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    sb.append(cCharAt);
                }
                i6 = Integer.parseInt(sb.toString());
            } catch (NumberFormatException unused2) {
                i6 = -1;
            }
        }
        if (i6 == -1) {
            i6 = 6;
        }
        f5241a = i6;
    }
}
