package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import i1.a;
import i1.b;
import i1.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        c cVarH = remoteActionCompat.f379a;
        boolean z5 = true;
        if (aVar.e(1)) {
            cVarH = aVar.h();
        }
        remoteActionCompat.f379a = (IconCompat) cVarH;
        CharSequence charSequence = remoteActionCompat.f380b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f3083e);
        }
        remoteActionCompat.f380b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f381c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f3083e);
        }
        remoteActionCompat.f381c = charSequence2;
        remoteActionCompat.f382d = (PendingIntent) aVar.g(remoteActionCompat.f382d, 4);
        boolean z8 = remoteActionCompat.f383e;
        if (aVar.e(5)) {
            z8 = ((b) aVar).f3083e.readInt() != 0;
        }
        remoteActionCompat.f383e = z8;
        boolean z9 = remoteActionCompat.f384f;
        if (!aVar.e(6)) {
            z5 = z9;
        } else if (((b) aVar).f3083e.readInt() == 0) {
            z5 = false;
        }
        remoteActionCompat.f384f = z5;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f379a;
        aVar.i(1);
        aVar.k(iconCompat);
        CharSequence charSequence = remoteActionCompat.f380b;
        aVar.i(2);
        Parcel parcel = ((b) aVar).f3083e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f381c;
        aVar.i(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f382d;
        aVar.i(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z5 = remoteActionCompat.f383e;
        aVar.i(5);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z8 = remoteActionCompat.f384f;
        aVar.i(6);
        parcel.writeInt(z8 ? 1 : 0);
    }
}
