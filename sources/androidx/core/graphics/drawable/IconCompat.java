package androidx.core.graphics.drawable;

import a0.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import d0.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f391k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f397f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f398g;
    public PorterDuff.Mode h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f400j;

    public IconCompat() {
        this.f392a = -1;
        this.f394c = null;
        this.f395d = null;
        this.f396e = 0;
        this.f397f = 0;
        this.f398g = null;
        this.h = f391k;
        this.f399i = null;
    }

    public static Bitmap a(Bitmap bitmap, boolean z5) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f9 = iMin;
        float f10 = 0.5f * f9;
        float f11 = 0.9166667f * f10;
        if (z5) {
            float f12 = 0.010416667f * f9;
            paint.setColor(0);
            paint.setShadowLayer(f12, 0.0f, f9 * 0.020833334f, 1023410176);
            canvas.drawCircle(f10, f10, f11, paint);
            paint.setShadowLayer(f12, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f10, f10, f11, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f10, f10, f11, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat b(int i6) {
        if (i6 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f396e = i6;
        iconCompat.f393b = "";
        iconCompat.f400j = "";
        return iconCompat;
    }

    public final int c() {
        int i6 = this.f392a;
        if (i6 != -1) {
            if (i6 == 2) {
                return this.f396e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        int i9 = Build.VERSION.SDK_INT;
        Object obj = this.f393b;
        if (i9 >= 28) {
            return a.c(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e9) {
            Log.e("IconCompat", "Unable to get icon resource", e9);
            return 0;
        } catch (NoSuchMethodException e10) {
            Log.e("IconCompat", "Unable to get icon resource", e10);
            return 0;
        } catch (InvocationTargetException e11) {
            Log.e("IconCompat", "Unable to get icon resource", e11);
            return 0;
        }
    }

    public final int d() {
        int i6 = this.f392a;
        if (i6 != -1) {
            return i6;
        }
        int i9 = Build.VERSION.SDK_INT;
        Object obj = this.f393b;
        if (i9 >= 28) {
            return a.k(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e9) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e9);
            return -1;
        } catch (NoSuchMethodException e10) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e10);
            return -1;
        } catch (InvocationTargetException e11) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e11);
            return -1;
        }
    }

    public final Uri e() {
        int i6 = this.f392a;
        if (i6 != -1) {
            if (i6 == 4 || i6 == 6) {
                return Uri.parse((String) this.f393b);
            }
            throw new IllegalStateException("called getUri() on " + this);
        }
        int i9 = Build.VERSION.SDK_INT;
        Object obj = this.f393b;
        if (i9 >= 28) {
            return a.l(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e9) {
            Log.e("IconCompat", "Unable to get icon uri", e9);
            return null;
        } catch (NoSuchMethodException e10) {
            Log.e("IconCompat", "Unable to get icon uri", e10);
            return null;
        } catch (InvocationTargetException e11) {
            Log.e("IconCompat", "Unable to get icon uri", e11);
            return null;
        }
    }

    public final Icon f(Context context) {
        Icon iconCreateWithBitmap;
        int i6 = Build.VERSION.SDK_INT;
        int i9 = this.f392a;
        String strD = null;
        inputStreamOpenInputStream = null;
        InputStream inputStreamOpenInputStream = null;
        strD = null;
        strD = null;
        switch (i9) {
            case -1:
                return (Icon) this.f393b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) this.f393b);
                break;
            case 2:
                if (i9 == -1) {
                    Object obj = this.f393b;
                    if (i6 >= 28) {
                        strD = a.d(obj);
                    } else {
                        try {
                            strD = (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
                        } catch (IllegalAccessException e9) {
                            Log.e("IconCompat", "Unable to get icon package", e9);
                        } catch (NoSuchMethodException e10) {
                            Log.e("IconCompat", "Unable to get icon package", e10);
                        } catch (InvocationTargetException e11) {
                            Log.e("IconCompat", "Unable to get icon package", e11);
                        }
                    }
                } else {
                    if (i9 != 2) {
                        throw new IllegalStateException("called getResPackage() on " + this);
                    }
                    String str = this.f400j;
                    strD = (str == null || TextUtils.isEmpty(str)) ? ((String) this.f393b).split(":", -1)[0] : this.f400j;
                }
                iconCreateWithBitmap = Icon.createWithResource(strD, this.f396e);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) this.f393b, this.f396e, this.f397f);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) this.f393b);
                break;
            case 5:
                iconCreateWithBitmap = i6 < 26 ? Icon.createWithBitmap(a((Bitmap) this.f393b, false)) : d0.a.a((Bitmap) this.f393b);
                break;
            case 6:
                if (i6 >= 30) {
                    iconCreateWithBitmap = b.a(e());
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + e());
                    }
                    Uri uriE = e();
                    String scheme = uriE.getScheme();
                    if (FirebaseAnalytics.Param.CONTENT.equals(scheme) || "file".equals(scheme)) {
                        try {
                            inputStreamOpenInputStream = context.getContentResolver().openInputStream(uriE);
                        } catch (Exception e12) {
                            Log.w("IconCompat", "Unable to load image from URI: " + uriE, e12);
                        }
                        break;
                    } else {
                        try {
                            inputStreamOpenInputStream = new FileInputStream(new File((String) this.f393b));
                        } catch (FileNotFoundException e13) {
                            Log.w("IconCompat", "Unable to load image from path: " + uriE, e13);
                        }
                    }
                    if (inputStreamOpenInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + e());
                    }
                    if (Build.VERSION.SDK_INT < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(a(BitmapFactory.decodeStream(inputStreamOpenInputStream), false));
                    } else {
                        iconCreateWithBitmap = d0.a.a(BitmapFactory.decodeStream(inputStreamOpenInputStream));
                    }
                }
                break;
        }
        ColorStateList colorStateList = this.f398g;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.h;
        if (mode != f391k) {
            iconCreateWithBitmap.setTintMode(mode);
        }
        return iconCreateWithBitmap;
    }

    public final String toString() {
        String str;
        if (this.f392a == -1) {
            return String.valueOf(this.f393b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f392a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f392a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f393b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f393b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f400j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(c())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f396e);
                if (this.f397f != 0) {
                    sb.append(" off=");
                    sb.append(this.f397f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f393b);
                break;
        }
        if (this.f398g != null) {
            sb.append(" tint=");
            sb.append(this.f398g);
        }
        if (this.h != f391k) {
            sb.append(" mode=");
            sb.append(this.h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i6) {
        this.f394c = null;
        this.f395d = null;
        this.f396e = 0;
        this.f397f = 0;
        this.f398g = null;
        this.h = f391k;
        this.f399i = null;
        this.f392a = i6;
    }
}
