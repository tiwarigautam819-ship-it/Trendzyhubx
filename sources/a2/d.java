package a2;

import androidx.fragment.app.m1;
import com.engagelab.privates.core.api.WakeMessage;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29b;

    public d(int i6, int i9) {
        a1.a.n(i9, "field");
        this.f28a = i6;
        this.f29b = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f28a == dVar.f28a && this.f29b == dVar.f29b;
    }

    public final int hashCode() {
        int i6 = this.f28a;
        return m1.e(this.f29b) + ((i6 == 0 ? 0 : m1.e(i6)) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("SectionCustomEventFieldMapping(section=");
        sb.append(a1.a.p(this.f28a));
        sb.append(", field=");
        switch (this.f29b) {
            case 1:
                str = "VALUE_TO_SUM";
                break;
            case 2:
                str = "EVENT_TIME";
                break;
            case 3:
                str = "EVENT_NAME";
                break;
            case 4:
                str = "CONTENT_IDS";
                break;
            case 5:
                str = "CONTENTS";
                break;
            case 6:
                str = "CONTENT_TYPE";
                break;
            case 7:
                str = "DESCRIPTION";
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                str = "LEVEL";
                break;
            case 9:
                str = "MAX_RATING_VALUE";
                break;
            case 10:
                str = "NUM_ITEMS";
                break;
            case 11:
                str = "PAYMENT_INFO_AVAILABLE";
                break;
            case 12:
                str = "REGISTRATION_METHOD";
                break;
            case 13:
                str = "SEARCH_STRING";
                break;
            case 14:
                str = "SUCCESS";
                break;
            case 15:
                str = "ORDER_ID";
                break;
            case 16:
                str = "AD_TYPE";
                break;
            case 17:
                str = "CURRENCY";
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
