package org.apache.cordova;

import com.engagelab.privates.core.api.WakeMessage;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m0 f4521b;

    public g0(String str) {
        str.getClass();
        this.f4520a = str;
        this.f4521b = null;
    }

    public static int c(m0 m0Var) {
        int i6 = m0Var.f4549b;
        ArrayList arrayList = m0Var.f4553f;
        switch (i6) {
            case 1:
                return m0Var.f4551d.length() + 1;
            case 2:
            default:
                return m0Var.a().length();
            case 3:
                return m0Var.a().length() + 1;
            case 4:
            case 5:
                return 1;
            case 6:
                return m0Var.a().length() + 1;
            case 7:
                return m0Var.a().length() + 1;
            case WakeMessage.ACTIVITY /* 8 */:
                int length = 1;
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    int iC = c((m0) arrayList.get(i9));
                    length += String.valueOf(iC).length() + 1 + iC;
                }
                return length;
        }
    }

    public static void e(StringBuilder sb, m0 m0Var) {
        int i6 = m0Var.f4549b;
        ArrayList arrayList = m0Var.f4553f;
        switch (i6) {
            case 1:
                sb.append('s');
                sb.append(m0Var.f4551d);
                break;
            case 2:
            default:
                sb.append(m0Var.a());
                break;
            case 3:
                sb.append('n');
                sb.append(m0Var.a());
                break;
            case 4:
                sb.append(m0Var.a().charAt(0));
                break;
            case 5:
                sb.append('N');
                break;
            case 6:
                sb.append('A');
                sb.append(m0Var.a());
                break;
            case 7:
                sb.append('S');
                sb.append(m0Var.a());
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                sb.append('M');
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    m0 m0Var2 = (m0) arrayList.get(i9);
                    sb.append(String.valueOf(c(m0Var2)));
                    sb.append(' ');
                    e(sb, m0Var2);
                }
                break;
        }
    }

    public final void a(StringBuilder sb) {
        m0 m0Var = this.f4521b;
        int i6 = m0Var.f4549b;
        ArrayList arrayList = m0Var.f4553f;
        if (i6 == 5) {
            sb.append("null");
            return;
        }
        if (i6 == 6) {
            sb.append("cordova.require('cordova/base64').toArrayBuffer('");
            sb.append(m0Var.a());
            sb.append("')");
            return;
        }
        if (i6 == 7) {
            sb.append("atob('");
            sb.append(m0Var.a());
            sb.append("')");
        } else {
            if (i6 != 8) {
                sb.append(m0Var.a());
                return;
            }
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                new g0((m0) arrayList.get(i9), this.f4520a).a(sb);
                if (i9 < size - 1) {
                    sb.append(",");
                }
            }
        }
    }

    public final int b() {
        String str = this.f4520a;
        m0 m0Var = this.f4521b;
        if (m0Var == null) {
            return str.length() + 1;
        }
        return c(m0Var) + str.length() + String.valueOf(m0Var.f4548a).length() + 3 + 1;
    }

    public final void d(StringBuilder sb) {
        String str = this.f4520a;
        m0 m0Var = this.f4521b;
        if (m0Var == null) {
            sb.append(str);
            return;
        }
        int i6 = m0Var.f4548a;
        boolean z5 = true;
        if (i6 != 1 && i6 != 0) {
            z5 = false;
        }
        sb.append("cordova.callbackFromNative('");
        sb.append(str);
        sb.append("',");
        sb.append(z5);
        sb.append(",");
        sb.append(i6);
        sb.append(",[");
        a(sb);
        sb.append("],");
        sb.append(m0Var.f4550c);
        sb.append(");");
    }

    public g0(m0 m0Var, String str) {
        if (str != null && m0Var != null) {
            this.f4520a = str;
            this.f4521b = m0Var;
            return;
        }
        throw null;
    }
}
