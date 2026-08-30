package com.engagelab.privates.push.platform.google.callback;

import android.app.Service;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.w;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTGoogleCallback extends FirebaseMessagingService {
    private static final String TAG = "MTGoogleCallback";
    private MTGoogleCallbackImp mtGoogleCallbackImp = null;

    public static FirebaseMessagingService getFirebaseMessagingService(Service service) {
        return new MTGoogleCallbackImp(service);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mtGoogleCallbackImp = new MTGoogleCallbackImp(this);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(w wVar) {
        try {
            this.mtGoogleCallbackImp.onMessageReceived(wVar);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("onMessageReceived failed "), TAG);
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        try {
            this.mtGoogleCallbackImp.onNewToken(str);
        } catch (Throwable th) {
            x.j(th, new StringBuilder("onNewToken failed "), TAG);
        }
    }
}
