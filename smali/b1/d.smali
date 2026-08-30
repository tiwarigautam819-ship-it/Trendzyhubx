###### Class b1.d (b1.d)
.class public final Lb1/d;
.super Lb1/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lc1/d;


# direct methods
.method public constructor <init>(Lc1/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/d;->a:Lc1/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ls4/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    sget-object v0, Ll7/x;->a:Lq7/d;

    .line 2
    .line 3
    invoke-static {v0}, Ll7/r;->a(Lu6/k;)Lp7/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lb1/a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lb1/a;-><init>(Lb1/d;Lu6/f;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ll7/r;->b(Lp7/d;Lc7/p;)Ll7/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, La2/c;->a(Ll7/u;)Lu/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public b(Landroid/net/Uri;)Ls4/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    const-string v0, "trigger"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll7/x;->a:Lq7/d;

    .line 7
    .line 8
    invoke-static {v0}, Ll7/r;->a(Lu6/k;)Lp7/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lb1/c;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lb1/c;-><init>(Lb1/d;Landroid/net/Uri;Lu6/f;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ll7/r;->b(Lp7/d;Lc7/p;)Ll7/u;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, La2/c;->a(Ll7/u;)Lu/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public c(Lc1/a;)Ls4/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a;",
            ")",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    const-string v0, "deletionRequest"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public d(Landroid/net/Uri;Landroid/view/InputEvent;)Ls4/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    const-string v0, "attributionSource"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll7/x;->a:Lq7/d;

    .line 7
    .line 8
    invoke-static {v0}, Ll7/r;->a(Lu6/k;)Lp7/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lb1/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, p2, v2}, Lb1/b;-><init>(Lb1/d;Landroid/net/Uri;Landroid/view/InputEvent;Lu6/f;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ll7/r;->b(Lp7/d;Lc7/p;)Ll7/u;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, La2/c;->a(Ll7/u;)Lu/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public e(Lc1/e;)Ls4/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e;",
            ")",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public f(Lc1/f;)Ls4/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/f;",
            ")",
            "Ls4/c;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
