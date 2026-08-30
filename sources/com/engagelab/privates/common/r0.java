package com.engagelab.privates.common;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Queue<Integer> f1255a = new ConcurrentLinkedQueue();

    public static boolean a() {
        return f1255a.isEmpty();
    }

    public static int b() {
        if (f1255a.size() > 0) {
            return f1255a.poll().intValue();
        }
        return 0;
    }

    public static boolean c(int i6) {
        return f1255a.remove(Integer.valueOf(i6));
    }

    public static boolean a(int i6) {
        return f1255a.contains(Integer.valueOf(i6));
    }

    public static int c() {
        return f1255a.size();
    }

    public static boolean b(int i6) {
        return f1255a.offer(Integer.valueOf(i6));
    }
}
