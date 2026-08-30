package m;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import com.google.android.gms.internal.measurement.y4;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4137d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4138a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f4139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4140c;

    public /* synthetic */ w() {
    }

    public KeyListener a(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((y4) ((o5.c) this.f4140c).f4446b).getClass();
        if (keyListener instanceof r0.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new r0.e(keyListener);
    }

    public void b(AttributeSet attributeSet, int i6) {
        switch (this.f4138a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.f4139b;
                c5.h hVarQ = c5.h.q(absSeekBar.getContext(), attributeSet, f4137d, i6);
                Drawable drawableL = hVarQ.l(0);
                if (drawableL != null) {
                    if (drawableL instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableL;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i9 = 0; i9 < numberOfFrames; i9++) {
                            Drawable drawableE = e(animationDrawable.getFrame(i9), true);
                            drawableE.setLevel(10000);
                            animationDrawable2.addFrame(drawableE, animationDrawable.getDuration(i9));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableL = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableL);
                }
                Drawable drawableL2 = hVarQ.l(1);
                if (drawableL2 != null) {
                    absSeekBar.setProgressDrawable(e(drawableL2, false));
                }
                hVarQ.s();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.f4139b).getContext().obtainStyledAttributes(attributeSet, f.a.f2499i, i6, 0);
                try {
                    boolean z5 = true;
                    if (typedArrayObtainStyledAttributes.hasValue(14)) {
                        z5 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                        break;
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    d(z5);
                    return;
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public r0.b c(InputConnection inputConnection, EditorInfo editorInfo) {
        o5.c cVar = (o5.c) this.f4140c;
        if (inputConnection == null) {
            cVar.getClass();
            inputConnection = null;
        } else {
            y4 y4Var = (y4) cVar.f4446b;
            y4Var.getClass();
            if (!(inputConnection instanceof r0.b)) {
                inputConnection = new r0.b((EditText) y4Var.f1990b, inputConnection, editorInfo);
            }
        }
        return (r0.b) inputConnection;
    }

    public void d(boolean z5) {
        r0.i iVar = (r0.i) ((y4) ((o5.c) this.f4140c).f4446b).f1991c;
        if (iVar.f4959c != z5) {
            if (iVar.f4958b != null) {
                p0.k kVarA = p0.k.a();
                r0.h hVar = iVar.f4958b;
                kVarA.getClass();
                b2.k.b("initCallback cannot be null", hVar);
                ReentrantReadWriteLock reentrantReadWriteLock = kVarA.f4587a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    kVarA.f4588b.remove(hVar);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            iVar.f4959c = z5;
            if (z5) {
                r0.i.a(iVar.f4957a, p0.k.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable e(Drawable drawable, boolean z5) {
        if (drawable instanceof d0.c) {
            ((d0.d) ((d0.c) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i6 = 0; i6 < numberOfLayers; i6++) {
                    int id = layerDrawable.getId(i6);
                    drawableArr[i6] = e(layerDrawable.getDrawable(i6), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i9 = 0; i9 < numberOfLayers; i9++) {
                    layerDrawable2.setId(i9, layerDrawable.getId(i9));
                    layerDrawable2.setLayerGravity(i9, layerDrawable.getLayerGravity(i9));
                    layerDrawable2.setLayerWidth(i9, layerDrawable.getLayerWidth(i9));
                    layerDrawable2.setLayerHeight(i9, layerDrawable.getLayerHeight(i9));
                    layerDrawable2.setLayerInsetLeft(i9, layerDrawable.getLayerInsetLeft(i9));
                    layerDrawable2.setLayerInsetRight(i9, layerDrawable.getLayerInsetRight(i9));
                    layerDrawable2.setLayerInsetTop(i9, layerDrawable.getLayerInsetTop(i9));
                    layerDrawable2.setLayerInsetBottom(i9, layerDrawable.getLayerInsetBottom(i9));
                    layerDrawable2.setLayerInsetStart(i9, layerDrawable.getLayerInsetStart(i9));
                    layerDrawable2.setLayerInsetEnd(i9, layerDrawable.getLayerInsetEnd(i9));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f4140c) == null) {
                    this.f4140c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z5 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public w(AbsSeekBar absSeekBar) {
        this.f4139b = absSeekBar;
    }

    public w(EditText editText) {
        this.f4139b = editText;
        this.f4140c = new o5.c(editText);
    }
}
