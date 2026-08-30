package a2;

import androidx.fragment.app.m1;
import com.engagelab.privates.core.api.WakeMessage;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31b;

    public e(int i6, int i9) {
        a1.a.n(i6, "section");
        this.f30a = i6;
        this.f31b = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f30a == eVar.f30a && this.f31b == eVar.f31b;
    }

    public final int hashCode() {
        int iE = m1.e(this.f30a) * 31;
        int i6 = this.f31b;
        return iE + (i6 == 0 ? 0 : m1.e(i6));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("SectionFieldMapping(section=");
        sb.append(a1.a.p(this.f30a));
        sb.append(", field=");
        switch (this.f31b) {
            case 1:
                str = "ANON_ID";
                break;
            case 2:
                str = "FB_LOGIN_ID";
                break;
            case 3:
                str = "MAD_ID";
                break;
            case 4:
                str = "PAGE_ID";
                break;
            case 5:
                str = "PAGE_SCOPED_USER_ID";
                break;
            case 6:
                str = "USER_DATA";
                break;
            case 7:
                str = "ADV_TE";
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                str = "APP_TE";
                break;
            case 9:
                str = "CONSIDER_VIEWS";
                break;
            case 10:
                str = "DEVICE_TOKEN";
                break;
            case 11:
                str = "EXT_INFO";
                break;
            case 12:
                str = "INCLUDE_DWELL_DATA";
                break;
            case 13:
                str = "INCLUDE_VIDEO_DATA";
                break;
            case 14:
                str = "INSTALL_REFERRER";
                break;
            case 15:
                str = "INSTALLER_PACKAGE";
                break;
            case 16:
                str = "RECEIPT_DATA";
                break;
            case 17:
                str = "URL_SCHEMES";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append(')');
        return sb.toString();
    }
}
