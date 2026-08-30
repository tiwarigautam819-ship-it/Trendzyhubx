package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1724c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1726b;

    static {
        byte b3 = (byte) (0 | 1);
        if (b3 != 1) {
            StringBuilder sb = new StringBuilder();
            if ((b3 & 1) == 0) {
                sb.append(" hasDifferentDmaOwner");
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(sb)));
        }
        byte b7 = (byte) (0 | 1);
        if (b7 != 1) {
            StringBuilder sb2 = new StringBuilder();
            if ((b7 & 1) == 0) {
                sb2.append(" hasDifferentDmaOwner");
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(sb2)));
        }
        byte b9 = (byte) (0 | 1);
        if (b9 == 1) {
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        if ((b9 & 1) == 0) {
            sb3.append(" hasDifferentDmaOwner");
        }
        throw new IllegalStateException("Missing required properties:".concat(String.valueOf(sb3)));
    }

    public m0(int i6, int i9) {
        this.f1725a = i6;
        this.f1726b = i9;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m0)) {
            return false;
        }
        m0 m0Var = (m0) obj;
        return androidx.fragment.app.m1.b(this.f1725a, m0Var.f1725a) && androidx.fragment.app.m1.b(this.f1726b, m0Var.f1726b);
    }

    public final int hashCode() {
        return ((androidx.fragment.app.m1.e(this.f1725a) ^ (-485106924)) * 583896283) ^ androidx.fragment.app.m1.e(this.f1726b);
    }

    public final String toString() {
        int i6 = this.f1725a;
        String str = i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "NO_CHECKS" : "SKIP_SECURITY_CHECK" : "SKIP_COMPLIANCE_CHECK" : "ALL_CHECKS";
        int i9 = this.f1726b;
        return "FileComplianceOptions{fileOwner=, hasDifferentDmaOwner=false, fileChecks=" + str + ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=" + (i9 != 1 ? i9 != 2 ? i9 != 3 ? "null" : "WRITE_ONLY" : "READ_ONLY" : "READ_AND_WRITE") + "}";
    }
}
