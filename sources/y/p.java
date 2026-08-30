package y;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.YaarWin.app.R;
import com.engagelab.privates.common.constants.MTCommonConstants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6071a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f6075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f6076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PendingIntent f6077g;
    public IconCompat h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f6079j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public androidx.fragment.app.m f6081l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bundle f6083n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f6086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f6087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Notification f6088s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f6089t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f6072b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f6073c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f6074d = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6080k = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f6082m = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6084o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6085p = 0;

    public p(Context context, String str) {
        Notification notification = new Notification();
        this.f6088s = notification;
        this.f6071a = context;
        this.f6086q = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f6079j = 0;
        this.f6089t = new ArrayList();
        this.f6087r = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Notification a() {
        Notification notificationBuild;
        Bundle bundle;
        int i6;
        ArrayList arrayList;
        int i9;
        com.google.firebase.messaging.y yVar = new com.google.firebase.messaging.y();
        new ArrayList();
        yVar.f2165d = new Bundle();
        yVar.f2164c = this;
        Context context = this.f6071a;
        yVar.f2162a = context;
        if (Build.VERSION.SDK_INT >= 26) {
            yVar.f2163b = r.a(context, this.f6086q);
        } else {
            yVar.f2163b = new Notification.Builder(context);
        }
        Notification.Builder builder = (Notification.Builder) yVar.f2163b;
        Notification notification = this.f6088s;
        Context context2 = null;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(this.f6075e).setContentText(this.f6076f).setContentInfo(null).setContentIntent(this.f6077g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(this.f6078i).setProgress(0, 0, false);
        Notification.Builder builder2 = (Notification.Builder) yVar.f2163b;
        IconCompat iconCompat = this.h;
        builder2.setLargeIcon(iconCompat == null ? null : iconCompat.f(context));
        ((Notification.Builder) yVar.f2163b).setSubText(null).setUsesChronometer(false).setPriority(this.f6079j);
        ArrayList arrayList2 = this.f6072b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            j jVar = (j) obj;
            int i11 = Build.VERSION.SDK_INT;
            if (jVar.f6061b == null && (i9 = jVar.f6064e) != 0) {
                jVar.f6061b = IconCompat.b(i9);
            }
            IconCompat iconCompat2 = jVar.f6061b;
            boolean z5 = jVar.f6062c;
            Bundle bundle2 = jVar.f6060a;
            Notification.Action.Builder builder3 = new Notification.Action.Builder(iconCompat2 != null ? iconCompat2.f(context2) : context2, jVar.f6065f, jVar.f6066g);
            Bundle bundle3 = bundle2 != null ? new Bundle(bundle2) : new Bundle();
            bundle3.putBoolean("android.support.allowGeneratedReplies", z5);
            if (i11 >= 24) {
                q.b(builder3, z5);
            }
            bundle3.putInt("android.support.action.semanticAction", 0);
            if (i11 >= 28) {
                s.a(builder3);
            }
            if (i11 >= 29) {
                f.d(builder3);
            }
            if (i11 >= 31) {
                t.a(builder3);
            }
            bundle3.putBoolean("android.support.action.showsUserInterface", jVar.f6063d);
            builder3.addExtras(bundle3);
            ((Notification.Builder) yVar.f2163b).addAction(builder3.build());
            context2 = null;
        }
        Bundle bundle4 = this.f6083n;
        if (bundle4 != null) {
            ((Bundle) yVar.f2165d).putAll(bundle4);
        }
        int i12 = Build.VERSION.SDK_INT;
        ((Notification.Builder) yVar.f2163b).setShowWhen(this.f6080k);
        ((Notification.Builder) yVar.f2163b).setLocalOnly(this.f6082m);
        ((Notification.Builder) yVar.f2163b).setGroup(null);
        ((Notification.Builder) yVar.f2163b).setSortKey(null);
        ((Notification.Builder) yVar.f2163b).setGroupSummary(false);
        ((Notification.Builder) yVar.f2163b).setCategory(null);
        ((Notification.Builder) yVar.f2163b).setColor(this.f6084o);
        ((Notification.Builder) yVar.f2163b).setVisibility(this.f6085p);
        ((Notification.Builder) yVar.f2163b).setPublicVersion(null);
        ((Notification.Builder) yVar.f2163b).setSound(notification.sound, notification.audioAttributes);
        ArrayList arrayList3 = this.f6089t;
        ArrayList arrayList4 = this.f6073c;
        if (i12 < 28) {
            if (arrayList4 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList4.size());
                Iterator it = arrayList4.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    throw new ClassCastException();
                }
            }
            if (arrayList != null) {
                if (arrayList3 == null) {
                    arrayList3 = arrayList;
                } else {
                    s.f fVar = new s.f(arrayList3.size() + arrayList.size());
                    fVar.addAll(arrayList);
                    fVar.addAll(arrayList3);
                    arrayList3 = new ArrayList(fVar);
                }
            }
        }
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            int size2 = arrayList3.size();
            int i13 = 0;
            while (i13 < size2) {
                Object obj2 = arrayList3.get(i13);
                i13++;
                ((Notification.Builder) yVar.f2163b).addPerson((String) obj2);
            }
        }
        ArrayList arrayList5 = this.f6074d;
        if (arrayList5.size() > 0) {
            if (this.f6083n == null) {
                this.f6083n = new Bundle();
            }
            Bundle bundle5 = this.f6083n.getBundle("android.car.EXTENSIONS");
            if (bundle5 == null) {
                bundle5 = new Bundle();
            }
            Bundle bundle6 = new Bundle(bundle5);
            Bundle bundle7 = new Bundle();
            for (int i14 = 0; i14 < arrayList5.size(); i14++) {
                String string = Integer.toString(i14);
                j jVar2 = (j) arrayList5.get(i14);
                Bundle bundle8 = new Bundle();
                if (jVar2.f6061b == null && (i6 = jVar2.f6064e) != 0) {
                    jVar2.f6061b = IconCompat.b(i6);
                }
                IconCompat iconCompat3 = jVar2.f6061b;
                Bundle bundle9 = jVar2.f6060a;
                bundle8.putInt("icon", iconCompat3 != null ? iconCompat3.c() : 0);
                bundle8.putCharSequence(MTCommonConstants.Lifecycle.KEY_TITLE, jVar2.f6065f);
                bundle8.putParcelable("actionIntent", jVar2.f6066g);
                Bundle bundle10 = bundle9 != null ? new Bundle(bundle9) : new Bundle();
                bundle10.putBoolean("android.support.allowGeneratedReplies", jVar2.f6062c);
                bundle8.putBundle("extras", bundle10);
                bundle8.putParcelableArray("remoteInputs", null);
                bundle8.putBoolean("showsUserInterface", jVar2.f6063d);
                bundle8.putInt("semanticAction", 0);
                bundle7.putBundle(string, bundle8);
            }
            bundle5.putBundle("invisible_actions", bundle7);
            bundle6.putBundle("invisible_actions", bundle7);
            if (this.f6083n == null) {
                this.f6083n = new Bundle();
            }
            this.f6083n.putBundle("android.car.EXTENSIONS", bundle5);
            ((Bundle) yVar.f2165d).putBundle("android.car.EXTENSIONS", bundle6);
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 24) {
            ((Notification.Builder) yVar.f2163b).setExtras(this.f6083n);
            q.c((Notification.Builder) yVar.f2163b);
        }
        if (i15 >= 26) {
            r.b((Notification.Builder) yVar.f2163b);
            r.d((Notification.Builder) yVar.f2163b);
            r.e((Notification.Builder) yVar.f2163b);
            r.f((Notification.Builder) yVar.f2163b);
            r.c((Notification.Builder) yVar.f2163b);
            if (!TextUtils.isEmpty(this.f6086q)) {
                ((Notification.Builder) yVar.f2163b).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i15 >= 28) {
            Iterator it2 = arrayList4.iterator();
            if (it2.hasNext()) {
                it2.next().getClass();
                throw new ClassCastException();
            }
        }
        if (i15 >= 29) {
            f.b((Notification.Builder) yVar.f2163b, this.f6087r);
            f.c((Notification.Builder) yVar.f2163b);
        }
        p pVar = (p) yVar.f2164c;
        androidx.fragment.app.m mVar = pVar.f6081l;
        if (mVar != null) {
            mVar.a(yVar);
        }
        Notification.Builder builder4 = (Notification.Builder) yVar.f2163b;
        int i16 = Build.VERSION.SDK_INT;
        if (i16 < 26 && i16 < 24) {
            builder4.setExtras((Bundle) yVar.f2165d);
            notificationBuild = builder4.build();
        } else {
            notificationBuild = builder4.build();
        }
        if (mVar != null) {
            pVar.f6081l.getClass();
        }
        if (mVar != null && (bundle = notificationBuild.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", mVar.b());
        }
        return notificationBuild;
    }

    public final void c(boolean z5) {
        Notification notification = this.f6088s;
        if (z5) {
            notification.flags |= 16;
        } else {
            notification.flags &= -17;
        }
    }

    public final void d(Bitmap bitmap) {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.f6071a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.f391k;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.f393b = bitmap;
            iconCompat = iconCompat2;
        }
        this.h = iconCompat;
    }

    public final void e(androidx.fragment.app.m mVar) {
        if (this.f6081l != mVar) {
            this.f6081l = mVar;
            if (((p) mVar.f583a) != this) {
                mVar.f583a = this;
                e(mVar);
            }
        }
    }
}
