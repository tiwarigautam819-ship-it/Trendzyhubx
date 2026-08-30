package com.getcapacitor;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum PermissionState {
    GRANTED("granted"),
    DENIED("denied"),
    PROMPT("prompt"),
    PROMPT_WITH_RATIONALE("prompt-with-rationale");

    private String state;

    PermissionState(String str) {
        this.state = str;
    }

    public static PermissionState byState(String str) {
        return valueOf(str.toUpperCase(Locale.ROOT).replace('-', '_'));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.state;
    }
}
