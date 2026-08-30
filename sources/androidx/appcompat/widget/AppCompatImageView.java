package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import k2.n;
import m.g1;
import m.v2;
import m.w2;
import m.x2;
import z7.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AppCompatImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b0.d f237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f238c;

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        n nVar = this.f236a;
        if (nVar != null) {
            nVar.a();
        }
        b0.d dVar = this.f237b;
        if (dVar != null) {
            dVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        n nVar = this.f236a;
        if (nVar != null) {
            return nVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        n nVar = this.f236a;
        if (nVar != null) {
            return nVar.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        x2 x2Var;
        b0.d dVar = this.f237b;
        if (dVar == null || (x2Var = (x2) dVar.f856d) == null) {
            return null;
        }
        return (ColorStateList) x2Var.f4173c;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        x2 x2Var;
        b0.d dVar = this.f237b;
        if (dVar == null || (x2Var = (x2) dVar.f856d) == null) {
            return null;
        }
        return (PorterDuff.Mode) x2Var.f4174d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.f237b.f855c).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        n nVar = this.f236a;
        if (nVar != null) {
            nVar.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        n nVar = this.f236a;
        if (nVar != null) {
            nVar.h(i6);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        b0.d dVar = this.f237b;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        b0.d dVar = this.f237b;
        if (dVar != null && drawable != null && !this.f238c) {
            dVar.f854b = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (dVar != null) {
            dVar.a();
            if (this.f238c) {
                return;
            }
            ImageView imageView = (ImageView) dVar.f855c;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(dVar.f854b);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i6) {
        super.setImageLevel(i6);
        this.f238c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i6) {
        b0.d dVar = this.f237b;
        if (dVar != null) {
            ImageView imageView = (ImageView) dVar.f855c;
            if (i6 != 0) {
                Drawable drawableJ = l.j(imageView.getContext(), i6);
                if (drawableJ != null) {
                    g1.a(drawableJ);
                }
                imageView.setImageDrawable(drawableJ);
            } else {
                imageView.setImageDrawable(null);
            }
            dVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        b0.d dVar = this.f237b;
        if (dVar != null) {
            dVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        n nVar = this.f236a;
        if (nVar != null) {
            nVar.j(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        n nVar = this.f236a;
        if (nVar != null) {
            nVar.k(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        b0.d dVar = this.f237b;
        if (dVar != null) {
            if (((x2) dVar.f856d) == null) {
                dVar.f856d = new x2();
            }
            x2 x2Var = (x2) dVar.f856d;
            x2Var.f4173c = colorStateList;
            x2Var.f4172b = true;
            dVar.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        b0.d dVar = this.f237b;
        if (dVar != null) {
            if (((x2) dVar.f856d) == null) {
                dVar.f856d = new x2();
            }
            x2 x2Var = (x2) dVar.f856d;
            x2Var.f4174d = mode;
            x2Var.f4171a = true;
            dVar.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatImageView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        w2.a(context);
        this.f238c = false;
        v2.a(getContext(), this);
        n nVar = new n(this);
        this.f236a = nVar;
        nVar.e(attributeSet, i6);
        b0.d dVar = new b0.d(this);
        this.f237b = dVar;
        dVar.f(attributeSet, i6);
    }
}
