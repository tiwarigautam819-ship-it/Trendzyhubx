###### Class j0.x0 (j0.x0)
.class public Lj0/x0;
.super Lj0/w0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public n:Lc0/c;

.field public o:Lc0/c;

.field public p:Lc0/c;


# direct methods
.method public constructor <init>(Lj0/b1;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/w0;-><init>(Lj0/b1;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj0/x0;->n:Lc0/c;

    .line 6
    .line 7
    iput-object p1, p0, Lj0/x0;->o:Lc0/c;

    .line 8
    .line 9
    iput-object p1, p0, Lj0/x0;->p:Lc0/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public g()Lc0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/x0;->o:Lc0/c;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, La4/a;->t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lc0/c;->b(Landroid/graphics/Insets;)Lc0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lj0/x0;->o:Lc0/c;

    .line 16
    .line 17
    :cond_10
    iget-object v0, p0, Lj0/x0;->o:Lc0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public i()Lc0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/x0;->n:Lc0/c;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, La4/a;->y(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lc0/c;->b(Landroid/graphics/Insets;)Lc0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lj0/x0;->n:Lc0/c;

    .line 16
    .line 17
    :cond_10
    iget-object v0, p0, Lj0/x0;->n:Lc0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public k()Lc0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/x0;->p:Lc0/c;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, La4/a;->b(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lc0/c;->b(Landroid/graphics/Insets;)Lc0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lj0/x0;->p:Lc0/c;

    .line 16
    .line 17
    :cond_10
    iget-object v0, p0, Lj0/x0;->p:Lc0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public l(IIII)Lj0/b1;
    .registers 6

    .line 1
    iget-object v0, p0, Lj0/u0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, La4/a;->g(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lc0/c;)V
    .registers 2

    .line 1
    return-void
.end method
