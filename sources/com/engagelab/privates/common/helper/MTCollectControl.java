package com.engagelab.privates.common.helper;

import com.engagelab.privates.common.helper.CollectControlHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCollectControl {
    private JSONObject collectData = new JSONObject();

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface Type {
        public static final String GAID = "gaid";
    }

    private void set(String str, boolean z5) {
        try {
            this.collectData.put(str, z5);
        } catch (JSONException unused) {
        }
    }

    public void setAID(boolean z5) {
        set(CollectControlHelper.Type.AID, z5);
    }

    public void setGAID(boolean z5) {
        set("gaid", z5);
    }

    public String toString() {
        return this.collectData.toString();
    }
}
