package com.getcapacitor.plugin;

import com.getcapacitor.Bridge;
import com.getcapacitor.Logger;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CapacitorCookieManager extends CookieManager {
    private final String TAG;
    private final String localUrl;
    private final String serverUrl;
    private final android.webkit.CookieManager webkitCookieManager;

    public CapacitorCookieManager(Bridge bridge) {
        this(null, null, bridge);
    }

    private String getDomainFromCookieString(String str) {
        String[] strArrSplit = str.toLowerCase(Locale.ROOT).split("domain=");
        return getSanitizedDomain(strArrSplit.length <= 1 ? null : strArrSplit[1].split(";")[0].trim());
    }

    public void flush() {
        this.webkitCookieManager.flush();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public Map<String, List<String>> get(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        String string = uri.toString();
        HashMap map2 = new HashMap();
        String cookieString = getCookieString(string);
        if (cookieString != null) {
            map2.put("Cookie", Collections.singletonList(cookieString));
        }
        return map2;
    }

    public HttpCookie getCookie(String str, String str2) {
        for (HttpCookie httpCookie : getCookies(str)) {
            if (httpCookie.getName().equals(str2)) {
                return httpCookie;
            }
        }
        return null;
    }

    @Override // java.net.CookieManager
    public CookieStore getCookieStore() {
        throw new UnsupportedOperationException();
    }

    public String getCookieString(String str) {
        try {
            String sanitizedDomain = getSanitizedDomain(str);
            Logger.info("CapacitorCookies", "Getting cookies at: '" + sanitizedDomain + "'");
            return this.webkitCookieManager.getCookie(sanitizedDomain);
        } catch (Exception e9) {
            Logger.error("CapacitorCookies", "Failed to get cookies at the given URL.", e9);
            return null;
        }
    }

    public HttpCookie[] getCookies(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            String cookieString = getCookieString(str);
            if (cookieString != null) {
                for (String str2 : cookieString.split(";")) {
                    HttpCookie httpCookie = HttpCookie.parse(str2).get(0);
                    httpCookie.setValue(httpCookie.getValue());
                    arrayList.add(httpCookie);
                }
            }
            return (HttpCookie[]) arrayList.toArray(new HttpCookie[arrayList.size()]);
        } catch (Exception unused) {
            return new HttpCookie[0];
        }
    }

    public String getSanitizedDomain(String str) throws Exception {
        String str2 = this.serverUrl;
        if (str2 == null || str2.isEmpty() || !(str == null || str.isEmpty() || this.serverUrl.contains(str))) {
            String str3 = this.localUrl;
            if (str3 == null || str3.isEmpty() || !(str == null || str.isEmpty() || this.localUrl.contains(str))) {
                try {
                    String scheme = new URI(str).getScheme();
                    if (scheme == null || scheme.isEmpty()) {
                        str = "https://" + str;
                    }
                } catch (URISyntaxException e9) {
                    Logger.error("CapacitorCookies", "Failed to get scheme from URL.", e9);
                }
            } else {
                str = this.localUrl;
            }
        } else {
            str = this.serverUrl;
        }
        try {
            new URI(str);
            return str;
        } catch (Exception e10) {
            Logger.error("CapacitorCookies", "Failed to get sanitized URL.", e10);
            throw e10;
        }
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public void put(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            return;
        }
        for (String str : map.keySet()) {
            if (str != null && (str.equalsIgnoreCase("Set-Cookie2") || str.equalsIgnoreCase("Set-Cookie"))) {
                List<String> list = map.get(str);
                Objects.requireNonNull(list);
                for (String str2 : list) {
                    try {
                        setCookie(uri.toString(), str2);
                        setCookie(getDomainFromCookieString(str2), str2);
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public void removeAllCookies() {
        this.webkitCookieManager.removeAllCookies(null);
        flush();
    }

    public void removeSessionCookies() {
        this.webkitCookieManager.removeSessionCookies(null);
    }

    public void setCookie(String str, String str2) {
        try {
            String sanitizedDomain = getSanitizedDomain(str);
            Logger.info("CapacitorCookies", "Setting cookie '" + str2 + "' at: '" + sanitizedDomain + "'");
            this.webkitCookieManager.setCookie(sanitizedDomain, str2);
            flush();
        } catch (Exception e9) {
            Logger.error("CapacitorCookies", "Failed to set cookie.", e9);
        }
    }

    public CapacitorCookieManager(CookieStore cookieStore, CookiePolicy cookiePolicy, Bridge bridge) {
        super(cookieStore, cookiePolicy);
        this.TAG = "CapacitorCookies";
        this.webkitCookieManager = android.webkit.CookieManager.getInstance();
        this.localUrl = bridge.getLocalUrl();
        this.serverUrl = bridge.getServerUrl();
    }

    public void setCookie(String str, String str2, String str3) {
        setCookie(str, str2 + "=" + str3);
    }

    public void setCookie(String str, String str2, String str3, String str4, String str5) {
        setCookie(str, str2 + "=" + str3 + "; expires=" + str4 + "; path=" + str5);
    }
}
