package j7;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.LongSparseArray;
import com.google.android.gms.common.internal.d0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p4.l;
import p4.n;
import p4.q;
import q2.x;
import r7.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Field f3411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f3412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f3413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f3414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Field f3415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f3416f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Field f3417g;
    public static boolean h;

    public static Object a(p4.i iVar) throws InterruptedException {
        d0.g("Must not be called on the main application thread");
        d0.f();
        d0.i("Task must not be null", iVar);
        if (iVar.f()) {
            return w(iVar);
        }
        l lVar = new l();
        Executor executor = p4.k.f4643b;
        iVar.c(executor, lVar);
        iVar.b(executor, lVar);
        q qVar = (q) iVar;
        qVar.f4658b.d(new n(executor, (p4.c) lVar));
        qVar.p();
        lVar.f4644a.await();
        return w(iVar);
    }

    public static Object b(p4.i iVar, long j3, TimeUnit timeUnit) throws TimeoutException {
        d0.g("Must not be called on the main application thread");
        d0.f();
        d0.i("Task must not be null", iVar);
        d0.i("TimeUnit must not be null", timeUnit);
        if (iVar.f()) {
            return w(iVar);
        }
        l lVar = new l();
        Executor executor = p4.k.f4643b;
        iVar.c(executor, lVar);
        iVar.b(executor, lVar);
        q qVar = (q) iVar;
        qVar.f4658b.d(new n(executor, (p4.c) lVar));
        qVar.p();
        if (lVar.f4644a.await(j3, timeUnit)) {
            return w(iVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static q c(Executor executor, Callable callable) {
        d0.i("Executor must not be null", executor);
        q qVar = new q();
        executor.execute(new s4.b(qVar, 13, callable));
        return qVar;
    }

    public static byte[] d(ArrayDeque arrayDeque, int i6) {
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i6) {
            return bArr;
        }
        int length = i6 - bArr.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i6);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int iMin = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, bArrCopyOf, i6 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    public static Bundle e(int i6, Parcel parcel) {
        int iR = r(i6, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iR == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iR);
        return bundle;
    }

    public static Parcelable f(Parcel parcel, int i6, Parcelable.Creator creator) {
        int iR = r(i6, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iR == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iR);
        return parcelable;
    }

    public static String g(int i6, Parcel parcel) {
        int iR = r(i6, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iR == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iR);
        return string;
    }

    public static Object[] h(Parcel parcel, int i6, Parcelable.Creator creator) {
        int iR = r(i6, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iR == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iR);
        return objArrCreateTypedArray;
    }

    public static void i(int i6, Parcel parcel) {
        if (parcel.dataPosition() != i6) {
            throw new y3.b(a1.a.i(i6, "Overread allowed size end="), parcel);
        }
    }

    public static void j(Object obj) {
        LongSparseArray longSparseArray;
        if (!f3414d) {
            try {
                f3413c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e9) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e9);
            }
            f3414d = true;
        }
        Class cls = f3413c;
        if (cls == null) {
            return;
        }
        if (!f3416f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f3415e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e10);
            }
            f3416f = true;
        }
        Field field = f3415e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e11) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e11);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public static q k(Exception exc) {
        q qVar = new q();
        qVar.l(exc);
        return qVar;
    }

    public static q l(Object obj) {
        q qVar = new q();
        qVar.m(obj);
        return qVar;
    }

    public static s m(String str) throws IOException {
        if (str.equals("http/1.0")) {
            return s.HTTP_1_0;
        }
        if (str.equals("http/1.1")) {
            return s.HTTP_1_1;
        }
        if (str.equals("h2_prior_knowledge")) {
            return s.H2_PRIOR_KNOWLEDGE;
        }
        if (str.equals("h2")) {
            return s.HTTP_2;
        }
        if (str.equals("spdy/3.1")) {
            return s.SPDY_3;
        }
        if (str.equals("quic")) {
            return s.QUIC;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    public static boolean n(int i6, Parcel parcel) {
        y(parcel, i6, 4);
        return parcel.readInt() != 0;
    }

    public static IBinder o(int i6, Parcel parcel) {
        int iR = r(i6, parcel);
        int iDataPosition = parcel.dataPosition();
        if (iR == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iR);
        return strongBinder;
    }

    public static int p(int i6, Parcel parcel) {
        y(parcel, i6, 4);
        return parcel.readInt();
    }

    public static long q(int i6, Parcel parcel) {
        y(parcel, i6, 8);
        return parcel.readLong();
    }

    public static int r(int i6, Parcel parcel) {
        return (i6 & (-65536)) != -65536 ? (char) (i6 >> 16) : parcel.readInt();
    }

    public static void s(int i6, Parcel parcel) {
        parcel.setDataPosition(parcel.dataPosition() + r(i6, parcel));
    }

    public static byte[] t(com.google.firebase.messaging.d dVar) throws IOException {
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i6 = 0;
        while (i6 < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i6);
            byte[] bArr = new byte[iMin2];
            arrayDeque.add(bArr);
            int i9 = 0;
            while (i9 < iMin2) {
                int i10 = dVar.read(bArr, i9, iMin2 - i9);
                if (i10 == -1) {
                    return d(arrayDeque, i6);
                }
                i9 += i10;
                i6 += i10;
            }
            long j3 = ((long) iMin) * ((long) (iMin < 4096 ? 4 : 2));
            iMin = j3 > 2147483647L ? Integer.MAX_VALUE : j3 < -2147483648L ? Integer.MIN_VALUE : (int) j3;
        }
        if (dVar.read() == -1) {
            return d(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    public static int u(Parcel parcel) {
        int i6 = parcel.readInt();
        int iR = r(i6, parcel);
        char c8 = (char) i6;
        int iDataPosition = parcel.dataPosition();
        if (c8 != 20293) {
            throw new y3.b("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(i6))), parcel);
        }
        int i9 = iR + iDataPosition;
        if (i9 < iDataPosition || i9 > parcel.dataSize()) {
            throw new y3.b(x.e(iDataPosition, i9, "Size read is invalid start=", " end="), parcel);
        }
        return i9;
    }

    public static int v(int i6) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i9 = 0; i9 < 6; i9++) {
            int i10 = iArr[i9];
            int i11 = i10 - 1;
            if (i10 == 0) {
                throw null;
            }
            if (i11 == i6) {
                return i10;
            }
        }
        return 1;
    }

    public static Object w(p4.i iVar) throws ExecutionException {
        if (iVar.g()) {
            return iVar.e();
        }
        if (((q) iVar).f4660d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(iVar.d());
    }

    public static void x(Parcel parcel, int i6, int i9) {
        if (i6 == i9) {
            return;
        }
        String hexString = Integer.toHexString(i6);
        StringBuilder sb = new StringBuilder("Expected size ");
        sb.append(i9);
        sb.append(" got ");
        sb.append(i6);
        sb.append(" (0x");
        throw new y3.b(x.h(sb, hexString, ")"), parcel);
    }

    public static void y(Parcel parcel, int i6, int i9) {
        int iR = r(i6, parcel);
        if (iR == i9) {
            return;
        }
        String hexString = Integer.toHexString(iR);
        StringBuilder sb = new StringBuilder("Expected size ");
        sb.append(i9);
        sb.append(" got ");
        sb.append(iR);
        sb.append(" (0x");
        throw new y3.b(x.h(sb, hexString, ")"), parcel);
    }
}
