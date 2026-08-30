package d1;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2245d;

    public j(int i6, int i9, long j3, long j8) {
        this.f2242a = i6;
        this.f2243b = i9;
        this.f2244c = j3;
        this.f2245d = j8;
    }

    public static j a(File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            j jVar = new j(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return jVar;
        } finally {
        }
    }

    public final void b(File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f2242a);
            dataOutputStream.writeInt(this.f2243b);
            dataOutputStream.writeLong(this.f2244c);
            dataOutputStream.writeLong(this.f2245d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof j)) {
            j jVar = (j) obj;
            if (this.f2243b == jVar.f2243b && this.f2244c == jVar.f2244c && this.f2242a == jVar.f2242a && this.f2245d == jVar.f2245d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f2243b), Long.valueOf(this.f2244c), Integer.valueOf(this.f2242a), Long.valueOf(this.f2245d));
    }
}
