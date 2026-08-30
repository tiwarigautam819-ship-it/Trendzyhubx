package r0;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.nio.ByteBuffer;
import p0.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f4944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o3.a f4945b;

    public b(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        o3.a aVar = new o3.a(11);
        super(inputConnection, false);
        this.f4944a = editText;
        this.f4945b = aVar;
        if (k.f4586k != null) {
            k kVarA = k.a();
            if (kVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            p0.f fVar = kVarA.f4591e;
            fVar.getClass();
            Bundle bundle = editorInfo.extras;
            q0.b bVar = (q0.b) fVar.f4581c.f2162a;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.f3249d).getInt(iA + bVar.f3246a) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i6, int i9) {
        Editable editableText = this.f4944a.getEditableText();
        this.f4945b.getClass();
        return o3.a.g(this, editableText, i6, i9, false) || super.deleteSurroundingText(i6, i9);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i6, int i9) {
        Editable editableText = this.f4944a.getEditableText();
        this.f4945b.getClass();
        return o3.a.g(this, editableText, i6, i9, true) || super.deleteSurroundingTextInCodePoints(i6, i9);
    }
}
