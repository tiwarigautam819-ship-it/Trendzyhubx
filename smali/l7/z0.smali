###### Class l7.z0 (l7.z0)
.class public final Ll7/z0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/i;
.implements Lu6/j;


# static fields
.field public static final a:Ll7/z0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll7/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll7/z0;->a:Ll7/z0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-interface {p2, p1, p0}, Lc7/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g(Lu6/j;)Lu6/i;
    .registers 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_c

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public final getKey()Lu6/j;
    .registers 1

    .line 1
    return-object p0
.end method

.method public final o(Lu6/j;)Lu6/k;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lx2/a;->j(Lu6/i;Lu6/j;)Lu6/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final s(Lu6/k;)Lu6/k;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lx2/a;->m(Lu6/i;Lu6/k;)Lu6/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
