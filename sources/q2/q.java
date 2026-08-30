package q2;

import com.engagelab.privates.core.api.WakeMessage;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f4799a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f4800b = new HashMap();

    public static final void a(n nVar, o oVar) {
        d7.g.f("feature", oVar);
        s.c(new p(nVar, oVar));
    }

    public static final boolean b(o oVar) {
        boolean z5;
        d7.g.f("feature", oVar);
        boolean z8 = false;
        if (o.Unknown != oVar) {
            if (o.Core != oVar) {
                String string = x1.r.a().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString("FBSDKFeature" + oVar, null);
                if (string == null || !string.equals("18.1.3")) {
                    int i6 = oVar.f4784a;
                    o oVarA = (i6 & 255) > 0 ? g.a(i6 & (-256)) : (65280 & i6) > 0 ? g.a(i6 & (-65536)) : (16711680 & i6) > 0 ? g.a(i6 & (-16777216)) : g.a(0);
                    if (oVarA == oVar) {
                        switch (oVar.ordinal()) {
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case WakeMessage.ACTIVITY /* 8 */:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 37:
                            case 38:
                            case 39:
                            case 41:
                            case 42:
                            case 43:
                                break;
                            case 34:
                            case 35:
                            case 36:
                            case 40:
                            default:
                                z8 = true;
                                break;
                        }
                        return s.b("FBSDKFeature" + oVar, x1.r.b(), z8);
                    }
                    if (b(oVarA)) {
                        switch (oVar.ordinal()) {
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case WakeMessage.ACTIVITY /* 8 */:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 37:
                            case 38:
                            case 39:
                            case 41:
                            case 42:
                            case 43:
                                z5 = false;
                                break;
                            case 34:
                            case 35:
                            case 36:
                            case 40:
                            default:
                                z5 = true;
                                break;
                        }
                        if (s.b("FBSDKFeature" + oVar, x1.r.b(), z5)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }
}
