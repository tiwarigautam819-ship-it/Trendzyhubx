package com.getcapacitor.plugin.util;

import android.text.TextUtils;
import android.util.Base64;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.getcapacitor.Bridge;
import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.JSValue;
import com.getcapacitor.PluginCall;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class HttpRequestHandler {

    /* JADX INFO: renamed from: com.getcapacitor.plugin.util.HttpRequestHandler$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType;

        static {
            int[] iArr = new int[ResponseType.values().length];
            $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType = iArr;
            try {
                iArr[ResponseType.ARRAY_BUFFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType[ResponseType.BLOB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType[ResponseType.JSON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType[ResponseType.DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType[ResponseType.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class HttpURLConnectionBuilder {
        public Integer connectTimeout;
        public CapacitorHttpUrlConnection connection;
        public Boolean disableRedirects;
        public JSObject headers;
        public String method;
        public Integer readTimeout;
        public URL url;

        private static void addUrlParam(StringBuilder sb, String str, String str2, boolean z5) {
            if (z5) {
                try {
                    str = URLEncoder.encode(str, "UTF-8");
                    str2 = URLEncoder.encode(str2, "UTF-8");
                } catch (UnsupportedEncodingException e9) {
                    throw new RuntimeException(e9.getCause());
                }
            }
            sb.append(str);
            sb.append("=");
            sb.append(str2);
        }

        public CapacitorHttpUrlConnection build() {
            return this.connection;
        }

        public HttpURLConnectionBuilder openConnection() throws ProtocolException {
            CapacitorHttpUrlConnection capacitorHttpUrlConnection = new CapacitorHttpUrlConnection((HttpURLConnection) this.url.openConnection());
            this.connection = capacitorHttpUrlConnection;
            capacitorHttpUrlConnection.setAllowUserInteraction(false);
            this.connection.setRequestMethod(this.method);
            Integer num = this.connectTimeout;
            if (num != null) {
                this.connection.setConnectTimeout(num.intValue());
            }
            Integer num2 = this.readTimeout;
            if (num2 != null) {
                this.connection.setReadTimeout(num2.intValue());
            }
            Boolean bool = this.disableRedirects;
            if (bool != null) {
                this.connection.setDisableRedirects(bool.booleanValue());
            }
            this.connection.setRequestHeaders(this.headers);
            return this;
        }

        public HttpURLConnectionBuilder setConnectTimeout(Integer num) {
            this.connectTimeout = num;
            return this;
        }

        public HttpURLConnectionBuilder setDisableRedirects(Boolean bool) {
            this.disableRedirects = bool;
            return this;
        }

        public HttpURLConnectionBuilder setHeaders(JSObject jSObject) {
            this.headers = jSObject;
            return this;
        }

        public HttpURLConnectionBuilder setMethod(String str) {
            this.method = str;
            return this;
        }

        public HttpURLConnectionBuilder setReadTimeout(Integer num) {
            this.readTimeout = num;
            return this;
        }

        public HttpURLConnectionBuilder setUrl(URL url) {
            this.url = url;
            return this;
        }

        public HttpURLConnectionBuilder setUrlParams(JSObject jSObject) {
            return setUrlParams(jSObject, true);
        }

        public HttpURLConnectionBuilder setUrlParams(JSObject jSObject, boolean z5) throws URISyntaxException {
            String query = this.url.getQuery();
            if (query == null) {
                query = "";
            }
            Iterator<String> itKeys = jSObject.keys();
            if (!itKeys.hasNext()) {
                return this;
            }
            StringBuilder sb = new StringBuilder(query);
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    StringBuilder sb2 = new StringBuilder();
                    JSONArray jSONArray = jSObject.getJSONArray(next);
                    for (int i6 = 0; i6 < jSONArray.length(); i6++) {
                        addUrlParam(sb2, next, jSONArray.getString(i6), z5);
                        if (i6 != jSONArray.length() - 1) {
                            sb2.append("&");
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append((CharSequence) sb2);
                } catch (JSONException unused) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    addUrlParam(sb, next, jSObject.getString(next), z5);
                }
            }
            String string = sb.toString();
            URI uri = this.url.toURI();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(uri.getScheme());
            sb3.append("://");
            sb3.append(uri.getAuthority());
            sb3.append(uri.getPath());
            sb3.append(!string.equals("") ? "?".concat(string) : "");
            sb3.append(uri.getFragment() != null ? uri.getFragment() : "");
            this.url = new URL(sb3.toString());
            return this;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    @FunctionalInterface
    public interface ProgressEmitter {
        void emit(Integer num, Integer num2);
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v4 com.getcapacitor.plugin.util.HttpRequestHandler$ResponseType, still in use, count: 1, list:
      (r0v4 com.getcapacitor.plugin.util.HttpRequestHandler$ResponseType) from 0x0042: SPUT (r0v4 com.getcapacitor.plugin.util.HttpRequestHandler$ResponseType) (LINE:67) com.getcapacitor.plugin.util.HttpRequestHandler.ResponseType.DEFAULT com.getcapacitor.plugin.util.HttpRequestHandler$ResponseType
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class ResponseType {
        ARRAY_BUFFER("arraybuffer"),
        BLOB("blob"),
        DOCUMENT("document"),
        JSON(MTPushConstants.Analysis.KEY_JSON),
        TEXT("text");

        static final ResponseType DEFAULT = new ResponseType("text");
        private final String name;

        static {
        }

        private ResponseType(String str) {
            this.name = str;
        }

        public static ResponseType parse(String str) {
            for (ResponseType responseType : values()) {
                if (responseType.name.equalsIgnoreCase(str)) {
                    return responseType;
                }
            }
            return DEFAULT;
        }

        public static ResponseType valueOf(String str) {
            return (ResponseType) Enum.valueOf(ResponseType.class, str);
        }

        public static ResponseType[] values() {
            return (ResponseType[]) $VALUES.clone();
        }
    }

    public static JSObject buildResponse(CapacitorHttpUrlConnection capacitorHttpUrlConnection) {
        return buildResponse(capacitorHttpUrlConnection, ResponseType.DEFAULT);
    }

    public static JSObject buildResponseHeaders(CapacitorHttpUrlConnection capacitorHttpUrlConnection) {
        JSObject jSObject = new JSObject();
        for (Map.Entry<String, List<String>> entry : capacitorHttpUrlConnection.getHeaderFields().entrySet()) {
            jSObject.put(entry.getKey(), TextUtils.join(", ", entry.getValue()));
        }
        return jSObject;
    }

    public static Boolean isDomainExcludedFromSSL(Bridge bridge, URL url) {
        try {
            Class<?> cls = Class.forName("io.ionic.sslpinning.SSLPinning");
            return (Boolean) cls.getDeclaredMethod("isDomainExcluded", Bridge.class, URL.class).invoke(cls.getDeclaredConstructor(null).newInstance(null), bridge, url);
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    public static boolean isOneOf(String str, MimeType... mimeTypeArr) {
        if (str != null) {
            for (MimeType mimeType : mimeTypeArr) {
                if (str.contains(mimeType.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Object parseJSON(String str) {
        new JSONObject();
        try {
            if ("null".equals(str.trim())) {
                return JSONObject.NULL;
            }
            if ("true".equals(str.trim())) {
                return Boolean.TRUE;
            }
            if ("false".equals(str.trim())) {
                return Boolean.FALSE;
            }
            if (str.trim().length() <= 0) {
                return "";
            }
            if (str.trim().matches("^\".*\"$")) {
                return str.trim().substring(1, str.trim().length() - 1);
            }
            if (str.trim().matches("^-?\\d+$")) {
                return Integer.valueOf(Integer.parseInt(str.trim()));
            }
            if (str.trim().matches("^-?\\d+(\\.\\d+)?$")) {
                return Double.valueOf(Double.parseDouble(str.trim()));
            }
            try {
                return new JSObject(str);
            } catch (JSONException unused) {
                return new JSArray(str);
            }
        } catch (JSONException unused2) {
            return str;
        }
    }

    public static Object readData(ICapacitorHttpUrlConnection iCapacitorHttpUrlConnection, ResponseType responseType) {
        InputStream errorStream = iCapacitorHttpUrlConnection.getErrorStream();
        String headerField = iCapacitorHttpUrlConnection.getHeaderField("Content-Type");
        if (errorStream != null) {
            return isOneOf(headerField, MimeType.APPLICATION_JSON, MimeType.APPLICATION_VND_API_JSON) ? parseJSON(readStreamAsString(errorStream)) : readStreamAsString(errorStream);
        }
        if (headerField != null && headerField.contains(MimeType.APPLICATION_JSON.getValue())) {
            return parseJSON(readStreamAsString(iCapacitorHttpUrlConnection.getInputStream()));
        }
        InputStream inputStream = iCapacitorHttpUrlConnection.getInputStream();
        int i6 = AnonymousClass1.$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType[responseType.ordinal()];
        return (i6 == 1 || i6 == 2) ? readStreamAsBase64(inputStream) : i6 != 3 ? readStreamAsString(inputStream) : parseJSON(readStreamAsString(inputStream));
    }

    public static String readStreamAsBase64(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i6 = inputStream.read(bArr);
                if (i6 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    String strEncodeToString = Base64.encodeToString(byteArray, 0, byteArray.length, 0);
                    byteArrayOutputStream.close();
                    return strEncodeToString;
                }
                byteArrayOutputStream.write(bArr, 0, i6);
            }
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String readStreamAsString(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        try {
            StringBuilder sb = new StringBuilder();
            String line = bufferedReader.readLine();
            while (line != null) {
                sb.append(line);
                line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(System.getProperty("line.separator"));
                }
            }
            String string = sb.toString();
            bufferedReader.close();
            return string;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static JSObject request(PluginCall pluginCall, String str, Bridge bridge) throws IOException {
        String string = str;
        String string2 = pluginCall.getString("url", "");
        JSObject object = pluginCall.getObject("headers", new JSObject());
        JSObject object2 = pluginCall.getObject("params", new JSObject());
        Integer num = pluginCall.getInt("connectTimeout");
        Integer num2 = pluginCall.getInt("readTimeout");
        Boolean bool = pluginCall.getBoolean("disableRedirects");
        Boolean bool2 = pluginCall.getBoolean("shouldEncodeUrlParams", Boolean.TRUE);
        ResponseType responseType = ResponseType.parse(pluginCall.getString("responseType"));
        String string3 = pluginCall.getString("dataType");
        if (string == null) {
            string = pluginCall.getString(FirebaseAnalytics.Param.METHOD, "GET");
        }
        String upperCase = string.toUpperCase(Locale.ROOT);
        boolean z5 = upperCase.equals("DELETE") || upperCase.equals("PATCH") || upperCase.equals("POST") || upperCase.equals("PUT");
        String string4 = object.getString("x-cap-user-agent");
        if (string4 != null) {
            object.put("User-Agent", string4);
        }
        object.remove("x-cap-user-agent");
        if (!object.has("User-Agent") && !object.has("user-agent")) {
            object.put("User-Agent", bridge.getConfig().getOverriddenUserAgentString());
        }
        URL url = new URL(string2);
        CapacitorHttpUrlConnection capacitorHttpUrlConnectionBuild = new HttpURLConnectionBuilder().setUrl(url).setMethod(upperCase).setHeaders(object).setUrlParams(object2, bool2.booleanValue()).setConnectTimeout(num).setReadTimeout(num2).setDisableRedirects(bool).openConnection().build();
        if (bridge != null && !isDomainExcludedFromSSL(bridge, url).booleanValue()) {
            capacitorHttpUrlConnectionBuild.setSSLSocketFactory(bridge);
        }
        if (z5) {
            JSValue jSValue = new JSValue(pluginCall, MTCoreConstants.Protocol.KEY_DATA);
            if (jSValue.getValue() != null) {
                capacitorHttpUrlConnectionBuild.setDoOutput(true);
                capacitorHttpUrlConnectionBuild.setRequestBody(pluginCall, jSValue, string3);
            }
        }
        pluginCall.getData().put("activeCapacitorHttpUrlConnection", (Object) capacitorHttpUrlConnectionBuild);
        capacitorHttpUrlConnectionBuild.connect();
        JSObject jSObjectBuildResponse = buildResponse(capacitorHttpUrlConnectionBuild, responseType);
        capacitorHttpUrlConnectionBuild.disconnect();
        pluginCall.getData().remove("activeCapacitorHttpUrlConnection");
        return jSObjectBuildResponse;
    }

    public static JSObject buildResponse(CapacitorHttpUrlConnection capacitorHttpUrlConnection, ResponseType responseType) {
        int responseCode = capacitorHttpUrlConnection.getResponseCode();
        JSObject jSObject = new JSObject();
        jSObject.put("status", responseCode);
        jSObject.put("headers", (Object) buildResponseHeaders(capacitorHttpUrlConnection));
        jSObject.put("url", (Object) capacitorHttpUrlConnection.getURL());
        jSObject.put(MTCoreConstants.Protocol.KEY_DATA, readData(capacitorHttpUrlConnection, responseType));
        if (capacitorHttpUrlConnection.getErrorStream() != null) {
            jSObject.put("error", true);
        }
        return jSObject;
    }
}
