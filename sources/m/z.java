package m;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        j0.c hVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                hVar = new k1.h(clipData, 3);
            } else {
                j0.d dVar = new j0.d();
                dVar.f3260b = clipData;
                dVar.f3261c = 3;
                hVar = dVar;
            }
            j0.k0.f(textView, hVar.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        j0.c hVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            hVar = new k1.h(clipData, 3);
        } else {
            j0.d dVar = new j0.d();
            dVar.f3260b = clipData;
            dVar.f3261c = 3;
            hVar = dVar;
        }
        j0.k0.f(view, hVar.build());
        return true;
    }
}
