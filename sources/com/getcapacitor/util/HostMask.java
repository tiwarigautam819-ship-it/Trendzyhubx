package com.getcapacitor.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface HostMask {

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Any implements HostMask {
        private final List<? extends HostMask> masks;

        public Any(List<? extends HostMask> list) {
            this.masks = list;
        }

        public static Any parse(String... strArr) {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                arrayList.add(Simple.parse(str));
            }
            return new Any(arrayList);
        }

        @Override // com.getcapacitor.util.HostMask
        public boolean matches(String str) {
            Iterator<? extends HostMask> it = this.masks.iterator();
            while (it.hasNext()) {
                if (it.next().matches(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Nothing implements HostMask {
        @Override // com.getcapacitor.util.HostMask
        public boolean matches(String str) {
            return false;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Parser {
        private static HostMask NOTHING = new Nothing();

        public static HostMask parse(String[] strArr) {
            return strArr == null ? NOTHING : Any.parse(strArr);
        }

        public static HostMask parse(String str) {
            return str == null ? NOTHING : Simple.parse(str);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Simple implements HostMask {
        private final List<String> maskParts;

        private Simple(List<String> list) {
            if (list == null) {
                throw new IllegalArgumentException("Mask parts can not be null");
            }
            this.maskParts = list;
        }

        public static Simple parse(String str) {
            return new Simple(Util.splitAndReverse(str));
        }

        @Override // com.getcapacitor.util.HostMask
        public boolean matches(String str) {
            if (str == null) {
                return false;
            }
            List<String> listSplitAndReverse = Util.splitAndReverse(str);
            int size = listSplitAndReverse.size();
            int size2 = this.maskParts.size();
            if (size2 > 1 && size != size2) {
                return false;
            }
            int iMin = Math.min(size, size2);
            for (int i6 = 0; i6 < iMin; i6++) {
                if (!Util.matches(this.maskParts.get(i6), listSplitAndReverse.get(i6))) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Util {
        public static boolean matches(String str, String str2) {
            if (str == null) {
                return false;
            }
            if ("*".equals(str)) {
                return true;
            }
            if (str2 == null) {
                return false;
            }
            return str.toUpperCase().equals(str2.toUpperCase());
        }

        public static List<String> splitAndReverse(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Can not split null argument");
            }
            List<String> listAsList = Arrays.asList(str.split("\\."));
            Collections.reverse(listAsList);
            return listAsList;
        }
    }

    boolean matches(String str);
}
