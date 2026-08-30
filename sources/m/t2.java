package m;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f4107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f4108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f4109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageView f4110e;

    public t2(View view) {
        this.f4106a = (TextView) view.findViewById(R.id.text1);
        this.f4107b = (TextView) view.findViewById(R.id.text2);
        this.f4108c = (ImageView) view.findViewById(R.id.icon1);
        this.f4109d = (ImageView) view.findViewById(R.id.icon2);
        this.f4110e = (ImageView) view.findViewById(com.YaarWin.app.R.id.edit_query);
    }
}
