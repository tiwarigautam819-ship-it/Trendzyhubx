package com.getcapacitor;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class PluginMethodHandle {
    private final Method method;
    private final String name;
    private final String returnType;

    public PluginMethodHandle(Method method, PluginMethod pluginMethod) {
        this.method = method;
        this.name = method.getName();
        this.returnType = pluginMethod.returnType();
    }

    public Method getMethod() {
        return this.method;
    }

    public String getName() {
        return this.name;
    }

    public String getReturnType() {
        return this.returnType;
    }
}
