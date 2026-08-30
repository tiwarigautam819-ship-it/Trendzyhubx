package com.capacitorjs.plugins.preferences;

import android.content.SharedPreferences;
import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
@CapacitorPlugin(name = "Preferences")
public class PreferencesPlugin extends Plugin {
    private a preferences;

    @PluginMethod
    public void clear(PluginCall pluginCall) {
        SharedPreferences.Editor editorEdit = this.preferences.f4631a.edit();
        editorEdit.clear();
        editorEdit.apply();
        pluginCall.resolve();
    }

    @PluginMethod
    public void configure(PluginCall pluginCall) {
        try {
            b bVar = b.f4632b;
            b bVarA = bVar.a();
            bVarA.f4633a = pluginCall.getString("group", bVar.f4633a);
            this.preferences = new a(getContext(), bVarA);
            pluginCall.resolve();
        } catch (CloneNotSupportedException e9) {
            pluginCall.reject("Error while configuring", e9);
        }
    }

    @PluginMethod
    public void get(PluginCall pluginCall) {
        String string = pluginCall.getString("key");
        if (string == null) {
            pluginCall.reject("Must provide key");
            return;
        }
        Object string2 = this.preferences.f4631a.getString(string, null);
        JSObject jSObject = new JSObject();
        if (string2 == null) {
            string2 = JSONObject.NULL;
        }
        jSObject.put("value", string2);
        pluginCall.resolve(jSObject);
    }

    @PluginMethod
    public void keys(PluginCall pluginCall) {
        String[] strArr = (String[]) this.preferences.f4631a.getAll().keySet().toArray(new String[0]);
        JSObject jSObject = new JSObject();
        try {
            jSObject.put("keys", (Object) new JSArray(strArr));
            pluginCall.resolve(jSObject);
        } catch (JSONException e9) {
            pluginCall.reject("Unable to serialize response.", e9);
        }
    }

    @Override // com.getcapacitor.Plugin
    public void load() {
        this.preferences = new a(getContext(), b.f4632b);
    }

    @PluginMethod
    public void migrate(PluginCall pluginCall) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(b.f4632b.f4633a, 0);
        for (String str : sharedPreferences.getAll().keySet()) {
            String string = sharedPreferences.getString(str, null);
            if (this.preferences.f4631a.getString(str, null) == null) {
                SharedPreferences.Editor editorEdit = this.preferences.f4631a.edit();
                editorEdit.putString(str, string);
                editorEdit.apply();
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        JSObject jSObject = new JSObject();
        jSObject.put("migrated", (Object) new JSArray((Collection) arrayList));
        jSObject.put("existing", (Object) new JSArray((Collection) arrayList2));
        pluginCall.resolve(jSObject);
    }

    @PluginMethod
    public void remove(PluginCall pluginCall) {
        String string = pluginCall.getString("key");
        if (string == null) {
            pluginCall.reject("Must provide key");
            return;
        }
        SharedPreferences.Editor editorEdit = this.preferences.f4631a.edit();
        editorEdit.remove(string);
        editorEdit.apply();
        pluginCall.resolve();
    }

    @PluginMethod
    public void removeOld(PluginCall pluginCall) {
        pluginCall.resolve();
    }

    @PluginMethod
    public void set(PluginCall pluginCall) {
        String string = pluginCall.getString("key");
        if (string == null) {
            pluginCall.reject("Must provide key");
            return;
        }
        String string2 = pluginCall.getString("value");
        SharedPreferences.Editor editorEdit = this.preferences.f4631a.edit();
        editorEdit.putString(string, string2);
        editorEdit.apply();
        pluginCall.resolve();
    }
}
