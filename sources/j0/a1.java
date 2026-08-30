package j0;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a1 {
    public static int a(int i6) {
        int iStatusBars;
        int i9 = 0;
        for (int i10 = 1; i10 <= 256; i10 <<= 1) {
            if ((i6 & i10) != 0) {
                if (i10 == 1) {
                    iStatusBars = WindowInsets.Type.statusBars();
                } else if (i10 == 2) {
                    iStatusBars = WindowInsets.Type.navigationBars();
                } else if (i10 == 4) {
                    iStatusBars = WindowInsets.Type.captionBar();
                } else if (i10 == 8) {
                    iStatusBars = WindowInsets.Type.ime();
                } else if (i10 == 16) {
                    iStatusBars = WindowInsets.Type.systemGestures();
                } else if (i10 == 32) {
                    iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                } else if (i10 == 64) {
                    iStatusBars = WindowInsets.Type.tappableElement();
                } else if (i10 == 128) {
                    iStatusBars = WindowInsets.Type.displayCutout();
                }
                i9 |= iStatusBars;
            }
        }
        return i9;
    }
}
