package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final u5 f1932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final u5 f1933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u5[] f1934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ u5[] f1935e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1936a;

    /* JADX INFO: Fake field, exist only in values array */
    u5 EF0;

    static {
        k6 k6Var = k6.f1704e;
        u5 u5Var = new u5("DOUBLE", 0, 0, 1, k6Var);
        k6 k6Var2 = k6.f1703d;
        u5 u5Var2 = new u5("FLOAT", 1, 1, 1, k6Var2);
        k6 k6Var3 = k6.f1702c;
        u5 u5Var3 = new u5("INT64", 2, 2, 1, k6Var3);
        u5 u5Var4 = new u5("UINT64", 3, 3, 1, k6Var3);
        k6 k6Var4 = k6.f1701b;
        u5 u5Var5 = new u5("INT32", 4, 4, 1, k6Var4);
        u5 u5Var6 = new u5("FIXED64", 5, 5, 1, k6Var3);
        u5 u5Var7 = new u5("FIXED32", 6, 6, 1, k6Var4);
        k6 k6Var5 = k6.f1705f;
        u5 u5Var8 = new u5("BOOL", 7, 7, 1, k6Var5);
        k6 k6Var6 = k6.f1706g;
        u5 u5Var9 = new u5("STRING", 8, 8, 1, k6Var6);
        k6 k6Var7 = k6.f1708j;
        u5 u5Var10 = new u5("MESSAGE", 9, 9, 1, k6Var7);
        k6 k6Var8 = k6.h;
        u5 u5Var11 = new u5("BYTES", 10, 10, 1, k6Var8);
        u5 u5Var12 = new u5("UINT32", 11, 11, 1, k6Var4);
        k6 k6Var9 = k6.f1707i;
        u5 u5Var13 = new u5("ENUM", 12, 12, 1, k6Var9);
        u5 u5Var14 = new u5("SFIXED32", 13, 13, 1, k6Var4);
        u5 u5Var15 = new u5("SFIXED64", 14, 14, 1, k6Var3);
        u5 u5Var16 = new u5("SINT32", 15, 15, 1, k6Var4);
        u5 u5Var17 = new u5("SINT64", 16, 16, 1, k6Var3);
        u5 u5Var18 = new u5("GROUP", 17, 17, 1, k6Var7);
        u5 u5Var19 = new u5("DOUBLE_LIST", 18, 18, 2, k6Var);
        u5 u5Var20 = new u5("FLOAT_LIST", 19, 19, 2, k6Var2);
        u5 u5Var21 = new u5("INT64_LIST", 20, 20, 2, k6Var3);
        u5 u5Var22 = new u5("UINT64_LIST", 21, 21, 2, k6Var3);
        u5 u5Var23 = new u5("INT32_LIST", 22, 22, 2, k6Var4);
        u5 u5Var24 = new u5("FIXED64_LIST", 23, 23, 2, k6Var3);
        u5 u5Var25 = new u5("FIXED32_LIST", 24, 24, 2, k6Var4);
        u5 u5Var26 = new u5("BOOL_LIST", 25, 25, 2, k6Var5);
        u5 u5Var27 = new u5("STRING_LIST", 26, 26, 2, k6Var6);
        u5 u5Var28 = new u5("MESSAGE_LIST", 27, 27, 2, k6Var7);
        u5 u5Var29 = new u5("BYTES_LIST", 28, 28, 2, k6Var8);
        u5 u5Var30 = new u5("UINT32_LIST", 29, 29, 2, k6Var4);
        u5 u5Var31 = new u5("ENUM_LIST", 30, 30, 2, k6Var9);
        u5 u5Var32 = new u5("SFIXED32_LIST", 31, 31, 2, k6Var4);
        u5 u5Var33 = new u5("SFIXED64_LIST", 32, 32, 2, k6Var3);
        u5 u5Var34 = new u5("SINT32_LIST", 33, 33, 2, k6Var4);
        u5 u5Var35 = new u5("SINT64_LIST", 34, 34, 2, k6Var3);
        u5 u5Var36 = new u5("DOUBLE_LIST_PACKED", 35, 35, 3, k6Var);
        f1932b = u5Var36;
        u5 u5Var37 = new u5("FLOAT_LIST_PACKED", 36, 36, 3, k6Var2);
        u5 u5Var38 = new u5("INT64_LIST_PACKED", 37, 37, 3, k6Var3);
        u5 u5Var39 = new u5("UINT64_LIST_PACKED", 38, 38, 3, k6Var3);
        u5 u5Var40 = new u5("INT32_LIST_PACKED", 39, 39, 3, k6Var4);
        u5 u5Var41 = new u5("FIXED64_LIST_PACKED", 40, 40, 3, k6Var3);
        u5 u5Var42 = new u5("FIXED32_LIST_PACKED", 41, 41, 3, k6Var4);
        u5 u5Var43 = new u5("BOOL_LIST_PACKED", 42, 42, 3, k6Var5);
        u5 u5Var44 = new u5("UINT32_LIST_PACKED", 43, 43, 3, k6Var4);
        u5 u5Var45 = new u5("ENUM_LIST_PACKED", 44, 44, 3, k6Var9);
        u5 u5Var46 = new u5("SFIXED32_LIST_PACKED", 45, 45, 3, k6Var4);
        u5 u5Var47 = new u5("SFIXED64_LIST_PACKED", 46, 46, 3, k6Var3);
        u5 u5Var48 = new u5("SINT32_LIST_PACKED", 47, 47, 3, k6Var4);
        u5 u5Var49 = new u5("SINT64_LIST_PACKED", 48, 48, 3, k6Var3);
        f1933c = u5Var49;
        f1935e = new u5[]{u5Var, u5Var2, u5Var3, u5Var4, u5Var5, u5Var6, u5Var7, u5Var8, u5Var9, u5Var10, u5Var11, u5Var12, u5Var13, u5Var14, u5Var15, u5Var16, u5Var17, u5Var18, u5Var19, u5Var20, u5Var21, u5Var22, u5Var23, u5Var24, u5Var25, u5Var26, u5Var27, u5Var28, u5Var29, u5Var30, u5Var31, u5Var32, u5Var33, u5Var34, u5Var35, u5Var36, u5Var37, u5Var38, u5Var39, u5Var40, u5Var41, u5Var42, u5Var43, u5Var44, u5Var45, u5Var46, u5Var47, u5Var48, u5Var49, new u5("GROUP_LIST", 49, 49, 2, k6Var7), new u5("MAP", 50, 50, 4, k6.f1700a)};
        u5[] u5VarArrValues = values();
        f1934d = new u5[u5VarArrValues.length];
        for (u5 u5Var50 : u5VarArrValues) {
            f1934d[u5Var50.f1936a] = u5Var50;
        }
    }

    public u5(String str, int i6, int i9, int i10, k6 k6Var) {
        this.f1936a = i9;
        int iE = androidx.fragment.app.m1.e(i10);
        if (iE == 1 || iE == 3) {
            k6Var.getClass();
        }
        if (i10 == 1) {
            int i11 = v5.f1962a[k6Var.ordinal()];
        }
    }

    public static u5[] values() {
        return (u5[]) f1935e.clone();
    }
}
