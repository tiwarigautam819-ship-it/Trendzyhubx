package q2;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f4734a;

    static {
        HashMap map = new HashMap();
        f4734a = map;
        map.put(Boolean.class, new e(0));
        map.put(Integer.class, new e(1));
        map.put(Long.class, new e(2));
        map.put(Double.class, new e(3));
        map.put(String.class, new e(4));
        map.put(String[].class, new e(5));
        map.put(JSONArray.class, new e(6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Bundle a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj != JSONObject.NULL) {
                if (!(obj instanceof JSONObject)) {
                    e eVar = (e) f4734a.get(obj.getClass());
                    if (eVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    d7.g.e("key", next);
                    switch (eVar.f4731a) {
                        case 0:
                            bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                            break;
                        case 1:
                            bundle.putInt(next, ((Integer) obj).intValue());
                            break;
                        case 2:
                            bundle.putLong(next, ((Long) obj).longValue());
                            break;
                        case 3:
                            bundle.putDouble(next, ((Double) obj).doubleValue());
                            break;
                        case 4:
                            bundle.putString(next, (String) obj);
                            break;
                        case 5:
                            throw new IllegalArgumentException("Unexpected type from JSON");
                        default:
                            JSONArray jSONArray = (JSONArray) obj;
                            ArrayList arrayList = new ArrayList();
                            if (jSONArray.length() == 0) {
                                bundle.putStringArrayList(next, arrayList);
                            } else {
                                int length = jSONArray.length();
                                for (int i6 = 0; i6 < length; i6++) {
                                    Object obj2 = jSONArray.get(i6);
                                    if (!(obj2 instanceof String)) {
                                        throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                                    }
                                    arrayList.add(obj2);
                                }
                                bundle.putStringArrayList(next, arrayList);
                            }
                            break;
                    }
                } else {
                    bundle.putBundle(next, a((JSONObject) obj));
                }
            }
        }
        return bundle;
    }
}
