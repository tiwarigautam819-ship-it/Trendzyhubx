package com.getcapacitor.plugin.util;

import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.Bridge;
import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.JSValue;
import com.getcapacitor.PluginCall;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CapacitorHttpUrlConnection implements ICapacitorHttpUrlConnection {
    private final HttpURLConnection connection;

    public CapacitorHttpUrlConnection(HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
        setDefaultRequestProperties();
    }

    private String buildDefaultAcceptLanguageProperty() {
        Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (TextUtils.isEmpty(language)) {
            return "";
        }
        if (TextUtils.isEmpty(country)) {
            return x.f(language, ";q=0.5");
        }
        return language + "-" + country + "," + language + ";q=0.5";
    }

    private void setDefaultRequestProperties() {
        String strBuildDefaultAcceptLanguageProperty = buildDefaultAcceptLanguageProperty();
        if (TextUtils.isEmpty(strBuildDefaultAcceptLanguageProperty)) {
            return;
        }
        this.connection.setRequestProperty("Accept-Language", strBuildDefaultAcceptLanguageProperty);
    }

    private void writeFormDataRequestBody(String str, JSArray jSArray) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(this.connection.getOutputStream());
        try {
            String str2 = str.split(";")[1].split("=")[1];
            for (Object obj : jSArray.toList()) {
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) obj;
                    String string = jSONObject.getString("type");
                    String string2 = jSONObject.getString("key");
                    String string3 = jSONObject.getString("value");
                    if (string.equals("string")) {
                        dataOutputStream.writeBytes("--" + str2 + "\r\n");
                        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + string2 + "\"\r\n\r\n");
                        dataOutputStream.write(string3.getBytes(StandardCharsets.UTF_8));
                        dataOutputStream.writeBytes("\r\n");
                    } else if (string.equals("base64File")) {
                        String string4 = jSONObject.getString("fileName");
                        String string5 = jSONObject.getString("contentType");
                        dataOutputStream.writeBytes("--" + str2 + "\r\n");
                        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + string2 + "\"; filename=\"" + string4 + "\"\r\n");
                        StringBuilder sb = new StringBuilder();
                        sb.append("Content-Type: ");
                        sb.append(string5);
                        sb.append("\r\n");
                        dataOutputStream.writeBytes(sb.toString());
                        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary\r\n");
                        dataOutputStream.writeBytes("\r\n");
                        if (Build.VERSION.SDK_INT >= 26) {
                            dataOutputStream.write(Base64.getDecoder().decode(string3));
                        } else {
                            dataOutputStream.write(android.util.Base64.decode(string3, 0));
                        }
                        dataOutputStream.writeBytes("\r\n");
                    }
                }
            }
            dataOutputStream.writeBytes("--" + str2 + "--\r\n");
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void writeObjectRequestBody(JSObject jSObject) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(this.connection.getOutputStream());
        try {
            Iterator<String> itKeys = jSObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSObject.get(next);
                dataOutputStream.writeBytes(URLEncoder.encode(next, "UTF-8"));
                dataOutputStream.writeBytes("=");
                dataOutputStream.writeBytes(URLEncoder.encode(obj.toString(), "UTF-8"));
                if (itKeys.hasNext()) {
                    dataOutputStream.writeBytes("&");
                }
            }
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void writeRequestBody(String str) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(this.connection.getOutputStream());
        try {
            dataOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void connect() {
        this.connection.connect();
    }

    public void disconnect() {
        this.connection.disconnect();
    }

    @Override // com.getcapacitor.plugin.util.ICapacitorHttpUrlConnection
    public InputStream getErrorStream() {
        return this.connection.getErrorStream();
    }

    @Override // com.getcapacitor.plugin.util.ICapacitorHttpUrlConnection
    public String getHeaderField(String str) {
        return this.connection.getHeaderField(str);
    }

    public Map<String, List<String>> getHeaderFields() {
        return this.connection.getHeaderFields();
    }

    public HttpURLConnection getHttpConnection() {
        return this.connection;
    }

    @Override // com.getcapacitor.plugin.util.ICapacitorHttpUrlConnection
    public InputStream getInputStream() {
        return this.connection.getInputStream();
    }

    public int getResponseCode() {
        return this.connection.getResponseCode();
    }

    public URL getURL() {
        return this.connection.getURL();
    }

    public void setAllowUserInteraction(boolean z5) {
        this.connection.setAllowUserInteraction(z5);
    }

    public void setConnectTimeout(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("timeout can not be negative");
        }
        this.connection.setConnectTimeout(i6);
    }

    public void setDisableRedirects(boolean z5) {
        this.connection.setInstanceFollowRedirects(!z5);
    }

    public void setDoOutput(boolean z5) {
        this.connection.setDoOutput(z5);
    }

    public void setReadTimeout(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("timeout can not be negative");
        }
        this.connection.setReadTimeout(i6);
    }

    public void setRequestBody(PluginCall pluginCall, JSValue jSValue) throws IOException {
        setRequestBody(pluginCall, jSValue, null);
    }

    public void setRequestHeaders(JSObject jSObject) {
        Iterator<String> itKeys = jSObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.connection.setRequestProperty(next, jSObject.getString(next));
        }
    }

    public void setRequestMethod(String str) throws ProtocolException {
        this.connection.setRequestMethod(str);
    }

    public void setSSLSocketFactory(Bridge bridge) {
        try {
            Class<?> cls = Class.forName("io.ionic.sslpinning.SSLPinning");
            SSLSocketFactory sSLSocketFactory = (SSLSocketFactory) cls.getDeclaredMethod("getSSLSocketFactory", Bridge.class).invoke(cls.getDeclaredConstructor(null).newInstance(null), bridge);
            if (sSLSocketFactory != null) {
                ((HttpsURLConnection) this.connection).setSSLSocketFactory(sSLSocketFactory);
            }
        } catch (Exception unused) {
        }
    }

    public void setRequestBody(PluginCall pluginCall, JSValue jSValue, String str) throws IOException {
        String string;
        String requestProperty = this.connection.getRequestProperty("Content-Type");
        if (requestProperty == null || requestProperty.isEmpty()) {
            return;
        }
        if (requestProperty.contains("application/json")) {
            JSArray array = null;
            if (jSValue != null) {
                string = jSValue.toString();
            } else {
                array = pluginCall.getArray(MTCoreConstants.Protocol.KEY_DATA, null);
                string = "";
            }
            if (array != null) {
                string = array.toString();
            } else if (jSValue == null) {
                string = pluginCall.getString(MTCoreConstants.Protocol.KEY_DATA);
            }
            writeRequestBody(string != null ? string : "");
            return;
        }
        if (str == null || !str.equals("file")) {
            if (requestProperty.contains("application/x-www-form-urlencoded")) {
                try {
                    writeObjectRequestBody(jSValue.toJSObject());
                    return;
                } catch (Exception unused) {
                    writeRequestBody(jSValue.toString());
                    return;
                }
            } else if (str == null || !str.equals("formData")) {
                writeRequestBody(jSValue.toString());
                return;
            } else {
                writeFormDataRequestBody(requestProperty, jSValue.toJSArray());
                return;
            }
        }
        DataOutputStream dataOutputStream = new DataOutputStream(this.connection.getOutputStream());
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                dataOutputStream.write(Base64.getDecoder().decode(jSValue.toString()));
            }
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
