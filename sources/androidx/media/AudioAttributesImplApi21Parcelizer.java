package androidx.media;

import android.media.AudioAttributes;
import i1.a;
import i1.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(a aVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f764a = (AudioAttributes) aVar.g(audioAttributesImplApi21.f764a, 1);
        audioAttributesImplApi21.f765b = aVar.f(audioAttributesImplApi21.f765b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, a aVar) {
        aVar.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi21.f764a;
        aVar.i(1);
        ((b) aVar).f3083e.writeParcelable(audioAttributes, 0);
        aVar.j(audioAttributesImplApi21.f765b, 2);
    }
}
