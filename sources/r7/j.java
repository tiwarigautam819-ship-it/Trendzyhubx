package r7;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements x1.x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5070a;

    public j() {
        this.f5070a = new ArrayList(20);
    }

    @Override // x1.x
    public void a(String str, String str2) {
        d7.g.f("value", str2);
        this.f5070a.add(String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{str, URLEncoder.encode(str2, "UTF-8")}, 2)));
    }

    public void b(String str, String str2) {
        d7.g.f("name", str);
        d7.g.f("value", str2);
        ArrayList arrayList = this.f5070a;
        arrayList.add(str);
        arrayList.add(k7.g.P(str2).toString());
    }

    public k c() {
        return new k((String[]) this.f5070a.toArray(new String[0]));
    }

    public void d(String str) {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f5070a;
            if (i6 >= arrayList.size()) {
                return;
            }
            if (str.equalsIgnoreCase((String) arrayList.get(i6))) {
                arrayList.remove(i6);
                arrayList.remove(i6);
                i6 -= 2;
            }
            i6 += 2;
        }
    }

    public j(ArrayList arrayList) {
        this.f5070a = arrayList;
    }
}
