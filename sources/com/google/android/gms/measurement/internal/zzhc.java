package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.x9;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhc {
    private final String zza;
    private final Bundle zzb;
    private Bundle zzc;
    private final /* synthetic */ zzha zzd;

    public zzhc(zzha zzhaVar, String str, Bundle bundle) {
        this.zzd = zzhaVar;
        d0.d(str);
        this.zza = str;
        if (zzhaVar.zze().zza(zzbh.zzdk)) {
            this.zzb = new Bundle();
        } else {
            this.zzb = new Bundle();
        }
    }

    private final String zzb(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", str);
                    x9.a();
                    if (this.zzd.zze().zza(zzbh.zzci)) {
                        if (obj instanceof String) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", "l");
                        } else if (obj instanceof int[]) {
                            jSONObject.put("v", Arrays.toString((int[]) obj));
                            jSONObject.put("t", "ia");
                        } else if (obj instanceof long[]) {
                            jSONObject.put("v", Arrays.toString((long[]) obj));
                            jSONObject.put("t", "la");
                        } else if (obj instanceof Double) {
                            jSONObject.put("v", String.valueOf(obj));
                            jSONObject.put("t", "d");
                        } else {
                            this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } else {
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    }
                } catch (JSONException e9) {
                    this.zzd.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences", e9);
                }
            }
        }
        return jSONArray.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00fa A[Catch: NumberFormatException | JSONException -> 0x010a, NumberFormatException | JSONException -> 0x010a, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x010a, blocks: (B:9:0x0025, B:21:0x0051, B:21:0x0051, B:23:0x0059, B:23:0x0059, B:25:0x006a, B:25:0x006a, B:27:0x007c, B:27:0x007c, B:28:0x0085, B:28:0x0085, B:46:0x00fa, B:46:0x00fa, B:29:0x008a, B:29:0x008a, B:31:0x0092, B:31:0x0092, B:33:0x00a3, B:33:0x00a3, B:35:0x00b5, B:35:0x00b5, B:36:0x00be, B:36:0x00be, B:37:0x00c2, B:37:0x00c2, B:39:0x00ca, B:39:0x00ca, B:40:0x00d2, B:40:0x00d2, B:42:0x00da, B:42:0x00da, B:43:0x00e6, B:43:0x00e6, B:45:0x00ee, B:45:0x00ee), top: B:62:0x0025, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle zza() {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhc.zza():android.os.Bundle");
    }

    public final void zza(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        } else if (this.zzd.zze().zza(zzbh.zzdk)) {
            bundle = new Bundle(bundle);
        }
        SharedPreferences.Editor editorEdit = this.zzd.zzg().edit();
        if (bundle.size() == 0) {
            editorEdit.remove(this.zza);
        } else {
            editorEdit.putString(this.zza, zzb(bundle));
        }
        editorEdit.apply();
        this.zzc = bundle;
    }
}
