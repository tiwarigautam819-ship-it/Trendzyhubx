package com.engagelab.privates.common;

import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.observer.MTObserver;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.api.MTReporter;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTCoreGlobal;
import com.engagelab.privates.push.MTPush;
import com.engagelab.privates.push.api.PlatformTokenMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.engagelab.privates.push.platform.google.MTGoogle;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class t0 extends o0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile t0 f1258j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Bundle f1262e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentMap<Long, PlatformTokenMessage> f1259b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1260c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ConcurrentMap<Byte, PlatformTokenMessage> f1261d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1263f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<Byte> f1264g = new ArrayList();
    public ArrayList<Byte> h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f1265i = null;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1266a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Bundle f1267b;

        public a(t0 t0Var, Context context, Bundle bundle) {
            this.f1266a = context;
            this.f1267b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            MTCommonPrivatesApi.sendMessageToRemoteProcess(this.f1266a, MTPushConstants.RemoteWhat.ON_PLATFORM_TOKEN, this.f1267b);
        }
    }

    public static t0 b() {
        if (f1258j == null) {
            synchronized (t0.class) {
                f1258j = new t0();
            }
        }
        return f1258j;
    }

    public static boolean c() {
        String strA = a("ro.build.version.emui");
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        String lowerCase = strA.toLowerCase();
        return lowerCase.contains("magicui") || lowerCase.contains("magicos");
    }

    public void a(Context context) {
        this.f1263f = true;
        String lowerCase = Build.MANUFACTURER.toLowerCase();
        MTCommonLog.d("MTPlatformBusiness", "clearPlatformToken manufacturer is " + lowerCase);
        if (!TextUtils.isEmpty(lowerCase)) {
            if (e(context, lowerCase)) {
                this.f1264g.add((byte) 2);
            }
            if (f(context, lowerCase)) {
                this.f1264g.add((byte) 7);
            }
            if (g(context, lowerCase)) {
                this.f1264g.add((byte) 1);
            }
            if (c(context, lowerCase)) {
                this.f1264g.add((byte) 1);
            }
            if (h(context, lowerCase)) {
                this.f1264g.add((byte) 3);
            }
            if (i(context, lowerCase)) {
                this.f1264g.add((byte) 4);
            }
            if (j(context, lowerCase)) {
                this.f1264g.add((byte) 5);
            }
        }
        this.f1264g.add((byte) 8);
        boolean z5 = false;
        for (int i6 = 0; i6 < this.f1264g.size(); i6++) {
            Byte b3 = this.f1264g.get(i6);
            if (a(context, b3)) {
                a(context, new PlatformTokenMessage().setPlatform(b3.byteValue()).setToken("").setIsUserSettings(true), false);
                z5 = true;
            } else {
                MTCommonLog.d("MTPlatformBusiness", "clearPlatformToken hasSendToken platform: " + b3);
            }
        }
        if (z5) {
            return;
        }
        g(context);
    }

    public final boolean d(Context context, String str) {
        try {
            if (TextUtils.equals(str, "CN")) {
                return false;
            }
            int i6 = MTGoogle.f1314d;
            MTCommonPrivatesApi.observer(context, (MTObserver) MTGoogle.class.newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated google.aar");
            a(context, (byte) 8, 3001, 0, "");
            return false;
        }
    }

    public final boolean e(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.HUAWEI) && (!TextUtils.equals(str, MTPushConstants.Manufacturer.HONOR) || f(context) || !c())) {
            MTCommonLog.d("MTPlatformBusiness", "not integrate huawei");
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.huawei.MTHuawei").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated huawei.aar");
            a(context, (byte) 2, 3001, 0, "");
            return false;
        }
    }

    public final boolean f(Context context) {
        try {
            if (TextUtils.isEmpty(MTGlobal.getMetaData(context, "com.hihonor.push.app_id"))) {
                MTCommonLog.e("MTPlatformBusiness", "not support honor push, honor appId is empty");
                return false;
            }
            Class<?> cls = Class.forName("com.hihonor.push.sdk.HonorPushClient");
            Object objInvoke = cls.getDeclaredMethod("getInstance", null).invoke(cls, null);
            boolean zBooleanValue = ((Boolean) objInvoke.getClass().getDeclaredMethod("checkSupportHonorPush", Context.class).invoke(objInvoke, context)).booleanValue();
            MTCommonLog.d("MTPlatformBusiness", "honor available :" + zBooleanValue);
            return zBooleanValue;
        } catch (Throwable th) {
            MTCommonLog.d("MTPlatformBusiness", "isSupportHonorPush error:" + th);
            return false;
        }
    }

    public final boolean g(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.XIAOMI) && !TextUtils.equals(str, MTPushConstants.Manufacturer.BLACKSHARK)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.mi.MTMi").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated mi.aar");
            a(context, (byte) 1, 3001, 0, "");
            return false;
        }
    }

    public final boolean h(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.MEIZU)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.meizu.MTMeizu").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated meizu.aar");
            a(context, (byte) 3, 3001, 0, "");
            return false;
        }
    }

    public final boolean i(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.OPPO) && !TextUtils.equals(str, MTPushConstants.Manufacturer.REALME) && !TextUtils.equals(str, MTPushConstants.Manufacturer.ONEPLUS)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.oppo.MTOppo").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated oppo.aar");
            a(context, (byte) 4, 3001, 0, "");
            return false;
        }
    }

    public final boolean j(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.VIVO)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.vivo.MTVivo").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated vivo.aar");
            a(context, (byte) 5, 3001, 0, "");
            return false;
        }
    }

    public final boolean c(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.XIAOMI) && !TextUtils.equals(str, MTPushConstants.Manufacturer.BLACKSHARK)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.mi.global.MTMiGlobal").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated global mi.aar");
            a(context, (byte) 1, 3001, 0, "");
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.content.Context r11) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.t0.b(android.content.Context):void");
    }

    public final void d(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager.getNotificationChannel("MTPush_Private") != null) {
            return;
        }
        notificationManager.createNotificationChannel(r1.a.a());
    }

    public void g(Context context, Bundle bundle) {
        bundle.setClassLoader(PlatformTokenMessage.class.getClassLoader());
        a(context, (PlatformTokenMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE), bundle.getBoolean("is_repetition_send", false));
    }

    public void e(Context context, Bundle bundle) {
        PlatformTokenMessage platformTokenMessage = (PlatformTokenMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
        if (platformTokenMessage == null) {
            return;
        }
        String token = platformTokenMessage.getToken();
        a1.a(context, platformTokenMessage.getPlatform(), token);
        MTCommonLog.d("MTPlatformBusiness", "processMainToken:" + token);
        f(context, bundle);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTPushConstants.RemoteWhat.ON_PLATFORM_TOKEN, bundle);
    }

    public void c(Context context) {
        String appKey = MTGlobal.getAppKey(context);
        String str = this.f1265i;
        if (str == null) {
            this.f1265i = appKey;
            return;
        }
        if (str.equals(appKey)) {
            return;
        }
        this.h.clear();
        this.f1259b.clear();
        this.f1261d.clear();
        this.f1263f = false;
        this.f1264g = new ArrayList();
        this.f1265i = appKey;
    }

    public final boolean f(Context context, String str) {
        if (!TextUtils.equals(str, MTPushConstants.Manufacturer.HONOR)) {
            return false;
        }
        try {
            MTCommonPrivatesApi.observer(context, (MTObserver) Class.forName("com.engagelab.privates.push.platform.honor.MTHonor").newInstance());
            return true;
        } catch (Throwable unused) {
            MTCommonLog.d("MTPlatformBusiness", "not integrated honor.aar");
            a(context, (byte) 7, 3001, 0, "");
            return false;
        }
    }

    public final void g(Context context) {
        if (this.f1263f) {
            for (int i6 = 0; i6 < this.f1264g.size(); i6++) {
                Byte b3 = this.f1264g.get(i6);
                if (a(context, b3)) {
                    MTCommonLog.d("MTPlatformBusiness", "toUserClear not Success platform: " + b3);
                    return;
                }
            }
            PlatformTokenMessage isUserSettings = new PlatformTokenMessage().setPlatform((byte) -128).setToken("").setIsUserSettings(true);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, isUserSettings);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ON_PLATFORM_TOKEN_TO_USER, bundle);
        }
    }

    public void d(Context context, Bundle bundle) {
        MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
        long rid = mTProtocol.getRid();
        short s3 = ByteBuffer.wrap(mTProtocol.getBody()).getShort();
        if (!this.f1259b.containsKey(Long.valueOf(rid))) {
            MTCommonLog.d("MTPlatformBusiness", "onPlatformTokenFailed, rid:" + rid + ", internal error");
            return;
        }
        PlatformTokenMessage platformTokenMessage = this.f1259b.get(Long.valueOf(rid));
        this.f1259b.remove(Long.valueOf(rid));
        byte platform = platformTokenMessage.getPlatform();
        String token = platformTokenMessage.getToken();
        if (s3 != 0) {
            MTCommonLog.d("MTPlatformBusiness", "onPlatformTokenFailed, rid:" + rid + ", code:" + ((int) s3));
            a(context, platform, 3006, s3, token);
            b(context, platformTokenMessage, false);
            return;
        }
        MTCommonLog.d("MTPlatformBusiness", "onPlatformTokenSuccess, rid:" + rid + ", platformToken:" + platformTokenMessage.toString());
        if (TextUtils.equals(token, a1.b(context, platform))) {
            MTCommonLog.d("MTPlatformBusiness", "no need update platform state");
            a(context, platform, MTPushConstants.PlatformNode.CODE_UPLOAD_TOKEN_SUCCESS, 0, token);
            g(context);
            return;
        }
        a1.a(context, platform, token);
        byte platformState = (byte) (MTCoreGlobal.getPlatformState(context) | platform);
        byte b3 = (byte) (platform == 8 ? platformState | 32 : platformState & 127);
        MTCommonLog.d("MTPlatformBusiness", "set platform state:" + ((int) b3));
        MTCoreGlobal.setPlatformState(context, b3);
        a(context, platform, MTPushConstants.PlatformNode.CODE_UPLOAD_TOKEN_SUCCESS, 0, token);
        g(context);
    }

    public void e(Context context) {
        this.f1260c = true;
    }

    public void f(Context context, Bundle bundle) {
        MTCommonReceiver commonReceiver;
        bundle.setClassLoader(PlatformTokenMessage.class.getClassLoader());
        PlatformTokenMessage platformTokenMessage = (PlatformTokenMessage) bundle.getParcelable(MTPushConstants.Message.KEY_MESSAGE);
        if (platformTokenMessage == null || (commonReceiver = MTGlobal.getCommonReceiver(context)) == null) {
            return;
        }
        String token = platformTokenMessage.getToken();
        a1.a(context, platformTokenMessage.getPlatform(), token);
        MTCommonLog.d("MTPlatformBusiness", "processMainTokenToUser:" + token);
        commonReceiver.onPlatformToken(context, platformTokenMessage);
    }

    public void c(Context context, Bundle bundle) {
        long rid = ((MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL)).getRid();
        if (this.f1259b.containsKey(Long.valueOf(rid))) {
            PlatformTokenMessage platformTokenMessage = this.f1259b.get(Long.valueOf(rid));
            this.f1259b.remove(Long.valueOf(rid));
            byte platform = platformTokenMessage.getPlatform();
            String token = platformTokenMessage.getToken();
            MTCommonLog.d("MTPlatformBusiness", "onPlatformTokenFailed, rid:" + rid + ", platformToken:" + platformTokenMessage.toString());
            if (TextUtils.equals(token, a1.b(context, platform))) {
                MTCommonLog.d("MTPlatformBusiness", "no need update platform state");
                a(context, platform, 3006, 0, token);
                b(context, platformTokenMessage, true);
                return;
            }
            byte platformState = (byte) (MTCoreGlobal.getPlatformState(context) | platform);
            byte b3 = (byte) (platform == 8 ? platformState & 223 : platformState | 128);
            MTCommonLog.d("MTPlatformBusiness", "set platform state:" + ((int) b3));
            MTCoreGlobal.setPlatformState(context, b3);
            a(context, platform, 3006, 0, token);
            b(context, platformTokenMessage, true);
        }
    }

    public final boolean a(Context context, Byte b3) {
        PlatformTokenMessage platformTokenMessage = this.f1261d.get(b3);
        if (platformTokenMessage != null && !"".equals(platformTokenMessage.getToken())) {
            return true;
        }
        Set<Long> setKeySet = this.f1259b.keySet();
        if (!setKeySet.isEmpty()) {
            Iterator<Long> it = setKeySet.iterator();
            while (it.hasNext()) {
                PlatformTokenMessage platformTokenMessage2 = this.f1259b.get(it.next());
                if (platformTokenMessage2.getPlatform() == b3.byteValue() && !"".equals(platformTokenMessage2.getToken())) {
                    return true;
                }
            }
        }
        return !TextUtils.isEmpty(a1.b(context, b3.byteValue()));
    }

    public final void b(Context context, PlatformTokenMessage platformTokenMessage, boolean z5) {
        PlatformTokenMessage platformTokenMessage2 = this.f1261d.get(Byte.valueOf(platformTokenMessage.getPlatform()));
        if (platformTokenMessage2 != null) {
            if (platformTokenMessage2.getToken().equals(platformTokenMessage.getToken())) {
                this.f1261d.remove(Byte.valueOf(platformTokenMessage.getPlatform()));
            } else {
                z5 = false;
            }
            if (z5) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MTPushConstants.Message.KEY_MESSAGE, platformTokenMessage);
                bundle.putBoolean("is_repetition_send", true);
                MTCommonPrivatesApi.postMessageDelayed(context, MTPush.f1313a, new a(this, context, bundle), 1000L);
                return;
            }
            return;
        }
        MTCommonLog.e("MTPlatformBusiness", "cache not has platformToken, platformToken:" + platformTokenMessage.toString());
    }

    public static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str2 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            MTCommonLog.d("MTPlatformBusiness", "get " + str + " version is:" + str2);
            return str2;
        } catch (Throwable th) {
            MTCommonLog.e("MTPlatformBusiness", " get " + str + " wrong error:" + th.getMessage());
            return "";
        }
    }

    public final boolean a(PlatformTokenMessage platformTokenMessage) {
        if (this.h.contains(Byte.valueOf(platformTokenMessage.getPlatform()))) {
            if (platformTokenMessage.getIsUserSettings()) {
                return true;
            }
            MTCommonLog.e("MTPlatformBusiness", "not user mt token : " + platformTokenMessage);
            return false;
        }
        if (platformTokenMessage.getIsUserSettings()) {
            this.h.add(Byte.valueOf(platformTokenMessage.getPlatform()));
        }
        if (!this.f1263f || platformTokenMessage.getIsUserSettings()) {
            return true;
        }
        MTCommonLog.e("MTPlatformBusiness", "isClearToken not user mt token : " + platformTokenMessage);
        return false;
    }

    public void b(Context context, Bundle bundle) {
        try {
            byte b3 = bundle.getByte(MTPushConstants.PlatformNode.KEY_PLATFORM);
            int i6 = bundle.getInt("code");
            int i9 = bundle.getInt(MTPushConstants.PlatformNode.KEY_M_CODE);
            int i10 = bundle.getInt("type");
            int i11 = bundle.getInt(MTPushConstants.PlatformNode.KEY_FROM);
            String strB = a1.b(context, b3);
            MTCommonLog.d("MTPlatformBusiness", "onPlatformNode platform=" + ((int) b3) + " code=" + i6 + " m_code=" + i9 + " mToken=" + strB + " type=" + i10 + " currentFrom=" + i11);
            if (3900 == i10) {
                int iB = b1.b(context);
                int i12 = iB ^ i11;
                if (i12 == 3) {
                    MTCommonLog.d("MTPlatformBusiness", "onTokenFailed, all method obtain orFrom=" + i12 + " lastFrom=" + iB + " currentFrom=" + i11);
                    a(context, b3, 3005, i9, strB);
                    b1.a(context, 0);
                    b1.a(context, "");
                    return;
                }
                b1.a(context, i11);
                b1.a(context, ((int) b3) + "_" + i6 + "_" + i9);
                MTCommonLog.d("MTPlatformBusiness", "oneTokenFailed, one method obtain, orFrom=" + i12 + " lastFrom=" + iB + " currentFrom=" + i11);
                return;
            }
            a(context, b3, i6, i9, strB);
            if (3901 == i10) {
                b1.a(context, 0);
                b1.a(context, "");
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("reportPlatformNode failed "), "MTPlatformBusiness");
        }
    }

    public final void a(Context context, PlatformTokenMessage platformTokenMessage, boolean z5) {
        c(context);
        if (a(platformTokenMessage)) {
            if (!this.f1260c) {
                b(context, platformTokenMessage, true);
                MTCommonLog.w("MTPlatformBusiness", "stop send platformToken Login first, platformToken:" + platformTokenMessage.toString());
                return;
            }
            if (a(platformTokenMessage, z5)) {
                MTCommonLog.w("MTPlatformBusiness", "stop send repetition platformToken, platformToken:" + platformTokenMessage.toString());
                return;
            }
            long rid = MTCoreGlobal.getRid();
            this.f1259b.put(Long.valueOf(rid), platformTokenMessage);
            MTCommonLog.e("MTPlatformBusiness", "send platformToken, rid:" + rid + ", platformToken:" + platformTokenMessage.toString());
            MTProtocol threadName = new MTProtocol().setRid(rid).setCommand(27).setVersion(2).setBody(c1.a(platformTokenMessage.getPlatform(), platformTokenMessage.getToken(), platformTokenMessage.getRegion())).setThreadName(MTPush.f1313a);
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle);
        }
    }

    public final String b(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, str);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("getPropertiesStringValue failed "), "MTPlatformBusiness");
            return "";
        }
    }

    public final boolean a(PlatformTokenMessage platformTokenMessage, boolean z5) {
        PlatformTokenMessage platformTokenMessage2 = this.f1261d.get(Byte.valueOf(platformTokenMessage.getPlatform()));
        if (platformTokenMessage2 != null) {
            if (platformTokenMessage2.getToken().equals(platformTokenMessage.getToken())) {
                return true;
            }
            if (z5) {
                MTCommonLog.e("MTPlatformBusiness", "isRepetitionToken is_repetition_send:" + z5);
                return true;
            }
        }
        this.f1261d.put(Byte.valueOf(platformTokenMessage.getPlatform()), platformTokenMessage);
        return false;
    }

    public final void a(Context context, byte b3, int i6, int i9, String str) {
        try {
            byte platformState = MTCoreGlobal.getPlatformState(context);
            String countryCode = MTGlobal.getCountryCode(context);
            String str2 = Build.PRODUCT;
            String lowerCase = Build.MANUFACTURER.toLowerCase();
            String str3 = Build.VERSION.RELEASE;
            String strA = a(context, lowerCase);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, (int) b3);
            jSONObject.put("code", i6);
            jSONObject.put("m_code", i9);
            jSONObject.put("m_flag", (int) platformState);
            jSONObject.put("m_token", str);
            jSONObject.put("country_code", countryCode);
            jSONObject.put("product", str2);
            jSONObject.put("manufacturer", lowerCase);
            jSONObject.put("system_version", str3);
            jSONObject.put("m_system_version", strA);
            MTReporter content = new MTReporter().setType("platform_node").setContent(jSONObject.toString());
            Bundle bundle = new Bundle();
            bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, content);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.REPORT, bundle);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("reportPlatformNode failed "), "MTPlatformBusiness");
        }
    }

    public final String a(Context context, String str) {
        str.getClass();
        switch (str) {
            case "blackshark":
                return b(context, "ro.joyui.ui.version.code");
            case "oneplus":
                String strB = b(context, "ro.rom.version");
                return TextUtils.isEmpty(strB) ? b(context, "ro.build.version.opporom") : strB;
            case "huawei":
                String strB2 = b(context, "ro.build.version.emui");
                return TextUtils.isEmpty(strB2) ? b(context, "hw_sc.build.platform.version") : strB2;
            case "realme":
                return b(context, "ro.build.version.realmeui");
            case "xiaomi":
                return b(context, "ro.miui.ui.version.name");
            case "oppo":
                return b(context, "ro.build.version.opporom");
            case "vivo":
                return b(context, "ro.vivo.os.build.display.id");
            case "honor":
                return b(context, "ro.build.version.magic");
            case "meizu":
                return b(context, "ro.flyme.version.id");
            default:
                return "";
        }
    }
}
