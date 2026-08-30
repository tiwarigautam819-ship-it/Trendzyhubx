package q2;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.webkit.WebSettings;
import com.capacitorjs.plugins.share.SharePlugin;
import com.facebook.CustomTabActivity;
import com.facebook.CustomTabMainActivity;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Set;
import java.util.regex.Pattern;
import org.apache.cordova.CoreAndroid;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static d f4723c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4725b;

    public static final /* synthetic */ d a() {
        if (v2.a.b(d.class)) {
            return null;
        }
        try {
            return f4723c;
        } catch (Throwable th) {
            v2.a.a(th, d.class);
            return null;
        }
    }

    public void b() {
        if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
            Log.d("FirebaseMessaging", "Connectivity change received registered");
        }
        ((com.google.firebase.messaging.c0) this.f4725b).f2065c.f2033b.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void finalize() throws Throwable {
        switch (this.f4724a) {
            case 0:
                if (!v2.a.b(this)) {
                    try {
                        if (!v2.a.b(this)) {
                            try {
                                y0.b bVarA = y0.b.a((Context) this.f4725b);
                                d7.g.e("getInstance(applicationContext)", bVarA);
                                bVarA.d(this);
                            } catch (Throwable th) {
                                v2.a.a(th, this);
                                return;
                            }
                            break;
                        }
                    } catch (Throwable th2) {
                        v2.a.a(th2, this);
                        return;
                    }
                }
                break;
            default:
                super.finalize();
                break;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f4724a) {
            case 0:
                if (!v2.a.b(this)) {
                    try {
                        y1.k kVar = new y1.k(context, (String) null);
                        StringBuilder sb = new StringBuilder("bf_");
                        sb.append(intent != null ? intent.getStringExtra("event_name") : null);
                        String string = sb.toString();
                        Bundle bundleExtra = intent != null ? intent.getBundleExtra("event_args") : null;
                        Bundle bundle = new Bundle();
                        Set<String> setKeySet = bundleExtra != null ? bundleExtra.keySet() : null;
                        if (setKeySet != null) {
                            for (String str : setKeySet) {
                                d7.g.e("key", str);
                                Pattern patternCompile = Pattern.compile("[^0-9a-zA-Z _-]");
                                d7.g.e("compile(...)", patternCompile);
                                String strReplaceAll = patternCompile.matcher(str).replaceAll("-");
                                d7.g.e("replaceAll(...)", strReplaceAll);
                                Pattern patternCompile2 = Pattern.compile("^[ -]*");
                                d7.g.e("compile(...)", patternCompile2);
                                String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("");
                                d7.g.e("replaceAll(...)", strReplaceAll2);
                                Pattern patternCompile3 = Pattern.compile("[ -]*$");
                                d7.g.e("compile(...)", patternCompile3);
                                String strReplaceAll3 = patternCompile3.matcher(strReplaceAll2).replaceAll("");
                                d7.g.e("replaceAll(...)", strReplaceAll3);
                                bundle.putString(strReplaceAll3, (String) bundleExtra.get(str));
                            }
                        }
                        x1.r rVar = x1.r.f5918a;
                        if (x1.j0.c()) {
                            kVar.d(string, bundle);
                        }
                    } catch (Throwable th) {
                        v2.a.a(th, this);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                com.google.firebase.messaging.c0 c0Var = (com.google.firebase.messaging.c0) this.f4725b;
                if (c0Var != null && c0Var.a()) {
                    if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
                        Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                    }
                    com.google.firebase.messaging.c0 c0Var2 = (com.google.firebase.messaging.c0) this.f4725b;
                    c0Var2.f2065c.getClass();
                    FirebaseMessaging.b(c0Var2, 0L);
                    ((com.google.firebase.messaging.c0) this.f4725b).f2065c.f2033b.unregisterReceiver(this);
                    this.f4725b = null;
                }
                break;
            case 2:
                ((g.c0) this.f4725b).g();
                break;
            case 3:
                ((WebSettings) this.f4725b).getUserAgentString();
                break;
            case 4:
                CoreAndroid coreAndroid = (CoreAndroid) this.f4725b;
                if (intent != null && intent.getAction().equals("android.intent.action.PHONE_STATE") && intent.hasExtra("state")) {
                    String stringExtra = intent.getStringExtra("state");
                    if (stringExtra.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                        coreAndroid.webView.getPluginManager().k("telephone", "ringing");
                    } else if (stringExtra.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                        coreAndroid.webView.getPluginManager().k("telephone", "offhook");
                    } else if (stringExtra.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                        coreAndroid.webView.getPluginManager().k("telephone", "idle");
                    }
                    break;
                }
                break;
            case 5:
                SharePlugin sharePlugin = (SharePlugin) this.f4725b;
                if (Build.VERSION.SDK_INT >= 33) {
                    sharePlugin.chosenComponent = (ComponentName) intent.getParcelableExtra("android.intent.extra.CHOSEN_COMPONENT", ComponentName.class);
                } else {
                    sharePlugin.chosenComponent = sharePlugin.getParcelableExtraLegacy(intent, "android.intent.extra.CHOSEN_COMPONENT");
                }
                break;
            case 6:
                d7.g.f("context", context);
                d7.g.f("intent", intent);
                ((CustomTabActivity) this.f4725b).finish();
                break;
            default:
                d7.g.f("context", context);
                d7.g.f("intent", intent);
                CustomTabMainActivity customTabMainActivity = (CustomTabMainActivity) this.f4725b;
                Intent intent2 = new Intent(customTabMainActivity, (Class<?>) CustomTabMainActivity.class);
                int i6 = CustomTabMainActivity.f1317c;
                intent2.setAction("CustomTabMainActivity.action_refresh");
                intent2.putExtra("CustomTabMainActivity.extra_url", intent.getStringExtra("CustomTabMainActivity.extra_url"));
                intent2.addFlags(603979776);
                customTabMainActivity.startActivity(intent2);
                break;
        }
    }

    public /* synthetic */ d(int i6, Object obj) {
        this.f4724a = i6;
        this.f4725b = obj;
    }

    public d(Context context) {
        this.f4724a = 0;
        Context applicationContext = context.getApplicationContext();
        d7.g.e("context.applicationContext", applicationContext);
        this.f4725b = applicationContext;
    }
}
