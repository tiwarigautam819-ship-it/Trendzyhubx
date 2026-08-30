package com.engagelab.privates.common.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class DateUtil {
    private static volatile a dateFormatThreadLocal;
    private static final Object lock = new Object();
    private static ConcurrentHashMap<String, ThreadLocal<SimpleDateFormat>> sdfMap = new ConcurrentHashMap<>();
    public static String PATTERN_DATETIME_FILENAME = "yyyyMMdd_HHmm";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends ThreadLocal<SimpleDateFormat> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f1279a;

        public a(String str) {
            this.f1279a = str;
        }

        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat(this.f1279a, Locale.ENGLISH);
        }
    }

    public static SimpleDateFormat getSdf(String str) {
        ThreadLocal<SimpleDateFormat> threadLocal = sdfMap.get(str);
        if (threadLocal == null) {
            synchronized (lock) {
                try {
                    threadLocal = sdfMap.get(str);
                    if (threadLocal == null) {
                        dateFormatThreadLocal = new a(str);
                        sdfMap.put(str, dateFormatThreadLocal);
                        dateFormatThreadLocal = null;
                        threadLocal = sdfMap.get(str);
                    }
                } finally {
                }
            }
        }
        return threadLocal.get();
    }

    public static String getTodayDateTime() {
        return getSdf("yyyyMMddHHmmss").format(new Date());
    }

    public static String getTodayDateTimeForFilename() {
        return getSdf(PATTERN_DATETIME_FILENAME).format(new Date());
    }

    public static String getTodayDateTimeForReport() {
        return getSdf("yyyy-MM-dd_HH:mm:ss").format(new Date());
    }

    public static boolean isDaysAgo(Date date, int i6) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(date.getTime());
        calendar.roll(6, -i6);
        return calendar.after(calendar2);
    }

    public static Date parseDateInFilename(String str) {
        try {
            return getSdf(PATTERN_DATETIME_FILENAME).parse(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
