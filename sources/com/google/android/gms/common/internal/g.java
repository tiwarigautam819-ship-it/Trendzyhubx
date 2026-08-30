package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.fragment.app.m1;
import com.YaarWin.app.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import m.f2;
import m.v2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f1412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f1413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f1414g;

    public g(Set set, String str, String str2) {
        this.f1408a = 0;
        Set setUnmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f1409b = setUnmodifiableSet;
        Map map = Collections.EMPTY_MAP;
        this.f1411d = str;
        this.f1412e = str2;
        this.f1413f = m4.a.f4278a;
        HashSet hashSet = new HashSet(setUnmodifiableSet);
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        this.f1410c = Collections.unmodifiableSet(hashSet);
    }

    public static boolean b(int[] iArr, int i6) {
        for (int i9 : iArr) {
            if (i9 == i6) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList d(Context context, int i6) {
        int iC = v2.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{v2.f4131b, v2.f4133d, v2.f4132c, v2.f4135f}, new int[]{v2.b(context, R.attr.colorButtonNormal), c0.a.b(iC, i6), c0.a.b(iC, i6), i6});
    }

    public static LayerDrawable f(f2 f2Var, Context context, int i6) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i6);
        Drawable drawableF = f2Var.f(context, R.drawable.abc_star_black_48dp);
        Drawable drawableF2 = f2Var.f(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableF instanceof BitmapDrawable) && drawableF.getIntrinsicWidth() == dimensionPixelSize && drawableF.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableF;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableF.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableF2 instanceof BitmapDrawable) && drawableF2.getIntrinsicWidth() == dimensionPixelSize && drawableF2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableF2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableF2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void j(Drawable drawable, int i6, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterH;
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = m.p.f4059b;
        }
        PorterDuff.Mode mode2 = m.p.f4059b;
        synchronized (m.p.class) {
            porterDuffColorFilterH = f2.h(i6, mode);
        }
        drawableMutate.setColorFilter(porterDuffColorFilterH);
    }

    public void a(String str, String str2) {
        HashMap map = (HashMap) this.f1413f;
        if (map == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map.put(str, str2);
    }

    public f3.h c() {
        String strF = ((String) this.f1411d) == null ? " transportName" : "";
        if (((f3.l) this.f1409b) == null) {
            strF = strF.concat(" encodedPayload");
        }
        if (((Long) this.f1410c) == null) {
            strF = q2.x.f(strF, " eventMillis");
        }
        if (((Long) this.f1412e) == null) {
            strF = q2.x.f(strF, " uptimeMillis");
        }
        if (((HashMap) this.f1413f) == null) {
            strF = q2.x.f(strF, " autoMetadata");
        }
        if (strF.isEmpty()) {
            return new f3.h((String) this.f1411d, (Integer) this.f1414g, (f3.l) this.f1409b, ((Long) this.f1410c).longValue(), ((Long) this.f1412e).longValue(), (HashMap) this.f1413f);
        }
        throw new IllegalStateException("Missing required properties:".concat(strF));
    }

    public p4.q e(p4.q qVar) {
        return qVar.i(new c1.c(), new com.getcapacitor.n(this));
    }

    public ColorStateList g(Context context, int i6) {
        if (i6 == R.drawable.abc_edit_text_material) {
            return z7.l.i(context, R.color.abc_tint_edittext);
        }
        if (i6 == R.drawable.abc_switch_track_mtrl_alpha) {
            return z7.l.i(context, R.color.abc_tint_switch_track);
        }
        if (i6 != R.drawable.abc_switch_thumb_material) {
            if (i6 == R.drawable.abc_btn_default_mtrl_shape) {
                return d(context, v2.c(context, R.attr.colorButtonNormal));
            }
            if (i6 == R.drawable.abc_btn_borderless_material) {
                return d(context, 0);
            }
            if (i6 == R.drawable.abc_btn_colored_material) {
                return d(context, v2.c(context, R.attr.colorAccent));
            }
            if (i6 == R.drawable.abc_spinner_mtrl_am_alpha || i6 == R.drawable.abc_spinner_textfield_background_material) {
                return z7.l.i(context, R.color.abc_tint_spinner);
            }
            if (b((int[]) this.f1410c, i6)) {
                return v2.d(context, R.attr.colorControlNormal);
            }
            if (b((int[]) this.f1413f, i6)) {
                return z7.l.i(context, R.color.abc_tint_default);
            }
            if (b((int[]) this.f1414g, i6)) {
                return z7.l.i(context, R.color.abc_tint_btn_checkable);
            }
            if (i6 == R.drawable.abc_seekbar_thumb_material) {
                return z7.l.i(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = v2.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = v2.f4131b;
            iArr2[0] = v2.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = v2.f4134e;
            iArr2[1] = v2.c(context, R.attr.colorControlActivated);
            iArr[2] = v2.f4135f;
            iArr2[2] = v2.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = v2.f4131b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = v2.f4134e;
            iArr2[1] = v2.c(context, R.attr.colorControlActivated);
            iArr[2] = v2.f4135f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public com.google.firebase.messaging.z h() {
        com.google.firebase.messaging.z zVar = new com.google.firebase.messaging.z();
        zVar.f2170e = new LinkedHashMap();
        zVar.f2166a = (r7.m) this.f1409b;
        zVar.f2167b = (String) this.f1411d;
        zVar.f2169d = (b0.d) this.f1412e;
        Map map = (Map) this.f1413f;
        zVar.f2170e = map.isEmpty() ? new LinkedHashMap() : s6.r.y(map);
        zVar.f2168c = ((r7.k) this.f1410c).c();
        return zVar;
    }

    public void i(String str, String str2, Bundle bundle) {
        int i6;
        String strEncodeToString;
        int iA;
        PackageInfo packageInfoD;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        t4.g gVar = (t4.g) this.f1409b;
        gVar.a();
        bundle.putString("gmp_app_id", gVar.f5322c.f5334b);
        com.google.firebase.messaging.s sVar = (com.google.firebase.messaging.s) this.f1410c;
        synchronized (sVar) {
            try {
                if (sVar.f2148b == 0 && (packageInfoD = sVar.d("com.google.android.gms")) != null) {
                    sVar.f2148b = packageInfoD.versionCode;
                }
                i6 = sVar.f2148b;
            } finally {
            }
        }
        bundle.putString("gmsv", Integer.toString(i6));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", ((com.google.firebase.messaging.s) this.f1410c).a());
        bundle.putString("app_ver_name", ((com.google.firebase.messaging.s) this.f1410c).b());
        t4.g gVar2 = (t4.g) this.f1409b;
        gVar2.a();
        try {
            strEncodeToString = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(gVar2.f5321b.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            strEncodeToString = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", strEncodeToString);
        try {
            String str3 = ((h5.a) j7.g.a(((h5.d) ((h5.e) this.f1414g)).e())).f2978a;
            if (TextUtils.isEmpty(str3)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", str3);
            }
        } catch (InterruptedException e9) {
            e = e9;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        } catch (ExecutionException e10) {
            e = e10;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString("appid", (String) j7.g.a(((h5.d) ((h5.e) this.f1414g)).d()));
        bundle.putString("cliv", "fcm-24.0.2");
        e5.g gVar3 = (e5.g) ((g5.a) this.f1413f).get();
        o5.b bVar = (o5.b) ((g5.a) this.f1412e).get();
        if (gVar3 == null || bVar == null || (iA = ((e5.d) gVar3).a()) == 1) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(m1.e(iA)));
        bundle.putString("Firebase-Client", bVar.a());
    }

    public p4.q k(String str, String str2, Bundle bundle) {
        int i6;
        try {
            i(str, str2, bundle);
            u3.b bVar = (u3.b) this.f1411d;
            u3.h hVar = u3.h.f5463c;
            k6.b bVar2 = bVar.f5450c;
            if (bVar2.d() < 12000000) {
                return bVar2.e() != 0 ? bVar.a(bundle).j(hVar, new u3.o(bVar, bundle)) : j7.g.k(new IOException("MISSING_INSTANCEID_SERVICE"));
            }
            u3.n nVarA = u3.n.a(bVar.f5449b);
            synchronized (nVarA) {
                i6 = nVarA.f5487d;
                nVarA.f5487d = i6 + 1;
            }
            return nVarA.b(new u3.m(i6, 1, bundle, 1)).i(hVar, u3.d.f5456b);
        } catch (InterruptedException | ExecutionException e9) {
            return j7.g.k(e9);
        }
    }

    public String toString() {
        switch (this.f1408a) {
            case 4:
                Map map = (Map) this.f1413f;
                StringBuilder sb = new StringBuilder("Request{method=");
                sb.append((String) this.f1411d);
                sb.append(", url=");
                sb.append((r7.m) this.f1409b);
                r7.k kVar = (r7.k) this.f1410c;
                if (kVar.size() != 0) {
                    sb.append(", headers=[");
                    Iterator it = kVar.iterator();
                    int i6 = 0;
                    while (true) {
                        d7.a aVar = (d7.a) it;
                        if (aVar.hasNext()) {
                            Object next = aVar.next();
                            int i9 = i6 + 1;
                            if (i6 < 0) {
                                throw new ArithmeticException("Index overflow has happened.");
                            }
                            r6.d dVar = (r6.d) next;
                            String str = (String) dVar.f4993a;
                            String str2 = (String) dVar.f4994b;
                            if (i6 > 0) {
                                sb.append(", ");
                            }
                            sb.append(str);
                            sb.append(':');
                            sb.append(str2);
                            i6 = i9;
                        } else {
                            sb.append(']');
                        }
                    }
                }
                if (!map.isEmpty()) {
                    sb.append(", tags=");
                    sb.append(map);
                }
                sb.append('}');
                String string = sb.toString();
                d7.g.e("StringBuilder().apply(builderAction).toString()", string);
                return string;
            default:
                return super.toString();
        }
    }

    public g(r7.m mVar, String str, r7.k kVar, b0.d dVar, Map map) {
        this.f1408a = 4;
        d7.g.f("url", mVar);
        d7.g.f(FirebaseAnalytics.Param.METHOD, str);
        this.f1409b = mVar;
        this.f1411d = str;
        this.f1410c = kVar;
        this.f1412e = dVar;
        this.f1413f = map;
    }

    public g(int i6) {
        this.f1408a = i6;
        switch (i6) {
            case 3:
                this.f1409b = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                this.f1410c = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.f1411d = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                this.f1412e = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                this.f1413f = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.f1414g = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public g(t4.g gVar, com.google.firebase.messaging.s sVar, g5.a aVar, g5.a aVar2, h5.e eVar) {
        this.f1408a = 1;
        gVar.a();
        u3.b bVar = new u3.b(gVar.f5320a);
        this.f1409b = gVar;
        this.f1410c = sVar;
        this.f1411d = bVar;
        this.f1412e = aVar;
        this.f1413f = aVar2;
        this.f1414g = eVar;
    }

    public g(u7.d dVar) {
        this.f1408a = 5;
        d7.g.f("taskRunner", dVar);
        this.f1409b = dVar;
        this.f1414g = y7.h.f6299a;
    }
}
