package com.getcapacitor.plugin.util;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
enum MimeType {
    APPLICATION_JSON("application/json"),
    APPLICATION_VND_API_JSON("application/vnd.api+json"),
    TEXT_HTML("text/html");

    private final String value;

    MimeType(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
