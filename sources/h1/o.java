package h1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n f2948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f2949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f2950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bitmap f2952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f2953g;
    public PorterDuff.Mode h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Paint f2957l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f2947a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new q(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new q(this);
    }
}
