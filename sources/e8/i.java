package e8;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface i extends w, ReadableByteChannel {
    j e(long j3);

    String f();

    String i(long j3);

    int k(o oVar);

    void l(long j3);

    long p();

    String q(Charset charset);

    InputStream r();

    byte readByte();

    int readInt();

    short readShort();

    void skip(long j3);
}
