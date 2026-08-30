package x1;

import android.content.SharedPreferences;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f5804a;

    public b(int i6) {
        switch (i6) {
            case 1:
                SharedPreferences sharedPreferences = r.a().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
                d7.g.e("getApplicationContext()\n…ME, Context.MODE_PRIVATE)", sharedPreferences);
                this.f5804a = sharedPreferences;
                break;
            default:
                SharedPreferences sharedPreferences2 = r.a().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
                d7.g.e("getApplicationContext()\n…ME, Context.MODE_PRIVATE)", sharedPreferences2);
                this.f5804a = sharedPreferences2;
                break;
        }
    }
}
