package com.getcapacitor;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class Logger {
    public static final String LOG_TAG_CORE = "Capacitor";
    public static CapConfig config;
    private static Logger instance;

    public static void debug(String str) {
        debug(LOG_TAG_CORE, str);
    }

    public static void error(String str) {
        error(LOG_TAG_CORE, str, null);
    }

    private static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    public static void info(String str) {
        info(LOG_TAG_CORE, str);
    }

    public static void init(CapConfig capConfig) {
        getInstance().loadConfig(capConfig);
    }

    private void loadConfig(CapConfig capConfig) {
        config = capConfig;
    }

    public static boolean shouldLog() {
        CapConfig capConfig = config;
        return capConfig == null || capConfig.isLoggingEnabled();
    }

    public static String tags(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return LOG_TAG_CORE;
        }
        return "Capacitor/" + TextUtils.join("/", strArr);
    }

    public static void verbose(String str) {
        verbose(LOG_TAG_CORE, str);
    }

    public static void warn(String str) {
        warn(LOG_TAG_CORE, str);
    }

    public static void debug(String str, String str2) {
        if (shouldLog()) {
            Log.d(str, str2);
        }
    }

    public static void error(String str, Throwable th) {
        error(LOG_TAG_CORE, str, th);
    }

    public static void info(String str, String str2) {
        if (shouldLog()) {
            Log.i(str, str2);
        }
    }

    public static void verbose(String str, String str2) {
        if (shouldLog()) {
            Log.v(str, str2);
        }
    }

    public static void warn(String str, String str2) {
        if (shouldLog()) {
            Log.w(str, str2);
        }
    }

    public static void error(String str, String str2, Throwable th) {
        if (shouldLog()) {
            Log.e(str, str2, th);
        }
    }
}
