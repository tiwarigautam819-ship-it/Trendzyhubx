package com.getcapacitor.util;

import android.graphics.Color;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class WebColor {
    public static int parseColor(String str) {
        if (str.charAt(0) != '#') {
            str = "#".concat(str);
        }
        if (str.length() != 7 && str.length() != 9) {
            throw new IllegalArgumentException("The encoded color space is invalid or unknown");
        }
        if (str.length() == 7) {
            return Color.parseColor(str);
        }
        return Color.parseColor("#" + str.substring(7) + str.substring(1, 7));
    }
}
