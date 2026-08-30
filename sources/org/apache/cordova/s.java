package org.apache.cordova;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Base64;
import android.webkit.MimeTypeMap;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.Bridge;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetManager f4561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContentResolver f4562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l0 f4563c;

    public s(Context context, l0 l0Var) {
        this.f4562b = context.getContentResolver();
        this.f4561a = context.getAssets();
        this.f4563c = l0Var;
    }

    public static String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf != -1) {
            str = str.substring(iLastIndexOf + 1);
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        return lowerCase.equals("3ga") ? "audio/3gpp" : lowerCase.equals("js") ? "text/javascript" : MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
    }

    public static int c(Uri uri) {
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("Relative URIs are not supported.");
        }
        String scheme = uri.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equalsIgnoreCase(scheme)) {
            return 2;
        }
        if ("android.resource".equalsIgnoreCase(scheme)) {
            return 3;
        }
        if ("file".equalsIgnoreCase(scheme)) {
            return uri.getPath().startsWith("/android_asset/") ? 1 : 0;
        }
        if (MTCoreConstants.Protocol.KEY_DATA.equalsIgnoreCase(scheme)) {
            return 4;
        }
        if (Bridge.CAPACITOR_HTTP_SCHEME.equalsIgnoreCase(scheme)) {
            return 5;
        }
        if (Bridge.CAPACITOR_HTTPS_SCHEME.equalsIgnoreCase(scheme)) {
            return 6;
        }
        return "cdvplugin".equalsIgnoreCase(scheme) ? 7 : -1;
    }

    public final String a(Uri uri) {
        switch (c(uri)) {
            case 0:
            case 1:
                return b(uri.getPath());
            case 2:
            case 3:
                return this.f4562b.getType(uri);
            case 4:
                String schemeSpecificPart = uri.getSchemeSpecificPart();
                int iIndexOf = schemeSpecificPart.indexOf(44);
                if (iIndexOf == -1) {
                    return null;
                }
                String[] strArrSplit = schemeSpecificPart.substring(0, iIndexOf).split(";");
                if (strArrSplit.length > 0) {
                    return strArrSplit[0];
                }
                return null;
            case 5:
            case 6:
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
                    httpURLConnection.setDoInput(false);
                    httpURLConnection.setRequestMethod("HEAD");
                    String headerField = httpURLConnection.getHeaderField("Content-Type");
                    return headerField != null ? headerField.split(";")[0] : headerField;
                } catch (IOException unused) {
                    return null;
                }
            default:
                return null;
        }
    }

    public final r d(Uri uri) throws IOException {
        InputStream inputStreamOpen;
        byte[] bytes;
        AssetManager assetManager = this.f4561a;
        switch (c(uri)) {
            case 0:
                FileInputStream fileInputStream = new FileInputStream(uri.getPath());
                String strB = b(uri.getPath());
                fileInputStream.getChannel().size();
                return new r(strB, fileInputStream);
            case 1:
                String strSubstring = uri.getPath().substring(15);
                try {
                    AssetFileDescriptor assetFileDescriptorOpenFd = assetManager.openFd(strSubstring);
                    inputStreamOpen = assetFileDescriptorOpenFd.createInputStream();
                    assetFileDescriptorOpenFd.getLength();
                    break;
                } catch (FileNotFoundException unused) {
                    inputStreamOpen = assetManager.open(strSubstring);
                    inputStreamOpen.available();
                }
                return new r(b(strSubstring), inputStreamOpen);
            case 2:
            case 3:
                ContentResolver contentResolver = this.f4562b;
                String type = contentResolver.getType(uri);
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                FileInputStream fileInputStreamCreateInputStream = assetFileDescriptorOpenAssetFileDescriptor.createInputStream();
                assetFileDescriptorOpenAssetFileDescriptor.getLength();
                return new r(type, fileInputStreamCreateInputStream);
            case 4:
                String schemeSpecificPart = uri.getSchemeSpecificPart();
                int iIndexOf = schemeSpecificPart.indexOf(44);
                r rVar = null;
                if (iIndexOf != -1) {
                    String[] strArrSplit = schemeSpecificPart.substring(0, iIndexOf).split(";");
                    String str = strArrSplit.length > 0 ? strArrSplit[0] : null;
                    boolean z5 = false;
                    int i6 = 1;
                    while (i6 < strArrSplit.length) {
                        if ("base64".equalsIgnoreCase(strArrSplit[i6])) {
                            z5 = true;
                        }
                        i6++;
                        z5 = z5;
                    }
                    String strSubstring2 = schemeSpecificPart.substring(iIndexOf + 1);
                    if (z5) {
                        bytes = Base64.decode(strSubstring2, 0);
                    } else {
                        try {
                            bytes = strSubstring2.getBytes("UTF-8");
                        } catch (UnsupportedEncodingException unused2) {
                            bytes = strSubstring2.getBytes();
                        }
                    }
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                    int length = bytes.length;
                    rVar = new r(str, byteArrayInputStream);
                }
                if (rVar != null) {
                    return rVar;
                }
                break;
            case 5:
            case 6:
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
                httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                httpURLConnection.setDoInput(true);
                String headerField = httpURLConnection.getHeaderField("Content-Type");
                if (headerField != null) {
                    headerField = headerField.split(";")[0];
                }
                httpURLConnection.getContentLength();
                return new r(headerField, "gzip".equals(httpURLConnection.getContentEncoding()) ? new GZIPInputStream(httpURLConnection.getInputStream()) : httpURLConnection.getInputStream());
            case 7:
                o oVarC = this.f4563c.c(uri.getHost());
                if (oVarC != null) {
                    return oVarC.handleOpenForRead(uri);
                }
                throw new FileNotFoundException("Invalid plugin ID in URI: " + uri);
        }
        throw new FileNotFoundException("URI not supported by CordovaResourceApi: " + uri);
    }

    public final Uri e(Uri uri) {
        Uri uriRemapUri;
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("Relative URIs are not supported.");
        }
        l0 l0Var = this.f4563c;
        synchronized (l0Var.f4542a) {
            try {
                Iterator it = l0Var.f4542a.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        uriRemapUri = null;
                        break;
                    }
                    o oVar = (o) it.next();
                    if (oVar == null || (uriRemapUri = oVar.remapUri(uri)) == null) {
                    }
                }
            } finally {
            }
        }
        return uriRemapUri != null ? uriRemapUri : uri;
    }
}
