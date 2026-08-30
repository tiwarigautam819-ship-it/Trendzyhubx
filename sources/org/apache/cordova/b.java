package org.apache.cordova;

import android.net.Uri;
import com.getcapacitor.Bridge;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f4493a = new ArrayList();

    public final void a(String str) {
        String str2 = "*";
        if (this.f4493a != null) {
            try {
                if (str.compareTo("*") == 0) {
                    this.f4493a = null;
                    return;
                }
                Matcher matcher = Pattern.compile("^((\\*|[A-Za-z-]+):(//)?)?(\\*|((\\*\\.)?[^*/:]+))?(:(\\d+))?(/.*)?").matcher(str);
                if (matcher.matches()) {
                    String strGroup = matcher.group(2);
                    String strGroup2 = matcher.group(4);
                    if ((!"file".equals(strGroup) && !FirebaseAnalytics.Param.CONTENT.equals(strGroup)) || strGroup2 != null) {
                        str2 = strGroup2;
                    }
                    String strGroup3 = matcher.group(8);
                    String strGroup4 = matcher.group(9);
                    if (strGroup != null) {
                        this.f4493a.add(new a(strGroup, str2, strGroup3, strGroup4));
                    } else {
                        this.f4493a.add(new a(Bridge.CAPACITOR_HTTP_SCHEME, str2, strGroup3, strGroup4));
                        this.f4493a.add(new a(Bridge.CAPACITOR_HTTPS_SCHEME, str2, strGroup3, strGroup4));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final boolean b(String str) {
        if (this.f4493a == null) {
            return true;
        }
        Uri uri = Uri.parse(str);
        ArrayList arrayList = this.f4493a;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            a aVar = (a) obj;
            aVar.getClass();
            try {
                Pattern pattern = aVar.f4488a;
                if (pattern == null || pattern.matcher(uri.getScheme()).matches()) {
                    Pattern pattern2 = aVar.f4489b;
                    if (pattern2 == null || pattern2.matcher(uri.getHost()).matches()) {
                        Integer num = aVar.f4490c;
                        if (num == null || num.equals(Integer.valueOf(uri.getPort()))) {
                            Pattern pattern3 = aVar.f4491d;
                            if (pattern3 == null || pattern3.matcher(uri.getPath()).matches()) {
                                return true;
                            }
                        }
                    }
                }
            } catch (Exception e9) {
                e9.toString();
            }
        }
        return false;
    }
}
