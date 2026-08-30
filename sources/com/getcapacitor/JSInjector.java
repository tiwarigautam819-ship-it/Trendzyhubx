package com.getcapacitor;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
class JSInjector {
    private String bridgeJS;
    private String cordovaJS;
    private String cordovaPluginsFileJS;
    private String cordovaPluginsJS;
    private String globalJS;
    private String localUrlJS;
    private String miscJS;
    private String pluginJS;

    public JSInjector(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    private String readAssetStream(InputStream inputStream) {
        try {
            char[] cArr = new char[1024];
            StringBuilder sb = new StringBuilder();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
            while (true) {
                int i6 = inputStreamReader.read(cArr, 0, 1024);
                if (i6 < 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, i6);
            }
        } catch (Exception e9) {
            Logger.error("Unable to process HTML asset file. This is a fatal error", e9);
            return "";
        }
    }

    public InputStream getInjectedStream(InputStream inputStream) {
        String strH = x.h(new StringBuilder("<script type=\"text/javascript\">"), getScriptString(), "</script>");
        String assetStream = readAssetStream(inputStream);
        StringBuilder sb = new StringBuilder(assetStream);
        if (assetStream.contains("<head>")) {
            sb.insert(assetStream.indexOf("<head>") + 6, "\n" + strH + "\n");
            assetStream = sb.toString();
        } else if (assetStream.contains("</head>")) {
            sb.insert(assetStream.indexOf("</head>"), "\n" + strH + "\n");
            assetStream = sb.toString();
        } else {
            Logger.error("Unable to inject Capacitor, Plugins won't work");
        }
        return new ByteArrayInputStream(assetStream.getBytes(StandardCharsets.UTF_8));
    }

    public String getScriptString() {
        String str = this.globalJS + "\n\n" + this.localUrlJS + "\n\n" + this.bridgeJS + "\n\n" + this.pluginJS + "\n\n" + this.cordovaJS + "\n\n" + this.cordovaPluginsFileJS + "\n\n" + this.cordovaPluginsJS;
        if (this.miscJS == null) {
            return str;
        }
        return str + "\n\n" + this.miscJS;
    }

    public JSInjector(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.globalJS = str;
        this.bridgeJS = str2;
        this.pluginJS = str3;
        this.cordovaJS = str4;
        this.cordovaPluginsJS = str5;
        this.cordovaPluginsFileJS = str6;
        this.localUrlJS = str7;
        this.miscJS = str8;
    }
}
