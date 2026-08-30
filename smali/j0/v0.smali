###### Class j0.v0 (j0.v0)
.class public Lj0/v0;
.super Lj0/u0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public m:Lc0/c;


# direct methods
.method public constructor <init>(Lj0/b1;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/u0;-><init>(Lj0/b1;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj0/v0;->m:Lc0/c;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b()Lj0/b1;
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Lj0/b1;
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final h()Lc0/c;
    .registers 5

    .line 1
    iget-object v0, p0, Lj0/v0;->m:Lc0/c;

    .line 2
    .line 3
    if-nez v0, :cond_1c

    .line 4
    .line 5
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v2, v3, v0}, Lc0/c;->a(IIII)Lc0/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lj0/v0;->m:Lc0/c;

    .line 28
    .line 29
    :cond_1c
    iget-object v0, p0, Lj0/v0;->m:Lc0/c;

    .line 30
    .line 31
    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(Lc0/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj0/v0;->m:Lc0/c;

    .line 2
    .line 3
    return-void
.end method
