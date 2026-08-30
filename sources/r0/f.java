package r0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import b2.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f4953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4954c = true;

    public f(TextView textView) {
        this.f4952a = textView;
        this.f4953b = new d(textView);
    }

    @Override // b2.k
    public final InputFilter[] f(InputFilter[] inputFilterArr) {
        if (!this.f4954c) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i6 = 0; i6 < inputFilterArr.length; i6++) {
                InputFilter inputFilter = inputFilterArr[i6];
                if (inputFilter instanceof d) {
                    sparseArray.put(i6, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                if (sparseArray.indexOfKey(i10) < 0) {
                    inputFilterArr2[i9] = inputFilterArr[i10];
                    i9++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i11 = 0;
        while (true) {
            d dVar = this.f4953b;
            if (i11 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = dVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i11] == dVar) {
                return inputFilterArr;
            }
            i11++;
        }
    }

    @Override // b2.k
    public final void i(boolean z5) {
        if (z5) {
            k();
        }
    }

    @Override // b2.k
    public final void j(boolean z5) {
        this.f4954c = z5;
        k();
        TextView textView = this.f4952a;
        textView.setFilters(f(textView.getFilters()));
    }

    public final void k() {
        TextView textView = this.f4952a;
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (this.f4954c) {
            if (!(transformationMethod instanceof j) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                transformationMethod = new j(transformationMethod);
            }
        } else if (transformationMethod instanceof j) {
            transformationMethod = ((j) transformationMethod).f4960a;
        }
        textView.setTransformationMethod(transformationMethod);
    }
}
