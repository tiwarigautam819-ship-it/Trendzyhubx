package com.getcapacitor;

import com.getcapacitor.annotation.CapacitorPlugin;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginHandle {
    private final Bridge bridge;
    private Plugin instance;
    private NativePlugin legacyPluginAnnotation;
    private CapacitorPlugin pluginAnnotation;
    private final Class<? extends Plugin> pluginClass;
    private final String pluginId;
    private final Map<String, PluginMethodHandle> pluginMethods;

    private PluginHandle(Class<? extends Plugin> cls, Bridge bridge) throws InvalidPluginException {
        this.pluginMethods = new HashMap();
        this.bridge = bridge;
        this.pluginClass = cls;
        CapacitorPlugin capacitorPlugin = (CapacitorPlugin) cls.getAnnotation(CapacitorPlugin.class);
        if (capacitorPlugin == null) {
            NativePlugin nativePlugin = (NativePlugin) cls.getAnnotation(NativePlugin.class);
            if (nativePlugin == null) {
                throw new InvalidPluginException("No @CapacitorPlugin annotation found for plugin ".concat(cls.getName()));
            }
            if (nativePlugin.name().equals("")) {
                this.pluginId = cls.getSimpleName();
            } else {
                this.pluginId = nativePlugin.name();
            }
            this.legacyPluginAnnotation = nativePlugin;
        } else {
            if (capacitorPlugin.name().equals("")) {
                this.pluginId = cls.getSimpleName();
            } else {
                this.pluginId = capacitorPlugin.name();
            }
            this.pluginAnnotation = capacitorPlugin;
        }
        indexMethods(cls);
    }

    private void indexMethods(Class<? extends Plugin> cls) {
        for (Method method : this.pluginClass.getMethods()) {
            PluginMethod pluginMethod = (PluginMethod) method.getAnnotation(PluginMethod.class);
            if (pluginMethod != null) {
                this.pluginMethods.put(method.getName(), new PluginMethodHandle(method, pluginMethod));
            }
        }
    }

    public String getId() {
        return this.pluginId;
    }

    public Plugin getInstance() {
        return this.instance;
    }

    public NativePlugin getLegacyPluginAnnotation() {
        return this.legacyPluginAnnotation;
    }

    public Collection<PluginMethodHandle> getMethods() {
        return this.pluginMethods.values();
    }

    public CapacitorPlugin getPluginAnnotation() {
        return this.pluginAnnotation;
    }

    public Class<? extends Plugin> getPluginClass() {
        return this.pluginClass;
    }

    public void invoke(String str, PluginCall pluginCall) {
        if (this.instance == null) {
            load();
        }
        PluginMethodHandle pluginMethodHandle = this.pluginMethods.get(str);
        if (pluginMethodHandle != null) {
            pluginMethodHandle.getMethod().invoke(this.instance, pluginCall);
            return;
        }
        throw new InvalidPluginMethodException("No method " + str + " found for plugin " + this.pluginClass.getName());
    }

    public Plugin load() throws PluginLoadException {
        Plugin plugin = this.instance;
        if (plugin != null) {
            return plugin;
        }
        try {
            Plugin pluginNewInstance = this.pluginClass.getDeclaredConstructor(null).newInstance(null);
            this.instance = pluginNewInstance;
            return loadInstance(pluginNewInstance);
        } catch (Exception unused) {
            throw new PluginLoadException("Unable to load plugin instance. Ensure plugin is publicly accessible");
        }
    }

    public Plugin loadInstance(Plugin plugin) {
        this.instance = plugin;
        plugin.setPluginHandle(this);
        this.instance.setBridge(this.bridge);
        this.instance.load();
        this.instance.initializeActivityLaunchers();
        return this.instance;
    }

    public PluginHandle(Bridge bridge, Class<? extends Plugin> cls) throws PluginLoadException {
        this(cls, bridge);
        load();
    }

    public PluginHandle(Bridge bridge, Plugin plugin) {
        this((Class<? extends Plugin>) plugin.getClass(), bridge);
        loadInstance(plugin);
    }
}
