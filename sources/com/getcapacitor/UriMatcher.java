package com.getcapacitor;

import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class UriMatcher {
    private static final int EXACT = 0;
    private static final int MASK = 3;
    static final Pattern PATH_SPLIT_PATTERN = Pattern.compile("/");
    private static final int REST = 2;
    private static final int TEXT = 1;
    private ArrayList<UriMatcher> mChildren;
    private Object mCode;
    private String mText;
    private int mWhich;

    public UriMatcher(Object obj) {
        this.mCode = obj;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }

    public void addURI(String str, String str2, String str3, Object obj) {
        String[] strArrSplit;
        String strSubstring = str3;
        if (obj == null) {
            throw new IllegalArgumentException("Code can't be null");
        }
        if (strSubstring != null) {
            if (!strSubstring.isEmpty() && strSubstring.charAt(0) == '/') {
                strSubstring = strSubstring.substring(1);
            }
            strArrSplit = PATH_SPLIT_PATTERN.split(strSubstring);
        } else {
            strArrSplit = null;
        }
        int length = strArrSplit != null ? strArrSplit.length : 0;
        UriMatcher uriMatcher = this;
        int i6 = -2;
        while (i6 < length) {
            String str4 = i6 == -2 ? str : i6 == -1 ? str2 : strArrSplit[i6];
            ArrayList<UriMatcher> arrayList = uriMatcher.mChildren;
            int size = arrayList.size();
            int i9 = 0;
            while (true) {
                if (i9 >= size) {
                    break;
                }
                UriMatcher uriMatcher2 = arrayList.get(i9);
                if (str4.equals(uriMatcher2.mText)) {
                    uriMatcher = uriMatcher2;
                    break;
                }
                i9++;
            }
            if (i9 == size) {
                UriMatcher uriMatcher3 = new UriMatcher();
                if (i6 == -1 && str4.contains("*")) {
                    uriMatcher3.mWhich = 3;
                } else if (str4.equals("**")) {
                    uriMatcher3.mWhich = 2;
                } else if (str4.equals("*")) {
                    uriMatcher3.mWhich = 1;
                } else {
                    uriMatcher3.mWhich = 0;
                }
                uriMatcher3.mText = str4;
                uriMatcher.mChildren.add(uriMatcher3);
                uriMatcher = uriMatcher3;
            }
            i6++;
        }
        uriMatcher.mCode = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006c A[LOOP:1: B:20:0x0039->B:40:0x006c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x006a A[EDGE_INSN: B:50:0x006a->B:39:0x006a BREAK  A[LOOP:1: B:20:0x0039->B:40:0x006c], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object match(android.net.Uri r14) {
        /*
            r13 = this;
            java.util.List r0 = r14.getPathSegments()
            int r1 = r0.size()
            if (r1 != 0) goto L13
            java.lang.String r2 = r14.getAuthority()
            if (r2 != 0) goto L13
            java.lang.Object r14 = r13.mCode
            return r14
        L13:
            r2 = -2
            r4 = r13
            r3 = r2
        L16:
            if (r3 >= r1) goto L75
            if (r3 != r2) goto L1f
            java.lang.String r5 = r14.getScheme()
            goto L2d
        L1f:
            r5 = -1
            if (r3 != r5) goto L27
            java.lang.String r5 = r14.getAuthority()
            goto L2d
        L27:
            java.lang.Object r5 = r0.get(r3)
            java.lang.String r5 = (java.lang.String) r5
        L2d:
            java.util.ArrayList<com.getcapacitor.UriMatcher> r6 = r4.mChildren
            if (r6 != 0) goto L32
            goto L75
        L32:
            int r4 = r6.size()
            r7 = 0
            r8 = 0
            r9 = r7
        L39:
            if (r8 >= r4) goto L6a
            java.lang.Object r10 = r6.get(r8)
            com.getcapacitor.UriMatcher r10 = (com.getcapacitor.UriMatcher) r10
            int r11 = r10.mWhich
            if (r11 == 0) goto L5f
            r12 = 1
            if (r11 == r12) goto L67
            r12 = 2
            if (r11 == r12) goto L5c
            r12 = 3
            if (r11 == r12) goto L4f
            goto L68
        L4f:
            java.lang.String r11 = r10.mText
            com.getcapacitor.util.HostMask r11 = com.getcapacitor.util.HostMask.Parser.parse(r11)
            boolean r11 = r11.matches(r5)
            if (r11 == 0) goto L68
            goto L67
        L5c:
            java.lang.Object r14 = r10.mCode
            return r14
        L5f:
            java.lang.String r11 = r10.mText
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L68
        L67:
            r9 = r10
        L68:
            if (r9 == 0) goto L6c
        L6a:
            r4 = r9
            goto L6f
        L6c:
            int r8 = r8 + 1
            goto L39
        L6f:
            if (r4 != 0) goto L72
            return r7
        L72:
            int r3 = r3 + 1
            goto L16
        L75:
            java.lang.Object r14 = r4.mCode
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getcapacitor.UriMatcher.match(android.net.Uri):java.lang.Object");
    }

    private UriMatcher() {
        this.mCode = null;
        this.mWhich = -1;
        this.mChildren = new ArrayList<>();
        this.mText = null;
    }
}
