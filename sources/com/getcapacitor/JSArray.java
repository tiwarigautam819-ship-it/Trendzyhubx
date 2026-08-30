package com.getcapacitor;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class JSArray extends JSONArray {
    public JSArray() {
    }

    public static JSArray from(Object obj) {
        try {
            return new JSArray(obj);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E> List<E> toList() throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < length(); i6++) {
            get(i6);
            try {
                arrayList.add(get(i6));
            } catch (Exception unused) {
                throw new JSONException("Not all items are instances of the given type");
            }
        }
        return arrayList;
    }

    public JSArray(String str) {
        super(str);
    }

    public JSArray(Collection collection) {
        super(collection);
    }

    public JSArray(Object obj) {
        super(obj);
    }
}
