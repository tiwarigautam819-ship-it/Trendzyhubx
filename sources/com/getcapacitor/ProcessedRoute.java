package com.getcapacitor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ProcessedRoute {
    private boolean ignoreAssetPath;
    private boolean isAsset;
    private String path;

    public String getPath() {
        return this.path;
    }

    public boolean isAsset() {
        return this.isAsset;
    }

    public boolean isIgnoreAssetPath() {
        return this.ignoreAssetPath;
    }

    public void setAsset(boolean z5) {
        this.isAsset = z5;
    }

    public void setIgnoreAssetPath(boolean z5) {
        this.ignoreAssetPath = z5;
    }

    public void setPath(String str) {
        this.path = str;
    }
}
