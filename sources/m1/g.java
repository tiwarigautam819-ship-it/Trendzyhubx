package m1;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4229a;

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f4229a) {
            case 0:
                return str.endsWith(".bin");
            case 1:
                return Pattern.matches("cpu[0-9]+", str);
            case 2:
                d7.g.e("name", str);
                Pattern patternCompile = Pattern.compile(String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3)));
                d7.g.e("compile(...)", patternCompile);
                return patternCompile.matcher(str).matches();
            case 3:
                d7.g.e("name", str);
                Pattern patternCompile2 = Pattern.compile(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"anr_log_"}, 1)));
                d7.g.e("compile(...)", patternCompile2);
                return patternCompile2.matcher(str).matches();
            case 4:
                d7.g.e("name", str);
                Pattern patternCompile3 = Pattern.compile(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"analysis_log_"}, 1)));
                d7.g.e("compile(...)", patternCompile3);
                return patternCompile3.matcher(str).matches();
            default:
                d7.g.e("name", str);
                Pattern patternCompile4 = Pattern.compile(String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"error_log_"}, 1)));
                d7.g.e("compile(...)", patternCompile4);
                return patternCompile4.matcher(str).matches();
        }
    }
}
