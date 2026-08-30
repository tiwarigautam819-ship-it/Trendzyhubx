package com.getcapacitor;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1353a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f1356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Serializable f1357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1358f;

    public /* synthetic */ p(MessageHandler messageHandler, String str, String str2, String str3, String str4) {
        this.f1355c = messageHandler;
        this.f1354b = str;
        this.f1356d = str2;
        this.f1357e = str3;
        this.f1358f = str4;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        switch (this.f1353a) {
            case 0:
                ((MessageHandler) this.f1355c).lambda$callCordovaPluginMethod$2(this.f1354b, (String) this.f1356d, (String) this.f1357e, (String) this.f1358f);
                return;
            default:
                URL url = (URL) this.f1355c;
                d7.k kVar = (d7.k) this.f1356d;
                ReentrantLock reentrantLock = (ReentrantLock) this.f1357e;
                Condition condition = (Condition) this.f1358f;
                String str = this.f1354b;
                d7.g.f("$kid", str);
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                d7.g.d("null cannot be cast to non-null type java.net.HttpURLConnection", uRLConnectionOpenConnection);
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                try {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        d7.g.e("connection.inputStream", inputStream);
                        String strG = d4.a.g(new BufferedReader(new InputStreamReader(inputStream, k7.a.f3570a), 8192));
                        httpURLConnection.getInputStream().close();
                        kVar.f2298b = new JSONObject(strG).optString(str);
                        httpURLConnection.disconnect();
                        reentrantLock.lock();
                        try {
                            condition.signal();
                        } finally {
                        }
                        break;
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        reentrantLock.lock();
                        try {
                            condition.signal();
                            throw th;
                        } finally {
                        }
                    }
                } catch (Exception e9) {
                    String name = x2.a.class.getName();
                    String message = e9.getMessage();
                    if (message == null) {
                        message = "Error getting public key";
                    }
                    Log.d(name, message);
                    httpURLConnection.disconnect();
                    reentrantLock.lock();
                    try {
                        condition.signal();
                    } finally {
                    }
                    break;
                }
                return;
        }
    }

    public /* synthetic */ p(URL url, d7.k kVar, String str, ReentrantLock reentrantLock, Condition condition) {
        this.f1355c = url;
        this.f1356d = kVar;
        this.f1354b = str;
        this.f1357e = reentrantLock;
        this.f1358f = condition;
    }
}
