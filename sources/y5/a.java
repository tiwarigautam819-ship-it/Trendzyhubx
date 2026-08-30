package y5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f6255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f6256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6257f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6258g;
    public static final a h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f6259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f6260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f6261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f6262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ a[] f6263m;

    static {
        a aVar = new a("ERROR_CORRECTION", 0);
        f6252a = aVar;
        a aVar2 = new a("CHARACTER_SET", 1);
        f6253b = aVar2;
        a aVar3 = new a("DATA_MATRIX_SHAPE", 2);
        f6254c = aVar3;
        a aVar4 = new a("MIN_SIZE", 3);
        f6255d = aVar4;
        a aVar5 = new a("MAX_SIZE", 4);
        f6256e = aVar5;
        a aVar6 = new a("MARGIN", 5);
        f6257f = aVar6;
        a aVar7 = new a("PDF417_COMPACT", 6);
        f6258g = aVar7;
        a aVar8 = new a("PDF417_COMPACTION", 7);
        h = aVar8;
        a aVar9 = new a("PDF417_DIMENSIONS", 8);
        f6259i = aVar9;
        a aVar10 = new a("AZTEC_LAYERS", 9);
        f6260j = aVar10;
        a aVar11 = new a("QR_VERSION", 10);
        f6261k = aVar11;
        a aVar12 = new a("GS1_FORMAT", 11);
        f6262l = aVar12;
        f6263m = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f6263m.clone();
    }
}
