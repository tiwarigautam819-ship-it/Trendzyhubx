package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import f.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f155b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f2510t);
        this.f155b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f154a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
