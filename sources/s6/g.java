package s6;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends m {
    public static boolean p(Iterable iterable, Object obj) {
        int iIndexOf;
        d7.g.f("<this>", iterable);
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (!(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            int i6 = 0;
            while (true) {
                if (!it.hasNext()) {
                    iIndexOf = -1;
                    break;
                }
                Object next = it.next();
                if (i6 < 0) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                if (d7.g.a(obj, next)) {
                    iIndexOf = i6;
                    break;
                }
                i6++;
            }
        } else {
            iIndexOf = ((List) iterable).indexOf(obj);
        }
        return iIndexOf >= 0;
    }

    public static Object q(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static final void r(Collection collection, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, f2.b bVar) {
        sb.append(charSequence2);
        int i6 = 0;
        for (Object obj : collection) {
            i6++;
            if (i6 > 1) {
                sb.append(charSequence);
            }
            android.support.v4.media.session.a.a(sb, obj, bVar);
        }
        sb.append(charSequence3);
    }

    public static Object s(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(h.j(list));
    }

    public static ArrayList t(Collection collection, Iterable iterable) {
        d7.g.f("<this>", collection);
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            m.o(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static List u(ArrayList arrayList, Comparator comparator) {
        if (arrayList.size() <= 1) {
            return w(arrayList);
        }
        Object[] array = arrayList.toArray(new Object[0]);
        d7.g.f("<this>", array);
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return f.h(array);
    }

    public static final void v(Iterable iterable, AbstractCollection abstractCollection) {
        d7.g.f("<this>", iterable);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List w(Iterable iterable) {
        ArrayList arrayListX;
        d7.g.f("<this>", iterable);
        boolean z5 = iterable instanceof Collection;
        if (!z5) {
            if (z5) {
                arrayListX = x((Collection) iterable);
            } else {
                ArrayList arrayList = new ArrayList();
                v(iterable, arrayList);
                arrayListX = arrayList;
            }
            return h.m(arrayListX);
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return o.f5282a;
        }
        if (size != 1) {
            return x(collection);
        }
        return f4.f.b(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static ArrayList x(Collection collection) {
        d7.g.f("<this>", collection);
        return new ArrayList(collection);
    }

    public static Set y(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return q.f5284a;
        }
        if (size != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(r.s(arrayList.size()));
            v(arrayList, linkedHashSet);
            return linkedHashSet;
        }
        Set setSingleton = Collections.singleton(arrayList.get(0));
        d7.g.e("singleton(...)", setSingleton);
        return setSingleton;
    }
}
