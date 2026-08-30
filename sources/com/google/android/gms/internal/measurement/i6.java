package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class i6 extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1676a = 0;

    public static i6 a() {
        return new i6("Protocol message had invalid UTF-8.");
    }

    public static i6 b() {
        return new i6("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static i6 c() {
        return new i6("Failed to parse the message.");
    }

    public static i6 d() {
        return new i6("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
