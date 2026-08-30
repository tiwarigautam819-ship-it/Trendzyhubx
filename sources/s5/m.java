package s5;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a6.c f5257i = new a6.c(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f5260c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final l f5263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k f5264g;
    public k h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5261d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5262e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Comparator f5258a = f5257i;

    public m(boolean z5) {
        this.f5259b = z5;
        this.f5263f = new l(z5);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    public final l a(boolean z5, Object obj) {
        int iCompareTo;
        l lVar;
        l lVar2 = this.f5260c;
        a6.c cVar = f5257i;
        Comparator comparator = this.f5258a;
        if (lVar2 != null) {
            Comparable comparable = comparator == cVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = lVar2.f5254f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return lVar2;
                }
                l lVar3 = iCompareTo < 0 ? lVar2.f5250b : lVar2.f5251c;
                if (lVar3 == null) {
                    break;
                }
                lVar2 = lVar3;
            }
        } else {
            iCompareTo = 0;
        }
        l lVar4 = lVar2;
        if (!z5) {
            return null;
        }
        l lVar5 = this.f5263f;
        if (lVar4 != null) {
            lVar = new l(this.f5259b, lVar4, obj, lVar5, lVar5.f5253e);
            if (iCompareTo < 0) {
                lVar4.f5250b = lVar;
            } else {
                lVar4.f5251c = lVar;
            }
            b(lVar4, true);
        } else {
            if (comparator == cVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            lVar = new l(this.f5259b, lVar4, obj, lVar5, lVar5.f5253e);
            this.f5260c = lVar;
        }
        this.f5261d++;
        this.f5262e++;
        return lVar;
    }

    public final void b(l lVar, boolean z5) {
        while (lVar != null) {
            l lVar2 = lVar.f5250b;
            l lVar3 = lVar.f5251c;
            int i6 = lVar2 != null ? lVar2.f5256i : 0;
            int i9 = lVar3 != null ? lVar3.f5256i : 0;
            int i10 = i6 - i9;
            if (i10 == -2) {
                l lVar4 = lVar3.f5250b;
                l lVar5 = lVar3.f5251c;
                int i11 = (lVar4 != null ? lVar4.f5256i : 0) - (lVar5 != null ? lVar5.f5256i : 0);
                if (i11 == -1 || (i11 == 0 && !z5)) {
                    e(lVar);
                } else {
                    f(lVar3);
                    e(lVar);
                }
                if (z5) {
                    return;
                }
            } else if (i10 == 2) {
                l lVar6 = lVar2.f5250b;
                l lVar7 = lVar2.f5251c;
                int i12 = (lVar6 != null ? lVar6.f5256i : 0) - (lVar7 != null ? lVar7.f5256i : 0);
                if (i12 == 1 || (i12 == 0 && !z5)) {
                    f(lVar);
                } else {
                    e(lVar2);
                    f(lVar);
                }
                if (z5) {
                    return;
                }
            } else if (i10 == 0) {
                lVar.f5256i = i6 + 1;
                if (z5) {
                    return;
                }
            } else {
                lVar.f5256i = Math.max(i6, i9) + 1;
                if (!z5) {
                    return;
                }
            }
            lVar = lVar.f5249a;
        }
    }

    public final void c(l lVar, boolean z5) {
        l lVar2;
        l lVar3;
        int i6;
        if (z5) {
            l lVar4 = lVar.f5253e;
            lVar4.f5252d = lVar.f5252d;
            lVar.f5252d.f5253e = lVar4;
        }
        l lVar5 = lVar.f5250b;
        l lVar6 = lVar.f5251c;
        l lVar7 = lVar.f5249a;
        int i9 = 0;
        if (lVar5 == null || lVar6 == null) {
            if (lVar5 != null) {
                d(lVar, lVar5);
                lVar.f5250b = null;
            } else if (lVar6 != null) {
                d(lVar, lVar6);
                lVar.f5251c = null;
            } else {
                d(lVar, null);
            }
            b(lVar7, false);
            this.f5261d--;
            this.f5262e++;
            return;
        }
        if (lVar5.f5256i > lVar6.f5256i) {
            l lVar8 = lVar5.f5251c;
            while (true) {
                l lVar9 = lVar8;
                lVar3 = lVar5;
                lVar5 = lVar9;
                if (lVar5 == null) {
                    break;
                } else {
                    lVar8 = lVar5.f5251c;
                }
            }
        } else {
            l lVar10 = lVar6.f5250b;
            while (true) {
                lVar2 = lVar6;
                lVar6 = lVar10;
                if (lVar6 == null) {
                    break;
                } else {
                    lVar10 = lVar6.f5250b;
                }
            }
            lVar3 = lVar2;
        }
        c(lVar3, false);
        l lVar11 = lVar.f5250b;
        if (lVar11 != null) {
            i6 = lVar11.f5256i;
            lVar3.f5250b = lVar11;
            lVar11.f5249a = lVar3;
            lVar.f5250b = null;
        } else {
            i6 = 0;
        }
        l lVar12 = lVar.f5251c;
        if (lVar12 != null) {
            i9 = lVar12.f5256i;
            lVar3.f5251c = lVar12;
            lVar12.f5249a = lVar3;
            lVar.f5251c = null;
        }
        lVar3.f5256i = Math.max(i6, i9) + 1;
        d(lVar, lVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f5260c = null;
        this.f5261d = 0;
        this.f5262e++;
        l lVar = this.f5263f;
        lVar.f5253e = lVar;
        lVar.f5252d = lVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        l lVarA = null;
        if (obj != null) {
            try {
                lVarA = a(false, obj);
            } catch (ClassCastException unused) {
            }
        }
        return lVarA != null;
    }

    public final void d(l lVar, l lVar2) {
        l lVar3 = lVar.f5249a;
        lVar.f5249a = null;
        if (lVar2 != null) {
            lVar2.f5249a = lVar3;
        }
        if (lVar3 == null) {
            this.f5260c = lVar2;
        } else if (lVar3.f5250b == lVar) {
            lVar3.f5250b = lVar2;
        } else {
            lVar3.f5251c = lVar2;
        }
    }

    public final void e(l lVar) {
        l lVar2 = lVar.f5250b;
        l lVar3 = lVar.f5251c;
        l lVar4 = lVar3.f5250b;
        l lVar5 = lVar3.f5251c;
        lVar.f5251c = lVar4;
        if (lVar4 != null) {
            lVar4.f5249a = lVar;
        }
        d(lVar, lVar3);
        lVar3.f5250b = lVar;
        lVar.f5249a = lVar3;
        int iMax = Math.max(lVar2 != null ? lVar2.f5256i : 0, lVar4 != null ? lVar4.f5256i : 0) + 1;
        lVar.f5256i = iMax;
        lVar3.f5256i = Math.max(iMax, lVar5 != null ? lVar5.f5256i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        k kVar = this.f5264g;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(0, this);
        this.f5264g = kVar2;
        return kVar2;
    }

    public final void f(l lVar) {
        l lVar2 = lVar.f5250b;
        l lVar3 = lVar.f5251c;
        l lVar4 = lVar2.f5250b;
        l lVar5 = lVar2.f5251c;
        lVar.f5250b = lVar5;
        if (lVar5 != null) {
            lVar5.f5249a = lVar;
        }
        d(lVar, lVar2);
        lVar2.f5251c = lVar;
        lVar.f5249a = lVar2;
        int iMax = Math.max(lVar3 != null ? lVar3.f5256i : 0, lVar5 != null ? lVar5.f5256i : 0) + 1;
        lVar.f5256i = iMax;
        lVar2.f5256i = Math.max(iMax, lVar4 != null ? lVar4.f5256i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        l lVarA;
        if (obj != null) {
            try {
                lVarA = a(false, obj);
            } catch (ClassCastException unused) {
                lVarA = null;
            }
        } else {
            lVarA = null;
        }
        if (lVarA != null) {
            return lVarA.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        k kVar = this.h;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(1, this);
        this.h = kVar2;
        return kVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f5259b) {
            throw new NullPointerException("value == null");
        }
        l lVarA = a(true, obj);
        Object obj3 = lVarA.h;
        lVarA.h = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        l lVarA;
        if (obj != null) {
            try {
                lVarA = a(false, obj);
            } catch (ClassCastException unused) {
                lVarA = null;
            }
        } else {
            lVarA = null;
        }
        if (lVarA != null) {
            c(lVarA, true);
        }
        if (lVarA != null) {
            return lVarA.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f5261d;
    }
}
