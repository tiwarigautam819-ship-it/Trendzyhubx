package c0;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends x2.a {
    public static Font r(FontFamily fontFamily, int i6) {
        FontStyle fontStyle = new FontStyle((i6 & 1) != 0 ? 700 : 400, (i6 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iT = t(fontStyle, font.getStyle());
        for (int i9 = 1; i9 < fontFamily.getSize(); i9++) {
            Font font2 = fontFamily.getFont(i9);
            int iT2 = t(fontStyle, font2.getStyle());
            if (iT2 < iT) {
                font = font2;
                iT = iT2;
            }
        }
        return font;
    }

    public static FontFamily s(g0.j[] jVarArr, ContentResolver contentResolver) {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        FontFamily.Builder builder = null;
        for (g0.j jVar : jVarArr) {
            try {
                parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(jVar.f2841a, "r", null);
            } catch (IOException e9) {
                Log.w("TypefaceCompatApi29Impl", "Font load failed", e9);
            }
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                }
            } else {
                try {
                    Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(jVar.f2843c).setSlant(jVar.f2844d ? 1 : 0).setTtcIndex(jVar.f2842b).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            parcelFileDescriptorOpenFileDescriptor.close();
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    public static int t(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    @Override // x2.a
    public final Typeface a(Context context, b0.f fVar, Resources resources, int i6) {
        try {
            FontFamily.Builder builder = null;
            for (b0.g gVar : fVar.f857a) {
                try {
                    Font fontBuild = new Font.Builder(resources, gVar.f863f).setWeight(gVar.f859b).setSlant(gVar.f860c ? 1 : 0).setTtcIndex(gVar.f862e).setFontVariationSettings(gVar.f861d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(r(fontFamilyBuild, i6).getStyle()).build();
        } catch (Exception e9) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e9);
            return null;
        }
    }

    @Override // x2.a
    public final Typeface b(Context context, g0.j[] jVarArr, int i6) {
        try {
            FontFamily fontFamilyS = s(jVarArr, context.getContentResolver());
            if (fontFamilyS == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(fontFamilyS).setStyle(r(fontFamilyS, i6).getStyle()).build();
        } catch (Exception e9) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e9);
            return null;
        }
    }

    @Override // x2.a
    public final Typeface c(Context context, List list, int i6) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily fontFamilyS = s((g0.j[]) list.get(0), contentResolver);
            if (fontFamilyS == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(fontFamilyS);
            for (int i9 = 1; i9 < list.size(); i9++) {
                FontFamily fontFamilyS2 = s((g0.j[]) list.get(i9), contentResolver);
                if (fontFamilyS2 != null) {
                    customFallbackBuilder.addCustomFallback(fontFamilyS2);
                }
            }
            return customFallbackBuilder.setStyle(r(fontFamilyS, i6).getStyle()).build();
        } catch (Exception e9) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e9);
            return null;
        }
    }

    @Override // x2.a
    public final Typeface d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // x2.a
    public final Typeface e(Context context, Resources resources, int i6, String str, int i9) {
        try {
            Font fontBuild = new Font.Builder(resources, i6).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception e9) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e9);
            return null;
        }
    }

    @Override // x2.a
    public final g0.j f(g0.j[] jVarArr, int i6) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
