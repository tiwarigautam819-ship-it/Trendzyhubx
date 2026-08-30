package q5;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f4861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ h[] f4862b;

    static {
        a aVar = new a();
        f4861a = aVar;
        f4862b = new h[]{aVar, new h() { // from class: q5.b
            @Override // q5.h
            public final String b(Field field) {
                return h.c(field.getName());
            }
        }, new h() { // from class: q5.c
            @Override // q5.h
            public final String b(Field field) {
                return h.c(h.a(field.getName(), ' '));
            }
        }, new h() { // from class: q5.d
            @Override // q5.h
            public final String b(Field field) {
                return h.a(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        }, new h() { // from class: q5.e
            @Override // q5.h
            public final String b(Field field) {
                return h.a(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: q5.f
            @Override // q5.h
            public final String b(Field field) {
                return h.a(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: q5.g
            @Override // q5.h
            public final String b(Field field) {
                return h.a(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public static String a(String str, char c8) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c8);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int length = str.length();
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                break;
            }
            char cCharAt = str.charAt(i6);
            if (!Character.isLetter(cCharAt)) {
                i6++;
            } else if (!Character.isUpperCase(cCharAt)) {
                char upperCase = Character.toUpperCase(cCharAt);
                if (i6 == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i6) + upperCase + str.substring(i6 + 1);
            }
        }
        return str;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f4862b.clone();
    }

    public abstract String b(Field field);
}
