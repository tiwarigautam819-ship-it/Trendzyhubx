package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import i1.a;
import i1.b;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f392a = aVar.f(iconCompat.f392a, 1);
        byte[] bArr = iconCompat.f394c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f3083e;
            int i6 = parcel.readInt();
            if (i6 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i6];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f394c = bArr;
        iconCompat.f395d = aVar.g(iconCompat.f395d, 3);
        iconCompat.f396e = aVar.f(iconCompat.f396e, 4);
        iconCompat.f397f = aVar.f(iconCompat.f397f, 5);
        iconCompat.f398g = (ColorStateList) aVar.g(iconCompat.f398g, 6);
        String string = iconCompat.f399i;
        if (aVar.e(7)) {
            string = ((b) aVar).f3083e.readString();
        }
        iconCompat.f399i = string;
        String string2 = iconCompat.f400j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f3083e.readString();
        }
        iconCompat.f400j = string2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.f399i);
        switch (iconCompat.f392a) {
            case -1:
                Parcelable parcelable = iconCompat.f395d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f393b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f395d;
                if (parcelable2 != null) {
                    iconCompat.f393b = parcelable2;
                    return iconCompat;
                }
                byte[] bArr3 = iconCompat.f394c;
                iconCompat.f393b = bArr3;
                iconCompat.f392a = 3;
                iconCompat.f396e = 0;
                iconCompat.f397f = bArr3.length;
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f394c, Charset.forName("UTF-16"));
                iconCompat.f393b = str;
                if (iconCompat.f392a == 2 && iconCompat.f400j == null) {
                    iconCompat.f400j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f393b = iconCompat.f394c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f399i = iconCompat.h.name();
        switch (iconCompat.f392a) {
            case -1:
                iconCompat.f395d = (Parcelable) iconCompat.f393b;
                break;
            case 1:
            case 5:
                iconCompat.f395d = (Parcelable) iconCompat.f393b;
                break;
            case 2:
                iconCompat.f394c = ((String) iconCompat.f393b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f394c = (byte[]) iconCompat.f393b;
                break;
            case 4:
            case 6:
                iconCompat.f394c = iconCompat.f393b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i6 = iconCompat.f392a;
        if (-1 != i6) {
            aVar.j(i6, 1);
        }
        byte[] bArr = iconCompat.f394c;
        if (bArr != null) {
            aVar.i(2);
            Parcel parcel = ((b) aVar).f3083e;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f395d;
        if (parcelable != null) {
            aVar.i(3);
            ((b) aVar).f3083e.writeParcelable(parcelable, 0);
        }
        int i9 = iconCompat.f396e;
        if (i9 != 0) {
            aVar.j(i9, 4);
        }
        int i10 = iconCompat.f397f;
        if (i10 != 0) {
            aVar.j(i10, 5);
        }
        ColorStateList colorStateList = iconCompat.f398g;
        if (colorStateList != null) {
            aVar.i(6);
            ((b) aVar).f3083e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f399i;
        if (str != null) {
            aVar.i(7);
            ((b) aVar).f3083e.writeString(str);
        }
        String str2 = iconCompat.f400j;
        if (str2 != null) {
            aVar.i(8);
            ((b) aVar).f3083e.writeString(str2);
        }
    }
}
