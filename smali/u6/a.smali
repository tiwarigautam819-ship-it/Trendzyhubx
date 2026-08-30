###### Class u6.a (u6.a)
.class public abstract Lu6/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/i;


# instance fields
.field public final a:Lu6/j;


# direct methods
.method public constructor <init>(Lu6/j;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu6/a;->a:Lu6/j;

    .line 5
    .line 6
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

.method public g(Lu6/j;)Lu6/i;
    .registers 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu6/a;->getKey()Lu6/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_10

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public final getKey()Lu6/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lu6/a;->a:Lu6/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Lu6/j;)Lu6/k;
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
