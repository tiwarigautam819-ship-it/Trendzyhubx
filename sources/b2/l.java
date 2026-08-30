package b2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.Base64;
import android.view.View;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f937a;

    public l(View view) {
        this.f937a = new WeakReference(view);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        View view = (View) this.f937a.get();
        if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
            return "";
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
        d7.g.e("createBitmap(view.width,…t, Bitmap.Config.RGB_565)", bitmapCreateBitmap);
        view.draw(new Canvas(bitmapCreateBitmap));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        d7.g.e("encodeToString(outputStr…eArray(), Base64.NO_WRAP)", strEncodeToString);
        return strEncodeToString;
    }
}
