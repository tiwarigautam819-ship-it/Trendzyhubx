package q5;

import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public enum a extends h {
    public a() {
        super("IDENTITY", 0);
    }

    @Override // q5.h
    public final String b(Field field) {
        return field.getName();
    }
}
