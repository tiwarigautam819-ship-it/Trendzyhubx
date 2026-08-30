package w3;

import com.google.android.gms.common.internal.l;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface a {
    Set a();

    void connect(com.google.android.gms.common.internal.d dVar);

    void disconnect();

    void disconnect(String str);

    v3.c[] getAvailableFeatures();

    String getEndpointPackageName();

    String getLastDisconnectMessage();

    int getMinApkVersion();

    void getRemoteService(l lVar, Set set);

    boolean isConnected();

    boolean isConnecting();

    void onUserSignOut(com.google.android.gms.common.internal.e eVar);

    boolean requiresGooglePlayServices();

    boolean requiresSignIn();
}
