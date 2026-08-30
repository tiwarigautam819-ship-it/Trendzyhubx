package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.https.HttpUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.Guard;
import com.engagelab.privates.common.utils.SystemUtil;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.core.global.MTAddressGlobal;
import com.engagelab.privates.core.global.MTCoreGlobal;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1250a = Guard.string(new byte[]{88, 84, 109, 120, 101, 43, 31, 15, 126, 100, 121, 115, 81, 76, 52, 123, 127, 98, 30, 69, 119, 111, 119, 118, 85, 76, 120, 106, 56, 114, 95, 77, 54, 126, 39, 62, 87, 69, 109, 37, 101, 120, 67, 65, 125, 108, 100});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1251b = Guard.string(new byte[]{72, 109, 124, 102, 98, 10, 15, 54, 111, 122, 126, 82, 65, 117, 37, 101, 120, 67, 14, 108, 122, 121, 99, 81, 14, 122, 102, 57, 103, 1, 15, 126, 109, 98, 60, 67, 73, 106, 105, 114, 117, 66});

    public static void a(Context context) {
        MTCommonLog.d("GlobalSis", "clear address and stopConnect");
        HashSet hashSet = new HashSet();
        r.a(context, hashSet);
        r.c(context, hashSet);
        r.a(context, new JSONArray());
        r.b(context, hashSet);
        new Bundle().putBoolean("retry", false);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
    }

    public static void b(Context context) {
        HashSet hashSet = new HashSet();
        r.a(context, hashSet);
        r.c(context, hashSet);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, null);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.START_CONNECT, null);
    }

    public static void c(Context context) {
        r.a(context, new JSONArray());
        Bundle bundle = new Bundle();
        bundle.putBoolean("retry", false);
        MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.STOP_CONNECT, bundle);
    }

    public static String d(Context context) {
        return MTCoreGlobal.getServiceNode() == MTCoreConstants.ServiceNode.REGION_CHINA ? f1251b : f1250a;
    }

    public static void e(Context context) {
        String strA;
        MTCommonLog.d("GlobalSis", "roundUpPolling");
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.d("GlobalSis", "can't network 2");
            return;
        }
        for (String[] strArr : MTAddressGlobal.getList()) {
            if (!r.d(context).isEmpty()) {
                MTCommonLog.d("GlobalSis", "!lobalSisAddress.isEmpty()");
                return;
            }
            MTCommonLog.d("GlobalSis", "urls：" + Arrays.toString(strArr));
            int length = strArr.length;
            int i6 = 0;
            while (true) {
                if (i6 < length) {
                    String str = strArr[i6];
                    MTCommonLog.d("GlobalSis", "address：" + str);
                    String[] strArrSplit = str.split(":");
                    String str2 = strArrSplit[strArrSplit.length + (-1)];
                    String strSubstring = str.substring(0, (str.length() - str2.length()) - 1);
                    int i9 = Integer.parseInt(str2);
                    try {
                        j jVarA = k.a();
                        byte[] bArrA = jVarA.a(800, context, strSubstring, i9);
                        if (bArrA != null && (strA = jVarA.a(context, bArrA)) != null) {
                            MTCommonLog.d("GlobalSis", "responseImp：" + strA);
                            JSONObject jSONObject = new JSONObject(strA);
                            if (jSONObject.has("code")) {
                                MTCommonLog.d("GlobalSis", "code：" + jSONObject.optInt("code"));
                            } else {
                                HashSet hashSet = new HashSet();
                                hashSet.add(str);
                                r.a(context, hashSet);
                                jVarA.a(context, strA);
                            }
                        }
                    } catch (Throwable th) {
                        MTCommonLog.e("GlobalSis", "fail:" + th);
                    }
                    i6++;
                }
            }
        }
    }

    public static void f(Context context) {
        MTCommonLog.d("GlobalSis", "start");
        if (!r.d(context).isEmpty()) {
            MTCommonLog.d("GlobalSis", "has address");
            return;
        }
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.d("GlobalSis", "can't network 1");
            return;
        }
        String strD = d(context);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MTPushConstants.Message.KEY_APPKEY, MTGlobal.getAppKey(context));
        } catch (Throwable unused) {
        }
        String string = jSONObject.toString();
        MTCommonLog.d("GlobalSis", "jsonParams:" + string);
        byte[] bytes = string.getBytes();
        MTCommonLog.d("GlobalSis", "requestUrl:" + strD);
        HashMap map = new HashMap();
        map.put("content-type", "application/json");
        for (int i6 = 0; i6 < 3; i6++) {
            Pair<Integer, byte[]> pairPostPair = HttpUtils.postPair(context, strD, map, bytes, true);
            byte[] bArr = (byte[]) pairPostPair.second;
            MTCommonLog.d("GlobalSis", "code:" + pairPostPair.first);
            MTCommonLog.d("GlobalSis", "bytes:" + bArr);
            if (bArr != null) {
                try {
                    String str = new String(bArr, MTCommonConstants.UTF_8);
                    MTCommonLog.d("GlobalSis", "body:" + str);
                    JSONObject jSONObject2 = new JSONObject(str);
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("sis_addr");
                    if (jSONArrayOptJSONArray != null) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                            linkedHashSet.add(jSONArrayOptJSONArray.getString(i9));
                        }
                        r.a(context, linkedHashSet);
                        return;
                    }
                    int iOptInt = jSONObject2.optInt("code", -1);
                    if (2001 == iOptInt) {
                        MTCommonLog.d("GlobalSis", "CODE_NOT_APPKEY");
                        a(context);
                        return;
                    } else if (2000 == iOptInt) {
                        MTCommonLog.d("GlobalSis", "CODE_SERVICE_ERR");
                    }
                } catch (Throwable th) {
                    MTCommonLog.e("GlobalSis", "start fail:" + th);
                }
            }
        }
        e(context);
    }
}
