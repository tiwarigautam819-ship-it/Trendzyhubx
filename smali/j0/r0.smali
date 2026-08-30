###### Class j0.r0 (j0.r0)
.class public Lj0/r0;
.super Lj0/t0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj0/t0;-><init>()V

    .line 2
    invoke-static {}, La4/a;->d()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lj0/r0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lj0/b1;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lj0/t0;-><init>(Lj0/b1;)V

    .line 4
    invoke-virtual {p1}, Lj0/b1;->f()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 5
    invoke-static {p1}, La4/a;->e(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_12

    .line 6
    :cond_e
    invoke-static {}, La4/a;->d()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lj0/r0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lj0/b1;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lj0/t0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj0/r0;->a:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, La4/a;->f(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, v0, Lj0/b1;->a:Lj0/z0;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lj0/z0;->o([Lc0/c;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public c(Lc0/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/r0;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc0/c;->c()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, La4/a;->w(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Lc0/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lj0/r0;->a:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc0/c;->c()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, La4/a;->m(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
