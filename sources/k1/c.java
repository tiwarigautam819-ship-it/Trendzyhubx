package k1;

import android.os.Build;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashSet f3495c = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3497b;

    public c(String str, String str2) {
        this.f3496a = str;
        this.f3497b = str2;
        f3495c.add(this);
    }

    public abstract boolean a();

    public boolean b() {
        HashSet hashSet = a.f3493a;
        String str = this.f3497b;
        if (hashSet.contains(str)) {
            return true;
        }
        String str2 = Build.TYPE;
        return ("eng".equals(str2) || "userdebug".equals(str2)) && hashSet.contains(str.concat(":dev"));
    }
}
