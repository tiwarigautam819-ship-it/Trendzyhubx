package q2;

import java.util.EnumSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum d0 {
    /* JADX INFO: Fake field, exist only in values array */
    None(0),
    Enabled(1),
    RequireConfirm(2);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EnumSet f4726b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4730a;

    static {
        EnumSet enumSetAllOf = EnumSet.allOf(d0.class);
        d7.g.e("allOf(SmartLoginOption::class.java)", enumSetAllOf);
        f4726b = enumSetAllOf;
    }

    d0(int i6) {
        this.f4730a = j;
    }
}
