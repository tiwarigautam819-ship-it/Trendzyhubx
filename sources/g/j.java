package g;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2743b;

    public j(ConnectionResult connectionResult, int i6) {
        com.google.android.gms.common.internal.d0.h(connectionResult);
        this.f2743b = connectionResult;
        this.f2742a = i6;
    }

    public Object a() {
        Object[] objArr = (Object[]) this.f2743b;
        int i6 = this.f2742a;
        if (i6 <= 0) {
            return null;
        }
        int i9 = i6 - 1;
        Object obj = objArr[i9];
        d7.g.d("null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool", obj);
        objArr[i9] = null;
        this.f2742a--;
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public k b() {
        f fVar = (f) this.f2743b;
        k kVar = new k(fVar.f2670a, this.f2742a);
        View view = fVar.f2674e;
        i iVar = kVar.f2746f;
        if (view != null) {
            iVar.f2725n = view;
        } else {
            CharSequence charSequence = fVar.f2673d;
            if (charSequence != null) {
                iVar.f2716d = charSequence;
                TextView textView = iVar.f2723l;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = fVar.f2672c;
            if (drawable != null) {
                iVar.f2721j = drawable;
                ImageView imageView = iVar.f2722k;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    iVar.f2722k.setImageDrawable(drawable);
                }
            }
        }
        if (fVar.f2676g != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) fVar.f2671b.inflate(iVar.f2729r, (ViewGroup) null);
            int i6 = fVar.f2677i ? iVar.f2730s : iVar.f2731t;
            Object obj = fVar.f2676g;
            ?? hVar = obj;
            if (obj == null) {
                hVar = new h(fVar.f2670a, i6, R.id.text1, null);
            }
            iVar.f2726o = hVar;
            iVar.f2727p = fVar.f2678j;
            if (fVar.h != null) {
                alertController$RecycleListView.setOnItemClickListener(new e(fVar, iVar));
            }
            if (fVar.f2677i) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            iVar.f2717e = alertController$RecycleListView;
        }
        kVar.setCancelable(true);
        kVar.setCanceledOnTouchOutside(true);
        kVar.setOnCancelListener(null);
        kVar.setOnDismissListener(null);
        l.o oVar = fVar.f2675f;
        if (oVar != null) {
            kVar.setOnKeyListener(oVar);
        }
        return kVar;
    }

    public boolean c() {
        return this.f2742a < ((ArrayList) this.f2743b).size();
    }

    public boolean d(Object obj) {
        Object[] objArr = (Object[]) this.f2743b;
        int i6 = this.f2742a;
        for (int i9 = 0; i9 < i6; i9++) {
            if (objArr[i9] == obj) {
                throw new IllegalStateException("Already in the pool!");
            }
        }
        int i10 = this.f2742a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = obj;
        this.f2742a = i10 + 1;
        return true;
    }

    public j(int i6, int i9) {
        switch (i9) {
            case 3:
                if (i6 <= 0) {
                    throw new IllegalArgumentException("The max pool size must be > 0");
                }
                this.f2743b = new Object[i6];
                return;
            default:
                this.f2743b = new byte[i6];
                this.f2742a = 0;
                return;
        }
    }

    public j(int i6, j0.q... qVarArr) {
        this.f2742a = i6;
        this.f2743b = qVarArr;
    }

    public j(Context context) {
        int iF = k.f(context, 0);
        this.f2743b = new f(new ContextThemeWrapper(context, k.f(context, iF)));
        this.f2742a = iF;
    }

    public j(ArrayList arrayList, int i6) {
        switch (i6) {
            case 5:
                this.f2743b = arrayList;
                break;
            default:
                this.f2742a = 0;
                this.f2743b = arrayList;
                break;
        }
    }
}
