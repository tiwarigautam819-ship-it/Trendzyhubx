package androidx.media;

import a1.a;
import com.engagelab.privates.core.api.WakeMessage;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f766a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f767b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f768c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f769d = -1;

    public final boolean equals(Object obj) {
        int i6;
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f767b == audioAttributesImplBase.f767b) {
            int i9 = this.f768c;
            int i10 = audioAttributesImplBase.f768c;
            int i11 = audioAttributesImplBase.f769d;
            if (i11 == -1) {
                int i12 = audioAttributesImplBase.f766a;
                int i13 = AudioAttributesCompat.f762b;
                if ((i10 & 1) != 1) {
                    i6 = 4;
                    if ((i10 & 4) != 4) {
                        switch (i12) {
                            case 2:
                                i6 = 0;
                                break;
                            case 3:
                                i6 = 8;
                                break;
                            case 4:
                                break;
                            case 5:
                            case 7:
                            case WakeMessage.ACTIVITY /* 8 */:
                            case 9:
                            case 10:
                                i6 = 5;
                                break;
                            case 6:
                                i6 = 2;
                                break;
                            case 11:
                                i6 = 10;
                                break;
                            case 12:
                            default:
                                i6 = 3;
                                break;
                            case 13:
                                i6 = 1;
                                break;
                        }
                    } else {
                        i6 = 6;
                    }
                } else {
                    i6 = 7;
                }
            } else {
                i6 = i11;
            }
            if (i6 == 6) {
                i10 |= 4;
            } else if (i6 == 7) {
                i10 |= 1;
            }
            if (i9 == (i10 & 273) && this.f766a == audioAttributesImplBase.f766a && this.f769d == i11) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f767b), Integer.valueOf(this.f768c), Integer.valueOf(this.f766a), Integer.valueOf(this.f769d)});
    }

    public final String toString() {
        String strI;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f769d != -1) {
            sb.append(" stream=");
            sb.append(this.f769d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i6 = this.f766a;
        int i9 = AudioAttributesCompat.f762b;
        switch (i6) {
            case 0:
                strI = "USAGE_UNKNOWN";
                break;
            case 1:
                strI = "USAGE_MEDIA";
                break;
            case 2:
                strI = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strI = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strI = "USAGE_ALARM";
                break;
            case 5:
                strI = "USAGE_NOTIFICATION";
                break;
            case 6:
                strI = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strI = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                strI = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strI = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strI = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strI = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strI = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strI = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strI = "USAGE_GAME";
                break;
            case 15:
            default:
                strI = a.i(i6, "unknown usage ");
                break;
            case 16:
                strI = "USAGE_ASSISTANT";
                break;
        }
        sb.append(strI);
        sb.append(" content=");
        sb.append(this.f767b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f768c).toUpperCase());
        return sb.toString();
    }
}
