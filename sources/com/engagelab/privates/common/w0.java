package com.engagelab.privates.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.engagelab.privates.common.api.MTCommonPrivatesApi;
import com.engagelab.privates.common.component.MTCommonReceiver;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.core.api.MTProtocol;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.MTPush;
import com.engagelab.privates.push.api.AliasMessage;
import com.engagelab.privates.push.api.MTPushPrivatesApi;
import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class w0 extends v0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile w0 f1292c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConcurrentHashMap<Integer, String> f1293b = new ConcurrentHashMap<>();

    public static w0 b() {
        if (f1292c == null) {
            synchronized (w0.class) {
                f1292c = new w0();
            }
        }
        return f1292c;
    }

    public void a(Context context, int i6, Bundle bundle) {
        AliasMessage aliasMessage;
        MTCommonReceiver commonReceiver;
        try {
            bundle.setClassLoader(AliasMessage.class.getClassLoader());
            aliasMessage = (AliasMessage) bundle.getParcelable(MTPushConstants.Operation.KEY_ALIAS);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTAliasBusiness");
        }
        if (aliasMessage != null && (commonReceiver = MTGlobal.getCommonReceiver(context)) != null) {
            switch (i6) {
                case MTPushConstants.MainWhat.ALIAS_SET /* 3017 */:
                case MTPushConstants.MainWhat.ALIAS_GET /* 3018 */:
                case MTPushConstants.MainWhat.ALIAS_CLEAR /* 3019 */:
                    commonReceiver.onAliasMessage(context, aliasMessage);
                    return;
                default:
                    return;
            }
            q2.x.j(th, new StringBuilder("processMainMessage failed "), "MTAliasBusiness");
        }
    }

    public void b(Context context, int i6, Bundle bundle) {
        String str;
        try {
            int i9 = bundle.getInt(MTPushConstants.Operation.KEY_SEQUENCE);
            String string = bundle.getString(MTPushConstants.Operation.KEY_ALIAS);
            switch (i6) {
                case MTPushConstants.RemoteWhat.ALIAS_CLEAR /* 3981 */:
                    str = "del";
                    break;
                case MTPushConstants.RemoteWhat.ALIAS_GET /* 3982 */:
                    str = "get";
                    break;
                case MTPushConstants.RemoteWhat.ALIAS_SET /* 3983 */:
                    int iA = a(string);
                    if (iA != 0) {
                        AliasMessage alias = new AliasMessage().setSequence(i9).setCode(iA).setAlias(string);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable(MTPushConstants.Operation.KEY_ALIAS, alias);
                        MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ALIAS_SET, bundle2);
                        return;
                    }
                    str = "set";
                    break;
                    break;
                default:
                    str = "";
                    break;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MTPushConstants.PlatformNode.KEY_PLATFORM, "a");
            jSONObject.put("op", str);
            if (!TextUtils.isEmpty(string)) {
                this.f1293b.put(Integer.valueOf(i9), string);
                jSONObject.put(MTPushConstants.Operation.KEY_ALIAS, string);
            }
            MTCommonLog.debugOnly("MTAliasBusiness", "sendAliasOperation sequence:" + i9 + ", content:" + MTCommonLog.toLogString(jSONObject));
            MTCommonLog.d("MTAliasBusiness", "sendAliasOperation sequence:" + i9 + ", op:" + str);
            byte[] bArrB = c1.b(jSONObject.toString());
            if (bArrB == null) {
                return;
            }
            MTProtocol threadName = new MTProtocol().setRid(i9).setCommand(29).setVersion(1).setBody(bArrB).setThreadName(MTPush.f1313a);
            Bundle bundle3 = new Bundle();
            bundle3.putParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL, threadName);
            MTCommonPrivatesApi.sendMessageToRemoteProcess(context, MTCoreConstants.RemoteWhat.UPLOAD, bundle3);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("sendAliasOperation failed "), "MTAliasBusiness");
        }
    }

    public void a(Context context, Bundle bundle) {
        try {
            MTProtocol mTProtocol = (MTProtocol) bundle.getParcelable(MTCoreConstants.Protocol.KEY_PROTOCOL);
            if (mTProtocol == null) {
                return;
            }
            int rid = (int) mTProtocol.getRid();
            String str = this.f1293b.get(Integer.valueOf(rid));
            this.f1293b.remove(Integer.valueOf(rid));
            AliasMessage alias = new AliasMessage().setSequence(rid).setCode(MTPushPrivatesApi.Code.TIMEOUT).setAlias(str);
            MTCommonLog.debugOnly("MTAliasBusiness", "onAliasOperationFailed sequence:" + rid + ", aliasMessage:" + alias.toString());
            MTCommonLog.d("MTAliasBusiness", "onAliasOperationFailed sequence:" + rid + ", code:" + alias.getCode());
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MTPushConstants.Operation.KEY_ALIAS, alias);
            MTCommonPrivatesApi.sendMessageToMainProcess(context, MTPushConstants.MainWhat.ALIAS_SET, bundle2);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("onAliasOperationFailed failed "), "MTAliasBusiness");
        }
    }

    public final int a(String str) {
        int iA = a();
        if (iA != 0) {
            return iA;
        }
        if (TextUtils.isEmpty(str)) {
            return MTPushPrivatesApi.Code.INVALID_ALIAS;
        }
        if (str.getBytes().length > 40) {
            return MTPushPrivatesApi.Code.TOO_LONG_ALIAS;
        }
        if (Pattern.compile("^[一-龥0-9a-zA-Z_!@#$&*+=.|]+$").matcher(str).matches()) {
            return 0;
        }
        return MTPushPrivatesApi.Code.INVALID_ALIAS;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.content.Context r10, android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.w0.b(android.content.Context, android.os.Bundle):void");
    }
}
