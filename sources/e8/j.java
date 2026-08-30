package e8;

import com.engagelab.privates.core.constants.MTCoreConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class j implements Serializable, Comparable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j f2451d = new j(new byte[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f2452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient int f2453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient String f2454c;

    public j(byte[] bArr) {
        d7.g.f(MTCoreConstants.Protocol.KEY_DATA, bArr);
        this.f2452a = bArr;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException {
        int i6 = objectInputStream.readInt();
        if (i6 < 0) {
            throw new IllegalArgumentException(a1.a.i(i6, "byteCount < 0: ").toString());
        }
        byte[] bArr = new byte[i6];
        int i9 = 0;
        while (i9 < i6) {
            int i10 = objectInputStream.read(bArr, i9, i6 - i9);
            if (i10 == -1) {
                throw new EOFException();
            }
            i9 += i10;
        }
        j jVar = new j(bArr);
        Field declaredField = j.class.getDeclaredField("a");
        declaredField.setAccessible(true);
        declaredField.set(this, jVar.f2452a);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f2452a.length);
        objectOutputStream.write(this.f2452a);
    }

    public int a() {
        return this.f2452a.length;
    }

    public String b() {
        byte[] bArr = this.f2452a;
        char[] cArr = new char[bArr.length * 2];
        int i6 = 0;
        for (byte b3 : bArr) {
            int i9 = i6 + 1;
            char[] cArr2 = f8.b.f2637a;
            cArr[i6] = cArr2[(b3 >> 4) & 15];
            i6 += 2;
            cArr[i9] = cArr2[b3 & 15];
        }
        return new String(cArr);
    }

    public byte[] c() {
        return this.f2452a;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        j jVar = (j) obj;
        d7.g.f("other", jVar);
        int iA = a();
        int iA2 = jVar.a();
        int iMin = Math.min(iA, iA2);
        for (int i6 = 0; i6 < iMin; i6++) {
            int iD = d(i6) & 255;
            int iD2 = jVar.d(i6) & 255;
            if (iD != iD2) {
                return iD < iD2 ? -1 : 1;
            }
        }
        if (iA == iA2) {
            return 0;
        }
        return iA < iA2 ? -1 : 1;
    }

    public byte d(int i6) {
        return this.f2452a[i6];
    }

    public boolean e(int i6, byte[] bArr, int i9, int i10) {
        d7.g.f("other", bArr);
        if (i6 < 0) {
            return false;
        }
        byte[] bArr2 = this.f2452a;
        return i6 <= bArr2.length - i10 && i9 >= 0 && i9 <= bArr.length - i10 && i2.t.b(i6, i9, i10, bArr2, bArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            int iA = jVar.a();
            byte[] bArr = this.f2452a;
            if (iA == bArr.length && jVar.e(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public boolean f(j jVar, int i6) {
        d7.g.f("other", jVar);
        return jVar.e(0, this.f2452a, 0, i6);
    }

    public j g() {
        int i6 = 0;
        while (true) {
            byte[] bArr = this.f2452a;
            if (i6 >= bArr.length) {
                return this;
            }
            byte b3 = bArr[i6];
            if (b3 >= 65 && b3 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                d7.g.e("copyOf(this, size)", bArrCopyOf);
                bArrCopyOf[i6] = (byte) (b3 + 32);
                for (int i9 = i6 + 1; i9 < bArrCopyOf.length; i9++) {
                    byte b7 = bArrCopyOf[i9];
                    if (b7 >= 65 && b7 <= 90) {
                        bArrCopyOf[i9] = (byte) (b7 + 32);
                    }
                }
                return new j(bArrCopyOf);
            }
            i6++;
        }
    }

    public final String h() {
        String str = this.f2454c;
        if (str != null) {
            return str;
        }
        byte[] bArrC = c();
        d7.g.f("<this>", bArrC);
        String str2 = new String(bArrC, k7.a.f3570a);
        this.f2454c = str2;
        return str2;
    }

    public int hashCode() {
        int i6 = this.f2453b;
        if (i6 != 0) {
            return i6;
        }
        int iHashCode = Arrays.hashCode(this.f2452a);
        this.f2453b = iHashCode;
        return iHashCode;
    }

    public void i(g gVar, int i6) {
        gVar.x(this.f2452a, i6);
    }

    public String toString() {
        j jVar;
        byte b3;
        int i6;
        byte[] bArr = this.f2452a;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            if (i9 >= length) {
                break;
            }
            byte b7 = bArr[i9];
            if (b7 >= 0) {
                int i12 = i11 + 1;
                if (i11 == 64) {
                    break;
                }
                if ((b7 != 10 && b7 != 13 && ((b7 >= 0 && b7 < 32) || (127 <= b7 && b7 < 160))) || b7 == 65533) {
                    break;
                }
                i10 += b7 < 65536 ? 1 : 2;
                i9++;
                while (true) {
                    i11 = i12;
                    if (i9 < length && (b3 = bArr[i9]) >= 0) {
                        i9++;
                        i12 = i11 + 1;
                        if (i11 == 64) {
                            break loop0;
                        }
                        if ((b3 != 10 && b3 != 13 && ((b3 >= 0 && b3 < 32) || (127 <= b3 && b3 < 160))) || b3 == 65533) {
                            break loop0;
                        }
                        i10 += b3 < 65536 ? 1 : 2;
                    } else {
                        break;
                    }
                }
            } else if ((b7 >> 5) == -2) {
                int i13 = i9 + 1;
                if (length > i13) {
                    byte b9 = bArr[i13];
                    if ((b9 & 192) == 128) {
                        int i14 = (b9 ^ 3968) ^ (b7 << 6);
                        if (i14 >= 128) {
                            i6 = i11 + 1;
                            if (i11 == 64) {
                                break;
                            }
                            if ((i14 != 10 && i14 != 13 && ((i14 >= 0 && i14 < 32) || (127 <= i14 && i14 < 160))) || i14 == 65533) {
                                break;
                            }
                            i10 += i14 < 65536 ? 1 : 2;
                            i9 += 2;
                            i11 = i6;
                        } else if (i11 != 64) {
                            break;
                        }
                    } else if (i11 != 64) {
                        break;
                    }
                } else if (i11 != 64) {
                    break;
                }
            } else if ((b7 >> 4) == -2) {
                int i15 = i9 + 2;
                if (length > i15) {
                    byte b10 = bArr[i9 + 1];
                    if ((b10 & 192) == 128) {
                        byte b11 = bArr[i15];
                        if ((b11 & 192) == 128) {
                            int i16 = ((b11 ^ (-123008)) ^ (b10 << 6)) ^ (b7 << 12);
                            if (i16 < 2048) {
                                if (i11 != 64) {
                                    break;
                                }
                            } else if (55296 > i16 || i16 >= 57344) {
                                i6 = i11 + 1;
                                if (i11 == 64) {
                                    break;
                                }
                                if ((i16 != 10 && i16 != 13 && ((i16 >= 0 && i16 < 32) || (127 <= i16 && i16 < 160))) || i16 == 65533) {
                                    break;
                                }
                                i10 += i16 < 65536 ? 1 : 2;
                                i9 += 3;
                                i11 = i6;
                            } else if (i11 != 64) {
                                break;
                            }
                        } else if (i11 != 64) {
                            break;
                        }
                    } else if (i11 != 64) {
                        break;
                    }
                } else if (i11 != 64) {
                    break;
                }
            } else if ((b7 >> 3) == -2) {
                int i17 = i9 + 3;
                if (length > i17) {
                    byte b12 = bArr[i9 + 1];
                    if ((b12 & 192) == 128) {
                        byte b13 = bArr[i9 + 2];
                        if ((b13 & 192) == 128) {
                            byte b14 = bArr[i17];
                            if ((b14 & 192) == 128) {
                                int i18 = (((b14 ^ 3678080) ^ (b13 << 6)) ^ (b12 << 12)) ^ (b7 << 18);
                                if (i18 > 1114111) {
                                    if (i11 != 64) {
                                        break;
                                    }
                                } else if (55296 > i18 || i18 >= 57344) {
                                    if (i18 >= 65536) {
                                        i6 = i11 + 1;
                                        if (i11 == 64) {
                                            break;
                                        }
                                        if ((i18 != 10 && i18 != 13 && ((i18 >= 0 && i18 < 32) || (127 <= i18 && i18 < 160))) || i18 == 65533) {
                                            break;
                                        }
                                        i10 += i18 < 65536 ? 1 : 2;
                                        i9 += 4;
                                        i11 = i6;
                                    } else if (i11 != 64) {
                                        break;
                                    }
                                } else if (i11 != 64) {
                                    break;
                                }
                            } else if (i11 != 64) {
                                break;
                            }
                        } else if (i11 != 64) {
                            break;
                        }
                    } else if (i11 != 64) {
                        break;
                    }
                } else if (i11 != 64) {
                    break;
                }
            } else if (i11 != 64) {
                break;
            }
        }
        i10 = -1;
        if (i10 != -1) {
            String strH = h();
            String strSubstring = strH.substring(0, i10);
            d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
            String strT = k7.o.t(k7.o.t(k7.o.t(strSubstring, "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (i10 >= strH.length()) {
                return "[text=" + strT + ']';
            }
            return "[size=" + this.f2452a.length + " text=" + strT + "…]";
        }
        if (this.f2452a.length <= 64) {
            return "[hex=" + b() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(this.f2452a.length);
        sb.append(" hex=");
        byte[] bArr2 = this.f2452a;
        if (64 > bArr2.length) {
            throw new IllegalArgumentException(("endIndex > length(" + this.f2452a.length + ')').toString());
        }
        if (64 == bArr2.length) {
            jVar = this;
        } else {
            d4.a.b(64, bArr2.length);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 0, 64);
            d7.g.e("copyOfRange(...)", bArrCopyOfRange);
            jVar = new j(bArrCopyOfRange);
        }
        sb.append(jVar.b());
        sb.append("…]");
        return sb.toString();
    }
}
