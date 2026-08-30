package k;

import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static void a(Window.Callback callback, List<KeyboardShortcutGroup> list, Menu menu, int i6) {
        callback.onProvideKeyboardShortcuts(list, menu, i6);
    }
}
