package p0;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends SpannableStringBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f4618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4619b;

    public u(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f4619b = new ArrayList();
        b2.k.b("watcherClass cannot be null", cls);
        this.f4618a = cls;
    }

    public final void a() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f4619b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i6)).f4617b.incrementAndGet();
            i6++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final void b() {
        e();
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f4619b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i6)).onTextChanged(this, 0, length(), length());
            i6++;
        }
    }

    public final t c(Object obj) {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f4619b;
            if (i6 >= arrayList.size()) {
                return null;
            }
            t tVar = (t) arrayList.get(i6);
            if (tVar.f4616a == obj) {
                return tVar;
            }
            i6++;
        }
    }

    public final boolean d(Object obj) {
        if (obj != null) {
            return this.f4618a == obj.getClass();
        }
        return false;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i6, int i9) {
        super.delete(i6, i9);
        return this;
    }

    public final void e() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f4619b;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i6)).f4617b.decrementAndGet();
            i6++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i6, int i9, Class cls) {
        if (this.f4618a != cls) {
            return super.getSpans(i6, i9, cls);
        }
        t[] tVarArr = (t[]) super.getSpans(i6, i9, t.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, tVarArr.length);
        for (int i10 = 0; i10 < tVarArr.length; i10++) {
            objArr[i10] = tVarArr[i10].f4616a;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i6, CharSequence charSequence) {
        super.insert(i6, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i6, int i9, Class cls) {
        if (cls == null || this.f4618a == cls) {
            cls = t.class;
        }
        return super.nextSpanTransition(i6, i9, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        t tVarC;
        if (d(obj)) {
            tVarC = c(obj);
            if (tVarC != null) {
                obj = tVarC;
            }
        } else {
            tVarC = null;
        }
        super.removeSpan(obj);
        if (tVarC != null) {
            this.f4619b.remove(tVarC);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i6, int i9, CharSequence charSequence) {
        replace(i6, i9, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i6, int i9, int i10) {
        if (d(obj)) {
            t tVar = new t(obj);
            this.f4619b.add(tVar);
            obj = tVar;
        }
        super.setSpan(obj, i6, i9, i10);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i6, int i9) {
        return new u(this.f4618a, this, i6, i9);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i6, int i9) {
        super.delete(i6, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i6, CharSequence charSequence) {
        super.insert(i6, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i6, int i9, CharSequence charSequence, int i10, int i11) {
        replace(i6, i9, charSequence, i10, i11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i6, CharSequence charSequence, int i9, int i10) {
        super.insert(i6, charSequence, i9, i10);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i6, int i9, CharSequence charSequence) {
        a();
        super.replace(i6, i9, charSequence);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i6, CharSequence charSequence, int i9, int i10) {
        super.insert(i6, charSequence, i9, i10);
        return this;
    }

    public u(Class cls, u uVar, int i6, int i9) {
        super(uVar, i6, i9);
        this.f4619b = new ArrayList();
        b2.k.b("watcherClass cannot be null", cls);
        this.f4618a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c8) {
        super.append(c8);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i6, int i9, CharSequence charSequence, int i10, int i11) {
        a();
        super.replace(i6, i9, charSequence, i10, i11);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i6, int i9) {
        super.append(charSequence, i6, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i6, int i9) {
        super.append(charSequence, i6, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i6, int i9) {
        super.append(charSequence, i6, i9);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i6) {
        super.append(charSequence, obj, i6);
        return this;
    }
}
