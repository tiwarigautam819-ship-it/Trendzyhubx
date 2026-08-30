package com.getcapacitor;

import android.content.res.AssetManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginManager {
    private final AssetManager assetManager;

    public PluginManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    private JSONArray parsePluginsJSON() throws PluginLoadException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.assetManager.open("capacitor.plugins.json")));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        JSONArray jSONArray = new JSONArray(sb.toString());
                        bufferedReader.close();
                        return jSONArray;
                    }
                    sb.append(line);
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            throw new PluginLoadException("Could not load capacitor.plugins.json");
        } catch (JSONException unused2) {
            throw new PluginLoadException("Could not parse capacitor.plugins.json as JSON");
        }
    }

    public List<Class<? extends Plugin>> loadPluginClasses() throws PluginLoadException {
        JSONArray pluginsJSON = parsePluginsJSON();
        ArrayList arrayList = new ArrayList();
        try {
            int length = pluginsJSON.length();
            for (int i6 = 0; i6 < length; i6++) {
                arrayList.add(Class.forName(pluginsJSON.getJSONObject(i6).getString("classpath")).asSubclass(Plugin.class));
            }
            return arrayList;
        } catch (ClassNotFoundException e9) {
            throw new PluginLoadException("Could not find class by class path: " + e9.getMessage());
        } catch (JSONException unused) {
            throw new PluginLoadException("Could not parse capacitor.plugins.json as JSON");
        }
    }
}
