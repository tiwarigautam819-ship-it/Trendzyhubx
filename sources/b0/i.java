package b0;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration f870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f871c;

    public i(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f869a = colorStateList;
        this.f870b = configuration;
        this.f871c = theme == null ? 0 : theme.hashCode();
    }
}
