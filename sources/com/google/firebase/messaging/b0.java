package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f2061a;

    public b0(Context context) {
        boolean zIsEmpty;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f2061a = sharedPreferences;
        File file = new File(context.getNoBackupFilesDir(), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                synchronized (this) {
                    zIsEmpty = sharedPreferences.getAll().isEmpty();
                }
                if (zIsEmpty) {
                    return;
                }
                Log.i("FirebaseMessaging", "App restored, clearing state");
                b();
            }
        } catch (IOException e9) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Error creating file in no backup dir: " + e9.getMessage());
            }
        }
    }

    public synchronized void a() {
        try {
            long j3 = this.f2061a.getLong("fire-count", 0L);
            String key = "";
            String str = null;
            for (Map.Entry<String, ?> entry : this.f2061a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    for (String str2 : (Set) entry.getValue()) {
                        if (str == null || str.compareTo(str2) > 0) {
                            key = entry.getKey();
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet = new HashSet(this.f2061a.getStringSet(key, new HashSet()));
            hashSet.remove(str);
            this.f2061a.edit().putStringSet(key, hashSet).putLong("fire-count", j3 - 1).commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void b() {
        this.f2061a.edit().clear().commit();
    }

    public synchronized void c() {
        try {
            SharedPreferences.Editor editorEdit = this.f2061a.edit();
            int i6 = 0;
            for (Map.Entry<String, ?> entry : this.f2061a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set set = (Set) entry.getValue();
                    String strE = e(System.currentTimeMillis());
                    String key = entry.getKey();
                    if (set.contains(strE)) {
                        HashSet hashSet = new HashSet();
                        hashSet.add(strE);
                        i6++;
                        editorEdit.putStringSet(key, hashSet);
                    } else {
                        editorEdit.remove(key);
                    }
                }
            }
            if (i6 == 0) {
                editorEdit.remove("fire-count");
            } else {
                editorEdit.putLong("fire-count", i6);
            }
            editorEdit.commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized ArrayList d() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.f2061a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(e(System.currentTimeMillis()));
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new e5.a(entry.getKey(), new ArrayList(hashSet)));
                    }
                }
            }
            m(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public synchronized String e(long j3) {
        if (Build.VERSION.SDK_INT < 26) {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j3));
        }
        Instant instant = new Date(j3).toInstant();
        ZoneOffset unused = ZoneOffset.UTC;
        LocalDateTime localDateTime = instant.atOffset(ZoneOffset.UTC).toLocalDateTime();
        DateTimeFormatter unused2 = DateTimeFormatter.ISO_LOCAL_DATE;
        return localDateTime.format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public synchronized String f(String str) {
        for (Map.Entry<String, ?> entry : this.f2061a.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return null;
    }

    public synchronized boolean g(long j3, long j8) {
        return e(j3).equals(e(j8));
    }

    public synchronized void h() {
        String strE = e(System.currentTimeMillis());
        this.f2061a.edit().putString("last-used-date", strE).commit();
        i(strE);
    }

    public synchronized void i(String str) {
        try {
            String strF = f(str);
            if (strF == null) {
                return;
            }
            HashSet hashSet = new HashSet(this.f2061a.getStringSet(strF, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                this.f2061a.edit().remove(strF).commit();
            } else {
                this.f2061a.edit().putStringSet(strF, hashSet).commit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean j(long j3) {
        return k(j3);
    }

    public synchronized boolean k(long j3) {
        if (!this.f2061a.contains("fire-global")) {
            this.f2061a.edit().putLong("fire-global", j3).commit();
            return true;
        }
        if (g(this.f2061a.getLong("fire-global", -1L), j3)) {
            return false;
        }
        this.f2061a.edit().putLong("fire-global", j3).commit();
        return true;
    }

    public synchronized void l(String str, long j3) {
        String strE = e(j3);
        if (this.f2061a.getString("last-used-date", "").equals(strE)) {
            String strF = f(strE);
            if (strF == null) {
                return;
            }
            if (strF.equals(str)) {
                return;
            }
            n(str, strE);
            return;
        }
        long j8 = this.f2061a.getLong("fire-count", 0L);
        if (j8 + 1 == 30) {
            a();
            j8 = this.f2061a.getLong("fire-count", 0L);
        }
        HashSet hashSet = new HashSet(this.f2061a.getStringSet(str, new HashSet()));
        hashSet.add(strE);
        this.f2061a.edit().putStringSet(str, hashSet).putLong("fire-count", j8 + 1).putString("last-used-date", strE).commit();
    }

    public synchronized void m(long j3) {
        this.f2061a.edit().putLong("fire-global", j3).commit();
    }

    public synchronized void n(String str, String str2) {
        i(str2);
        HashSet hashSet = new HashSet(this.f2061a.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f2061a.edit().putStringSet(str, hashSet).commit();
    }

    public b0(Context context, String str) {
        this.f2061a = context.getSharedPreferences("FirebaseHeartBeat" + str, 0);
    }
}
