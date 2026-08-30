package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.constants.MTCommonConstants;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.MTPush;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.api.TagMessage;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y0 extends v0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile y0 f1302c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, String[]> f1303b = new ConcurrentHashMap<>();

    public final int a(int i6) {
        switch (i6) {
            case MTPushConstants.RemoteWhat.TAG_QUERY_ALL /* 3984 */:
                return MTPushConstants.MainWhat.TAG_QUERY_ALL;
            case MTPushConstants.RemoteWhat.TAG_DELETE_ALL /* 3985 */:
                return MTPushConstants.MainWhat.TAG_DELETE_ALL;
            case MTPushConstants.RemoteWhat.TAG_QUERY /* 3986 */:
                return MTPushConstants.MainWhat.TAG_QUERY;
            case MTPushConstants.RemoteWhat.TAG_UPDATE /* 3987 */:
                return MTPushConstants.MainWhat.TAG_UPDATE;
            case MTPushConstants.RemoteWhat.TAG_DELETE /* 3988 */:
                return MTPushConstants.MainWhat.TAG_DELETE;
            case MTPushConstants.RemoteWhat.TAG_ADD /* 3989 */:
                return MTPushConstants.MainWhat.TAG_ADD;
            default:
                return 0;
        }
    }

    public final String b(int i6) {
        switch (i6) {
            case MTPushConstants.RemoteWhat.TAG_QUERY_ALL /* 3984 */:
                return "get";
            case MTPushConstants.RemoteWhat.TAG_DELETE_ALL /* 3985 */:
                return "clean";
            case MTPushConstants.RemoteWhat.TAG_QUERY /* 3986 */:
                return "valid";
            case MTPushConstants.RemoteWhat.TAG_UPDATE /* 3987 */:
                return "set";
            case MTPushConstants.RemoteWhat.TAG_DELETE /* 3988 */:
                return "del";
            case MTPushConstants.RemoteWhat.TAG_ADD /* 3989 */:
                return "add";
            default:
                return "";
        }
    }

    public static y0 b() {
        if (f1302c == null) {
            synchronized (y0.class) {
                f1302c = new y0();
            }
        }
        return f1302c;
    }

    public void a(Context context, int i6, Bundle bundle) {
        TagMessage tagMessage;
        MTCommonReceiver commonReceiver;
        try {
            bundle.setClassLoader(TagMessage.class.getClassLoader());
            tagMessage = (TagMessage) bundle.getParcelable(MTPushConstants.Operation.KEY_TAG);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTTagBusiness");
        }
        if (tagMessage != null && (commonReceiver = MTGlobal.getCommonReceiver(context)) != null) {
            switch (i6) {
                case MTPushConstants.MainWhat.TAG_ADD /* 3011 */:
                case MTPushConstants.MainWhat.TAG_DELETE /* 3012 */:
                case MTPushConstants.MainWhat.TAG_UPDATE /* 3013 */:
                case MTPushConstants.MainWhat.TAG_QUERY /* 3014 */:
                case MTPushConstants.MainWhat.TAG_DELETE_ALL /* 3015 */:
                case MTPushConstants.MainWhat.TAG_QUERY_ALL /* 3016 */:
                    commonReceiver.onTagMessage(context, tagMessage);
                    return;
                default:
                    return;
            }
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTTagBusiness");
        }
    }

    public void b(Context context, int i6, Bundle bundle) {
        try {
            int i9 = bundle.getInt(MTPushConstants.Operation.KEY_SEQUENCE);
            String strB = b(i6);
            int iA = a(i6);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, "a");
            jSONObject.put("op", strB);
            switch (i6) {
                case MTPushConstants.RemoteWhat.TAG_QUERY_ALL /* 3984 */:
                    jSONObject.put("curr", 1);
                    break;
                case MTPushConstants.RemoteWhat.TAG_QUERY /* 3986 */:
                    String string = bundle.getString(MTPushConstants.Operation.KEY_TAG);
                    int iA2 = a(string);
                    if (iA2 != 0) {
                        TagMessage queryTag = new TagMessage().setSequence(i9).setCode(iA2).setQueryTag(string);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable(MTPushConstants.Operation.KEY_TAG, queryTag);
                        MTCommonPrivatesApi.sendMessageToMainProcess(context, iA, bundle2);
                        return;
                    }
                    this.f1303b.put(Integer.valueOf(i9), new String[]{string});
                    jSONObject.put("tags", string);
                    break;
                    break;
                case MTPushConstants.RemoteWhat.TAG_UPDATE /* 3987 */:
                case MTPushConstants.RemoteWhat.TAG_DELETE /* 3988 */:
                case MTPushConstants.RemoteWhat.TAG_ADD /* 3989 */:
                    String[] stringArray = bundle.getStringArray(MTPushConstants.Operation.KEY_TAG);
                    int iA3 = a(stringArray);
                    if (iA3 != 0) {
                        TagMessage tags = new TagMessage().setSequence(i9).setCode(iA3).setTags(stringArray);
                        Bundle bundle3 = new Bundle();
                        bundle3.putParcelable(MTPushConstants.Operation.KEY_TAG, tags);
                        MTCommonPrivatesApi.sendMessageToMainProcess(context, iA, bundle3);
                        return;
                    }
                    this.f1303b.put(Integer.valueOf(i9), stringArray);
                    jSONObject.put("tags", b(stringArray));
                    break;
                    break;
            }
            MTCommonLog.debugOnly("MTTagBusiness", "sendAliasOperation sequence:" + i9 + ", content:" + MTCommonLog.toLogString(jSONObject));
            MTCommonLog.d("MTTagBusiness", "sendAliasOperation sequence:" + i9 + ", op:" + strB);
            byte[] bArrB = c1.b(jSONObject.toString());
            if (bArrB == null) {
                return;
            }
            MTProtocol threadName = new MTProtocol().setRid(i9).setCommand(28).setVersion(1).setBody(bArrB).setThreadName(MTPush.f1313a);
            Bundle bundle4 = new Bundle();
            bundle4.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle4);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("sendTagOperation failed "), "MTTagBusiness");
        }
    }

    public void a(Context context, Bundle bundle) {
        try {
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (mTProtocol == null) {
                return;
            }
            int rid = (int) mTProtocol.getRid();
            String[] strArr = this.f1303b.get(Integer.valueOf(rid));
            this.f1303b.remove(Integer.valueOf(rid));
            TagMessage tags = new TagMessage().setSequence(rid).setCode(MTPushPrivatesApi.Code.TIMEOUT).setTags(strArr);
            MTCommonLog.debugOnly("MTTagBusiness", "onAliasOperationFailed sequence:" + rid + ", tagMessage:" + tags.toString());
            MTCommonLog.d("MTTagBusiness", "onAliasOperationFailed sequence:" + rid + ", tagMessage code:" + tags.getCode());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Operation.KEY_TAG, tags);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.TAG_ADD, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onAliasOperationFailed failed "), "MTTagBusiness");
        }
    }

    public final int a(String[] strArr) {
        int iA = a();
        if (iA != 0) {
            return iA;
        }
        if (strArr.length > 1000) {
            return MTPushPrivatesApi.Code.TOO_MANY_TAGS;
        }
        int length = strArr.length;
        int i6 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            String str = strArr[i9];
            if (TextUtils.isEmpty(str)) {
                return MTPushPrivatesApi.Code.INVALID_TAGS;
            }
            if (!Pattern.compile("^[一-龥0-9a-zA-Z_!@#$&*+=.|]+$").matcher(str).matches()) {
                return MTPushPrivatesApi.Code.INVALID_TAGS;
            }
            try {
                int length2 = str.getBytes(MTCommonConstants.UTF_8).length;
                if (length2 > 40) {
                    return MTPushPrivatesApi.Code.TOO_LONG_TAG;
                }
                i6 += length2;
            } catch (Throwable th) {
                q2.x.j(th, new StringBuilder("getBytes failed "), "MTTagBusiness");
            }
        }
        if (i6 > 5000) {
            return MTPushPrivatesApi.Code.TOO_LONG_TAGS;
        }
        return 0;
    }

    public final int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return MTPushPrivatesApi.Code.INVALID_TAGS;
        }
        if (!Pattern.compile("^[一-龥0-9a-zA-Z_!@#$&*+=.|]+$").matcher(str).matches()) {
            return MTPushPrivatesApi.Code.INVALID_TAGS;
        }
        try {
            if (str.getBytes(MTCommonConstants.UTF_8).length > 40) {
                return MTPushPrivatesApi.Code.TOO_LONG_TAG;
            }
            return 0;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("getBytes failed "), "MTTagBusiness");
            return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012b A[Catch: all -> 0x00f5, TRY_LEAVE, TryCatch #0 {all -> 0x00f5, blocks: (B:33:0x0110, B:36:0x012b, B:23:0x00f0, B:28:0x00fb, B:31:0x0106), top: B:40:0x0084 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.content.Context r13, android.os.Bundle r14) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.y0.b(android.content.Context, android.os.Bundle):void");
    }

    public final String[] a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        String[] strArr = new String[jSONArray.length()];
        for (int i6 = 0; i6 < jSONArray.length(); i6++) {
            strArr[i6] = jSONArray.optString(i6);
        }
        return strArr;
    }

    public final TagMessage a(Context context, int i6, int i9, int i10, int i11, String[] strArr) {
        if (i11 != 0 && i10 != 0) {
            try {
                if (this.f1303b.containsKey(Integer.valueOf(i9))) {
                    String[] strArr2 = this.f1303b.get(Integer.valueOf(i9));
                    String[] strArr3 = (String[]) Arrays.copyOf(strArr, strArr.length + strArr2.length);
                    System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
                    strArr = strArr3;
                }
                if (i10 < i11) {
                    this.f1303b.put(Integer.valueOf(i9), strArr);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, "a");
                    jSONObject.put("op", "get");
                    jSONObject.put("curr", i10 + 1);
                    String string = jSONObject.toString();
                    MTCommonLog.d("MTTagBusiness", "sendTagOperation sequence:" + i9 + ", content:" + MTCommonLog.toLogString(jSONObject));
                    MTProtocol threadName = new MTProtocol().setRid((long) i9).setCommand(28).setVersion(1).setBody(c1.b(string)).setThreadName(MTPush.f1313a);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
                    MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle);
                    return null;
                }
                this.f1303b.remove(Integer.valueOf(i9));
                return new TagMessage().setSequence(i9).setCode(i6).setTags(strArr);
            } catch (Throwable th) {
                q2.x.j(th, new StringBuilder("onTagQueryAll failed "), "MTTagBusiness");
            }
        }
        return null;
    }

    public final int b(String str) {
        str.getClass();
        switch (str) {
            case "add":
                return MTPushConstants.MainWhat.TAG_ADD;
            case "del":
                return MTPushConstants.MainWhat.TAG_DELETE;
            case "get":
                return MTPushConstants.MainWhat.TAG_QUERY_ALL;
            case "set":
                return MTPushConstants.MainWhat.TAG_UPDATE;
            case "clean":
                return MTPushConstants.MainWhat.TAG_DELETE_ALL;
            case "valid":
                return MTPushConstants.MainWhat.TAG_QUERY;
            default:
                return 0;
        }
    }

    public final JSONArray b(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        for (String str : strArr) {
            jSONArray.put(str);
        }
        return jSONArray;
    }
}
