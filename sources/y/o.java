package y;

import android.media.AudioAttributes;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {
    public static AudioAttributes a(AudioAttributes.Builder builder) {
        return builder.build();
    }

    public static AudioAttributes.Builder b() {
        return new AudioAttributes.Builder();
    }

    public static AudioAttributes.Builder c(AudioAttributes.Builder builder, int i6) {
        return builder.setContentType(i6);
    }

    public static AudioAttributes.Builder d(AudioAttributes.Builder builder, int i6) {
        return builder.setUsage(i6);
    }
}
