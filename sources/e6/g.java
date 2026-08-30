package e6;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends e5.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2431c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(int i6) {
        super(15);
        this.f2431c = i6;
    }

    @Override // e5.e
    public void k(c cVar) {
        switch (this.f2431c) {
            case 1:
                StringBuilder sb = new StringBuilder();
                while (true) {
                    if (cVar.b()) {
                        char cA = cVar.a();
                        cVar.f2411d++;
                        m(cA, sb);
                        if (sb.length() % 3 == 0) {
                            e5.e.v(cVar, sb);
                            if (h8.b.m(cVar.f2408a, cVar.f2411d, 3) != 3) {
                                cVar.f2412e = 0;
                            }
                        }
                    }
                }
                q(cVar, sb);
                break;
            default:
                super.k(cVar);
                break;
        }
    }

    @Override // e5.e
    public final int m(char c8, StringBuilder sb) {
        switch (this.f2431c) {
            case 0:
                if (c8 == ' ') {
                    sb.append((char) 3);
                    return 1;
                }
                if (c8 >= '0' && c8 <= '9') {
                    sb.append((char) (c8 - ','));
                    return 1;
                }
                if (c8 >= 'a' && c8 <= 'z') {
                    sb.append((char) (c8 - 'S'));
                    return 1;
                }
                if (c8 < ' ') {
                    sb.append((char) 0);
                    sb.append(c8);
                } else if (c8 >= '!' && c8 <= '/') {
                    sb.append((char) 1);
                    sb.append((char) (c8 - '!'));
                } else if (c8 >= ':' && c8 <= '@') {
                    sb.append((char) 1);
                    sb.append((char) (c8 - '+'));
                } else if (c8 >= '[' && c8 <= '_') {
                    sb.append((char) 1);
                    sb.append((char) (c8 - 'E'));
                } else if (c8 == '`') {
                    sb.append((char) 2);
                    sb.append((char) (c8 - '`'));
                } else if (c8 >= 'A' && c8 <= 'Z') {
                    sb.append((char) 2);
                    sb.append((char) (c8 - '@'));
                } else {
                    if (c8 < '{' || c8 > 127) {
                        sb.append("\u0001\u001e");
                        return m((char) (c8 - 128), sb) + 2;
                    }
                    sb.append((char) 2);
                    sb.append((char) (c8 - '`'));
                }
                return 2;
            default:
                if (c8 == '\r') {
                    sb.append((char) 0);
                } else if (c8 == ' ') {
                    sb.append((char) 3);
                } else if (c8 == '*') {
                    sb.append((char) 1);
                } else if (c8 == '>') {
                    sb.append((char) 2);
                } else if (c8 >= '0' && c8 <= '9') {
                    sb.append((char) (c8 - ','));
                } else {
                    if (c8 < 'A' || c8 > 'Z') {
                        h8.b.h(c8);
                        throw null;
                    }
                    sb.append((char) (c8 - '3'));
                }
                return 1;
        }
    }

    @Override // e5.e
    public final int p() {
        switch (this.f2431c) {
            case 0:
                return 2;
            default:
                return 3;
        }
    }

    @Override // e5.e
    public void q(c cVar, StringBuilder sb) {
        switch (this.f2431c) {
            case 1:
                StringBuilder sb2 = cVar.f2410c;
                cVar.c(sb2.length());
                int length = cVar.f2413f.f2421b - sb2.length();
                cVar.f2411d -= sb.length();
                String str = cVar.f2408a;
                if ((str.length() - cVar.f2414g) - cVar.f2411d > 1 || length > 1 || (str.length() - cVar.f2414g) - cVar.f2411d != length) {
                    cVar.d((char) 254);
                }
                if (cVar.f2412e < 0) {
                    cVar.f2412e = 0;
                }
                break;
            default:
                super.q(cVar, sb);
                break;
        }
    }
}
