package androidx.media;

import i1.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f766a = aVar.f(audioAttributesImplBase.f766a, 1);
        audioAttributesImplBase.f767b = aVar.f(audioAttributesImplBase.f767b, 2);
        audioAttributesImplBase.f768c = aVar.f(audioAttributesImplBase.f768c, 3);
        audioAttributesImplBase.f769d = aVar.f(audioAttributesImplBase.f769d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        aVar.getClass();
        aVar.j(audioAttributesImplBase.f766a, 1);
        aVar.j(audioAttributesImplBase.f767b, 2);
        aVar.j(audioAttributesImplBase.f768c, 3);
        aVar.j(audioAttributesImplBase.f769d, 4);
    }
}
