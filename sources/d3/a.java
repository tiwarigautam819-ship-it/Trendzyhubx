package d3;

import com.engagelab.privates.push.constants.MTPushConstants;
import f3.k;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f2258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Set f2259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f2260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f2261f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2263b;

    static {
        String strH = b2.k.h("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f2258c = strH;
        String strH2 = b2.k.h("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strH3 = b2.k.h("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f2259d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new c3.c("proto"), new c3.c(MTPushConstants.Analysis.KEY_JSON))));
        f2260e = new a(strH, null);
        f2261f = new a(strH2, strH3);
    }

    public a(String str, String str2) {
        this.f2262a = str;
        this.f2263b = str2;
    }

    public static a a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }
}
