package c5;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PersistableBundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import androidx.lifecycle.j0;
import androidx.lifecycle.n0;
import androidx.lifecycle.p0;
import androidx.lifecycle.r0;
import androidx.lifecycle.s0;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.t;
import com.google.firebase.messaging.y;
import com.google.firebase.messaging.z;
import f3.q;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.zip.Adler32;
import m.h3;
import m.p;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParserException;
import p0.s;
import p0.v;
import p0.w;
import q2.f0;
import x1.l;
import y2.j;
import y2.m;
import y2.n;
import y2.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements h3.b, l0.g, p4.d, f0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static h f1058e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1062d;

    public /* synthetic */ h(int i6) {
        this.f1059a = i6;
    }

    public static boolean h(Editable editable, KeyEvent keyEvent, boolean z5) {
        w[] wVarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (wVarArr = (w[]) editable.getSpans(selectionStart, selectionEnd, w.class)) != null && wVarArr.length > 0) {
                for (w wVar : wVarArr) {
                    int spanStart = editable.getSpanStart(wVar);
                    int spanEnd = editable.getSpanEnd(wVar);
                    if ((z5 && spanStart == selectionStart) || ((!z5 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static h q(Context context, AttributeSet attributeSet, int[] iArr, int i6) {
        return new h(context, context.obtainStyledAttributes(attributeSet, iArr, i6, 0));
    }

    @Override // q2.f0
    public void a(JSONObject jSONObject) {
        String string;
        Bundle bundle = (Bundle) this.f1060b;
        j jVar = (j) this.f1061c;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("id");
            } catch (JSONException e9) {
                o oVarD = jVar.d();
                m mVar = jVar.d().f6230g;
                String message = e9.getMessage();
                ArrayList arrayList = new ArrayList();
                arrayList.add("Caught exception");
                if (message != null) {
                    arrayList.add(message);
                }
                oVarD.c(new n(mVar, 3, null, TextUtils.join(": ", arrayList), null));
                return;
            }
        } else {
            string = null;
        }
        bundle.putString("com.facebook.platform.extra.USER_ID", string);
        jVar.l((m) this.f1062d, bundle);
    }

    @Override // l0.g
    public Object b() {
        return null;
    }

    @Override // l0.g
    public Uri c() {
        return (Uri) this.f1060b;
    }

    public Object clone() {
        switch (this.f1059a) {
            case 2:
                com.google.android.gms.internal.measurement.c cVar = (com.google.android.gms.internal.measurement.c) ((com.google.android.gms.internal.measurement.c) this.f1060b).clone();
                h hVar = new h(2);
                hVar.f1060b = cVar;
                hVar.f1061c = (com.google.android.gms.internal.measurement.c) cVar.clone();
                hVar.f1062d = new ArrayList();
                ArrayList arrayList = (ArrayList) this.f1062d;
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    ((ArrayList) hVar.f1062d).add((com.google.android.gms.internal.measurement.c) ((com.google.android.gms.internal.measurement.c) obj).clone());
                }
                return hVar;
            default:
                return super.clone();
        }
    }

    @Override // l0.g
    public Uri e() {
        return (Uri) this.f1062d;
    }

    @Override // q2.f0
    public void f(l lVar) {
        j jVar = (j) this.f1061c;
        o oVarD = jVar.d();
        m mVar = jVar.d().f6230g;
        String message = lVar != null ? lVar.getMessage() : null;
        ArrayList arrayList = new ArrayList();
        arrayList.add("Caught exception");
        if (message != null) {
            arrayList.add(message);
        }
        oVarD.c(new n(mVar, 3, null, TextUtils.join(": ", arrayList), null));
    }

    public f3.i g() {
        String strConcat = ((String) this.f1060b) == null ? " backendName" : "";
        if (((c3.d) this.f1062d) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new f3.i((String) this.f1060b, (byte[]) this.f1061c, (c3.d) this.f1062d);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    @Override // q6.a
    public Object get() {
        switch (this.f1059a) {
            case WakeMessage.ACTIVITY /* 8 */:
                return new q(new o3.a(1), new o3.a(0), (k3.b) ((z) this.f1060b).get(), (l3.i) ((h3) this.f1061c).get(), (y) ((y) this.f1062d).get());
            default:
                return new h((Context) ((q6.a) this.f1060b).get(), (m3.d) ((q6.a) this.f1061c).get(), (l3.a) ((e5.e) this.f1062d).get(), 13);
        }
    }

    @Override // l0.g
    public ClipDescription getDescription() {
        return (ClipDescription) this.f1061c;
    }

    public void i(Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap map = (HashMap) this.f1060b;
        f fVar = new f(byteArrayOutputStream, map, (HashMap) this.f1061c, (z4.d) this.f1062d);
        z4.d dVar = (z4.d) map.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, fVar);
        } else {
            throw new z4.b("No encoder for " + obj.getClass());
        }
    }

    public ColorStateList j(int i6) {
        int resourceId;
        ColorStateList colorStateListI;
        TypedArray typedArray = (TypedArray) this.f1061c;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0 || (colorStateListI = z7.l.i((Context) this.f1060b, resourceId)) == null) ? typedArray.getColorStateList(i6) : colorStateListI;
    }

    public Drawable k(int i6) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f1061c;
        return (!typedArray.hasValue(i6) || (resourceId = typedArray.getResourceId(i6, 0)) == 0) ? typedArray.getDrawable(i6) : z7.l.j((Context) this.f1060b, resourceId);
    }

    public Drawable l(int i6) {
        int resourceId;
        Drawable drawableG;
        if (!((TypedArray) this.f1061c).hasValue(i6) || (resourceId = ((TypedArray) this.f1061c).getResourceId(i6, 0)) == 0) {
            return null;
        }
        p pVarA = p.a();
        Context context = (Context) this.f1060b;
        synchronized (pVarA) {
            drawableG = pVarA.f4061a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public Typeface m(int i6, int i9, e6.b bVar) {
        e6.b bVar2;
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        int resourceId = ((TypedArray) this.f1061c).getResourceId(i6, 0);
        if (resourceId != 0) {
            if (((TypedValue) this.f1062d) == null) {
                this.f1062d = new TypedValue();
            }
            Context context = (Context) this.f1060b;
            TypedValue typedValue = (TypedValue) this.f1062d;
            ThreadLocal threadLocal = b0.l.f874a;
            if (!context.isRestricted()) {
                Resources resources = context.getResources();
                resources.getValue(resourceId, typedValue, true);
                CharSequence charSequence = typedValue.string;
                if (charSequence == null) {
                    throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(resourceId) + "\" (" + Integer.toHexString(resourceId) + ") is not a Font: " + typedValue);
                }
                String string = charSequence.toString();
                if (!string.startsWith("res/")) {
                    bVar.a();
                    return null;
                }
                int i10 = typedValue.assetCookie;
                s.i iVar = c0.f.f997b;
                Typeface typeface = (Typeface) iVar.get(c0.f.b(resources, resourceId, string, i10, i9));
                int i11 = 2;
                if (typeface != null) {
                    new Handler(Looper.getMainLooper()).post(new a2.i(bVar, i11, typeface));
                    return typeface;
                }
                try {
                } catch (IOException e9) {
                    e = e9;
                    bVar2 = bVar;
                } catch (XmlPullParserException e10) {
                    e = e10;
                    bVar2 = bVar;
                }
                if (string.toLowerCase().endsWith(".xml")) {
                    b0.e eVarG = b0.b.g(resources.getXml(resourceId), resources);
                    if (eVarG == null) {
                        try {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            bVar.a();
                            return null;
                        } catch (IOException e11) {
                            iOException = e11;
                            bVar2 = bVar;
                        } catch (XmlPullParserException e12) {
                            xmlPullParserException = e12;
                            bVar2 = bVar;
                            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                            bVar2.a();
                            return null;
                        }
                    } else {
                        try {
                            return c0.f.a(context, eVarG, resources, resourceId, string, typedValue.assetCookie, i9, bVar);
                        } catch (IOException e13) {
                            e = e13;
                            bVar2 = bVar;
                        } catch (XmlPullParserException e14) {
                            e = e14;
                            bVar2 = bVar;
                            xmlPullParserException = e;
                            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                            bVar2.a();
                            return null;
                        }
                    }
                    iOException = e;
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), iOException);
                } else {
                    bVar2 = bVar;
                    try {
                        int i12 = typedValue.assetCookie;
                        Typeface typefaceE = c0.f.f996a.e(context, resources, resourceId, string, i9);
                        if (typefaceE != null) {
                            iVar.put(c0.f.b(resources, resourceId, string, i12, i9), typefaceE);
                        }
                        if (typefaceE != null) {
                            new Handler(Looper.getMainLooper()).post(new a2.i(bVar2, i11, typefaceE));
                        } else {
                            bVar2.a();
                        }
                        return typefaceE;
                    } catch (IOException e15) {
                        e = e15;
                    } catch (XmlPullParserException e16) {
                        e = e16;
                        xmlPullParserException = e;
                        Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), xmlPullParserException);
                        bVar2.a();
                        return null;
                    }
                }
                bVar2.a();
                return null;
            }
        }
        return null;
    }

    public p0 n(d7.d dVar, String str) {
        boolean zIsInstance;
        p0 p0VarA;
        r0 r0Var = (r0) this.f1061c;
        d7.g.f("key", str);
        s0 s0Var = (s0) this.f1060b;
        s0Var.getClass();
        LinkedHashMap linkedHashMap = s0Var.f736a;
        p0 p0Var = (p0) linkedHashMap.get(str);
        Class clsJ = dVar.f2292a;
        Map map = d7.d.f2289b;
        d7.g.d("null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>", map);
        Integer num = (Integer) map.get(clsJ);
        if (num != null) {
            zIsInstance = d7.o.b(num.intValue(), p0Var);
        } else {
            if (clsJ.isPrimitive()) {
                clsJ = m1.j.j(d7.l.a(clsJ));
            }
            zIsInstance = clsJ.isInstance(p0Var);
        }
        if (zIsInstance) {
            if (r0Var instanceof n0) {
                n0 n0Var = (n0) r0Var;
                d7.g.c(p0Var);
                androidx.lifecycle.o oVar = n0Var.f727d;
                if (oVar != null) {
                    e1.e eVar = n0Var.f728e;
                    d7.g.c(eVar);
                    j0.a(p0Var, eVar, oVar);
                }
            }
            d7.g.d("null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel", p0Var);
            return p0Var;
        }
        v0.c cVar = new v0.c((v0.b) this.f1062d);
        cVar.f5530a.put(w0.b.f5717a, str);
        try {
            try {
                p0VarA = r0Var.c(dVar, cVar);
            } catch (AbstractMethodError unused) {
                p0VarA = r0Var.a(m1.j.i(dVar));
            }
        } catch (AbstractMethodError unused2) {
            p0VarA = r0Var.b(m1.j.i(dVar), cVar);
        }
        d7.g.f("viewModel", p0VarA);
        p0 p0Var2 = (p0) linkedHashMap.put(str, p0VarA);
        if (p0Var2 != null) {
            p0Var2.a();
        }
        return p0VarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x039a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0529 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x023b  */
    /* JADX WARN: Type inference failed for: r0v104 */
    /* JADX WARN: Type inference failed for: r0v105, types: [int] */
    /* JADX WARN: Type inference failed for: r0v179 */
    /* JADX WARN: Type inference failed for: r0v180 */
    /* JADX WARN: Type inference failed for: r0v181 */
    /* JADX WARN: Type inference failed for: r0v182 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean o() {
        /*
            Method dump skipped, instruction units count: 1450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.h.o():boolean");
    }

    @Override // p4.d
    public void onComplete(p4.i iVar) {
        u3.b bVar = (u3.b) this.f1060b;
        String str = (String) this.f1061c;
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f1062d;
        synchronized (bVar.f5448a) {
            bVar.f5448a.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    public boolean p(CharSequence charSequence, int i6, int i9, v vVar) {
        if ((vVar.f4623c & 3) == 0) {
            p0.g gVar = (p0.g) this.f1062d;
            q0.a aVarB = vVar.b();
            int iA = aVarB.a(8);
            if (iA != 0) {
                ((ByteBuffer) aVarB.f3249d).getShort(iA + aVarB.f3246a);
            }
            p0.d dVar = (p0.d) gVar;
            dVar.getClass();
            ThreadLocal threadLocal = p0.d.f4576b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i6 < i9) {
                sb.append(charSequence.charAt(i6));
                i6++;
            }
            TextPaint textPaint = dVar.f4577a;
            String string = sb.toString();
            int i10 = c0.d.f993a;
            boolean zHasGlyph = textPaint.hasGlyph(string);
            int i11 = vVar.f4623c & 4;
            vVar.f4623c = zHasGlyph ? i11 | 2 : i11 | 1;
        }
        return (vVar.f4623c & 3) == 2;
    }

    public Object r(CharSequence charSequence, int i6, int i9, int i10, boolean z5, p0.o oVar) {
        int i11;
        char c8;
        p0.p pVar = new p0.p((s) ((y) this.f1061c).f2164c);
        int iCodePointAt = Character.codePointAt(charSequence, i6);
        int i12 = 0;
        boolean zC = true;
        int iCharCount = i6;
        loop0: while (true) {
            i11 = iCharCount;
            while (iCharCount < i9 && i12 < i10 && zC) {
                SparseArray sparseArray = pVar.f4599c.f4614a;
                s sVar = sparseArray == null ? null : (s) sparseArray.get(iCodePointAt);
                if (pVar.f4597a == 2) {
                    if (sVar != null) {
                        pVar.f4599c = sVar;
                        pVar.f4602f++;
                    } else {
                        if (iCodePointAt == 65038) {
                            pVar.a();
                        } else if (iCodePointAt != 65039) {
                            s sVar2 = pVar.f4599c;
                            if (sVar2.f4615b != null) {
                                if (pVar.f4602f != 1) {
                                    pVar.f4600d = sVar2;
                                    pVar.a();
                                } else if (pVar.b()) {
                                    pVar.f4600d = pVar.f4599c;
                                    pVar.a();
                                } else {
                                    pVar.a();
                                }
                                c8 = 3;
                            } else {
                                pVar.a();
                            }
                        }
                        c8 = 1;
                    }
                    c8 = 2;
                } else if (sVar == null) {
                    pVar.a();
                    c8 = 1;
                } else {
                    pVar.f4597a = 2;
                    pVar.f4599c = sVar;
                    pVar.f4602f = 1;
                    c8 = 2;
                }
                pVar.f4601e = iCodePointAt;
                if (c8 == 1) {
                    iCharCount = Character.charCount(Character.codePointAt(charSequence, i11)) + i11;
                    if (iCharCount < i9) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                    }
                } else if (c8 == 2) {
                    int iCharCount2 = Character.charCount(iCodePointAt) + iCharCount;
                    if (iCharCount2 < i9) {
                        iCodePointAt = Character.codePointAt(charSequence, iCharCount2);
                    }
                    iCharCount = iCharCount2;
                } else if (c8 == 3) {
                    if (z5 || !p(charSequence, i11, iCharCount, pVar.f4600d.f4615b)) {
                        zC = oVar.c(charSequence, i11, iCharCount, pVar.f4600d.f4615b);
                        i12++;
                    }
                }
            }
            break loop0;
        }
        if (pVar.f4597a == 2 && pVar.f4599c.f4615b != null && ((pVar.f4602f > 1 || pVar.b()) && i12 < i10 && zC && (z5 || !p(charSequence, i11, iCharCount, pVar.f4599c.f4615b)))) {
            oVar.c(charSequence, i11, iCharCount, pVar.f4599c.f4615b);
        }
        return oVar.a();
    }

    public void s() {
        ((TypedArray) this.f1061c).recycle();
    }

    public void t(f3.i iVar, int i6, boolean z5) {
        char c8;
        l3.a aVar = (l3.a) this.f1062d;
        Context context = (Context) this.f1060b;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        String str = iVar.f2568a;
        String str2 = iVar.f2568a;
        adler32.update(str.getBytes(Charset.forName("UTF-8")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        c3.d dVar = iVar.f2570c;
        adler32.update(byteBufferAllocate.putInt(p3.a.a(dVar)).array());
        byte[] bArr = iVar.f2569b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z5) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i9 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i9 >= i6) {
                        y1.j.d("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", iVar);
                        return;
                    }
                }
            }
        }
        Cursor cursorRawQuery = ((m3.h) ((m3.d) this.f1061c)).a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str2, String.valueOf(p3.a.a(dVar))});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            long jLongValue = lValueOf.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            builder.setMinimumLatency(aVar.a(dVar, jLongValue, i6));
            Set set = ((l3.b) aVar.f3782b.get(dVar)).f3785c;
            if (set.contains(l3.c.f3786a)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(l3.c.f3788c)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(l3.c.f3787b)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i6);
            persistableBundle.putString("backendName", str2);
            persistableBundle.putInt("priority", p3.a.a(dVar));
            if (bArr != null) {
                c8 = 0;
                persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
            } else {
                c8 = 0;
            }
            builder.setExtras(persistableBundle);
            Integer numValueOf = Integer.valueOf(value);
            Long lValueOf2 = Long.valueOf(aVar.a(dVar, jLongValue, i6));
            Integer numValueOf2 = Integer.valueOf(i6);
            Object[] objArr = new Object[5];
            objArr[c8] = iVar;
            objArr[1] = numValueOf;
            objArr[2] = lValueOf2;
            objArr[3] = lValueOf;
            objArr[4] = numValueOf2;
            String strH = y1.j.h("JobInfoScheduler");
            if (Log.isLoggable(strH, 3)) {
                Log.d(strH, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
            }
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    public String toString() {
        switch (this.f1059a) {
            case 16:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.f1060b);
                sb.append('{');
                y4 y4Var = (y4) ((y4) this.f1061c).f1991c;
                String str = "";
                while (y4Var != null) {
                    Object obj = y4Var.f1990b;
                    sb.append(str);
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    y4Var = (y4) y4Var.f1991c;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void u(c3.a aVar) {
        com.getcapacitor.n nVar = new com.getcapacitor.n(6);
        q qVar = (q) this.f1062d;
        f3.i iVar = (f3.i) this.f1060b;
        c3.c cVar = (c3.c) this.f1061c;
        k3.b bVar = qVar.f2589c;
        h hVarA = f3.i.a();
        hVarA.v(iVar.f2568a);
        hVarA.f1062d = c3.d.f1037a;
        hVarA.f1061c = iVar.f2569b;
        f3.i iVarG = hVarA.g();
        com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g(2);
        gVar.f1413f = new HashMap();
        gVar.f1410c = Long.valueOf(qVar.f2587a.f());
        gVar.f1412e = Long.valueOf(qVar.f2588b.f());
        gVar.f1411d = "FCM_CLIENT_EVENT_LOGGING";
        n5.e eVar = aVar.f1033a;
        h hVar = t.f2152a;
        hVar.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            hVar.i(eVar, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        gVar.f1409b = new f3.l(cVar, byteArrayOutputStream.toByteArray());
        gVar.f1414g = null;
        k3.a aVar2 = (k3.a) bVar;
        aVar2.f3554b.execute(new androidx.fragment.app.e(aVar2, iVarG, nVar, gVar.c()));
    }

    public void v(String str) {
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f1060b = str;
    }

    public /* synthetic */ h(Object obj, Object obj2, Object obj3, int i6) {
        this.f1059a = i6;
        this.f1060b = obj;
        this.f1061c = obj2;
        this.f1062d = obj3;
    }

    public h(s0 s0Var, r0 r0Var, v0.b bVar) {
        this.f1059a = 18;
        d7.g.f("store", s0Var);
        d7.g.f("extras", bVar);
        this.f1060b = s0Var;
        this.f1061c = r0Var;
        this.f1062d = bVar;
    }

    public h(f3.i iVar, c3.c cVar, com.getcapacitor.n nVar, q qVar) {
        this.f1059a = 7;
        this.f1060b = iVar;
        this.f1061c = cVar;
        this.f1062d = qVar;
    }

    public h(FirebaseMessagingService firebaseMessagingService, k1.h hVar, ExecutorService executorService) {
        this.f1059a = 3;
        this.f1060b = executorService;
        this.f1061c = firebaseMessagingService;
        this.f1062d = hVar;
    }

    public h(Context context, TypedArray typedArray) {
        this.f1059a = 14;
        this.f1060b = context;
        this.f1061c = typedArray;
    }

    public h(Context context, LocationManager locationManager) {
        this.f1059a = 9;
        this.f1062d = new g.p0();
        this.f1060b = context;
        this.f1061c = locationManager;
    }

    public h(y yVar, o3.a aVar, p0.d dVar, Set set) {
        this.f1059a = 15;
        this.f1060b = aVar;
        this.f1061c = yVar;
        this.f1062d = dVar;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            r(str, 0, str.length(), 1, true, new n6.d(str, 1));
        }
    }

    public h(String str) {
        this.f1059a = 16;
        y4 y4Var = new y4(25, false);
        this.f1061c = y4Var;
        this.f1062d = y4Var;
        this.f1060b = str;
    }

    public h(k1.h hVar) {
        this.f1059a = 4;
        this.f1060b = hVar.A("gcm.n.title");
        hVar.x("gcm.n.title");
        Object[] objArrW = hVar.w("gcm.n.title");
        if (objArrW != null) {
            String[] strArr = new String[objArrW.length];
            for (int i6 = 0; i6 < objArrW.length; i6++) {
                strArr[i6] = String.valueOf(objArrW[i6]);
            }
        }
        this.f1061c = hVar.A("gcm.n.body");
        hVar.x("gcm.n.body");
        Object[] objArrW2 = hVar.w("gcm.n.body");
        if (objArrW2 != null) {
            String[] strArr2 = new String[objArrW2.length];
            for (int i9 = 0; i9 < objArrW2.length; i9++) {
                strArr2[i9] = String.valueOf(objArrW2[i9]);
            }
        }
        hVar.A("gcm.n.icon");
        if (TextUtils.isEmpty(hVar.A("gcm.n.sound2"))) {
            hVar.A("gcm.n.sound");
        }
        hVar.A("gcm.n.tag");
        hVar.A("gcm.n.color");
        this.f1062d = hVar.A("gcm.n.click_action");
        hVar.A("gcm.n.android_channel_id");
        String strA = hVar.A("gcm.n.link_android");
        strA = TextUtils.isEmpty(strA) ? hVar.A("gcm.n.link") : strA;
        if (!TextUtils.isEmpty(strA)) {
            Uri.parse(strA);
        }
        hVar.A("gcm.n.image");
        hVar.A("gcm.n.ticker");
        hVar.t("gcm.n.notification_priority");
        hVar.t("gcm.n.visibility");
        hVar.t("gcm.n.notification_count");
        hVar.s("gcm.n.sticky");
        hVar.s("gcm.n.local_only");
        hVar.s("gcm.n.default_sound");
        hVar.s("gcm.n.default_vibrate_timings");
        hVar.s("gcm.n.default_light_settings");
        hVar.y();
        hVar.v();
        hVar.B();
    }

    @Override // l0.g
    public void d() {
    }
}
