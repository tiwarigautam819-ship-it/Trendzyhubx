package com.engagelab.privates.common.helper;

import com.engagelab.privates.common.log.MTCommonLog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CollectControlHelper {
    private static final String TAG = "CollectControlHelper";
    private static JSONObject collectDataDefault;
    private static final CollectControlHelper mCollectControlHelper;
    private JSONObject collectData = new JSONObject();

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface Type {
        public static final String AID = "aid";
        public static final String GAID = "gaid";
    }

    static {
        JSONObject jSONObject = new JSONObject();
        collectDataDefault = jSONObject;
        try {
            jSONObject.put("gaid", true);
            collectDataDefault.put(Type.AID, true);
        } catch (Throwable unused) {
        }
        mCollectControlHelper = new CollectControlHelper();
    }

    public static CollectControlHelper getInstance() {
        return mCollectControlHelper;
    }

    public boolean getCollectControl(String str) {
        boolean zOptBoolean;
        if (this.collectData.has(str)) {
            zOptBoolean = this.collectData.optBoolean(str);
        } else {
            zOptBoolean = collectDataDefault.optBoolean(str);
            MTCommonLog.d(TAG, "collect type:" + str + " default is " + zOptBoolean);
        }
        MTCommonLog.d(TAG, "collect type:" + str + " is " + zOptBoolean);
        return zOptBoolean;
    }

    public void setCollectControl(MTCollectControl mTCollectControl) {
        try {
            String string = mTCollectControl.toString();
            MTCommonLog.d(TAG, "setCollectControl:" + string);
            this.collectData = new JSONObject(string);
        } catch (JSONException e9) {
            MTCommonLog.e(TAG, "set collect f:" + e9);
        }
    }
}
