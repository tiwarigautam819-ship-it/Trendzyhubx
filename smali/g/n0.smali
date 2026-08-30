###### Class g.n0 (g.n0)
.class public final Lg/n0;
.super Lg/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroidx/appcompat/widget/i;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Lg/l0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lg/a0;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/n0;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/p;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lg/n0;->h:Landroidx/fragment/app/p;

    .line 18
    .line 19
    new-instance v0, Lg/l0;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lg/l0;-><init>(Lg/n0;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroidx/appcompat/widget/i;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/i;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 36
    .line 37
    iput-object p3, v1, Landroidx/appcompat/widget/i;->k:Landroid/view/Window$Callback;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Lm/b3;)V

    .line 40
    .line 41
    .line 42
    iget-boolean p3, v1, Landroidx/appcompat/widget/i;->g:Z

    .line 43
    .line 44
    if-nez p3, :cond_43

    .line 45
    .line 46
    iput-object p2, v1, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 47
    .line 48
    iget p3, v1, Landroidx/appcompat/widget/i;->b:I

    .line 49
    .line 50
    and-int/lit8 p3, p3, 0x8

    .line 51
    .line 52
    if-eqz p3, :cond_43

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-boolean p3, v1, Landroidx/appcompat/widget/i;->g:Z

    .line 58
    .line 59
    if-eqz p3, :cond_43

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, p2}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    new-instance p1, Lg/l0;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lg/l0;-><init>(Lg/n0;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lg/n0;->c:Lg/l0;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    .line 7
    if-eqz v0, :cond_14

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 10
    .line 11
    if-eqz v0, :cond_14

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->U:Landroidx/appcompat/widget/h;

    .line 6
    .line 7
    if-eqz v0, :cond_16

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/h;->b:Ll/p;

    .line 10
    .line 11
    if-eqz v1, :cond_16

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_f
    if-eqz v1, :cond_14

    .line 17
    .line 18
    invoke-virtual {v1}, Ll/p;->collapseActionView()Z

    .line 19
    .line 20
    .line 21
    :cond_14
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final c(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lg/n0;->f:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_f

    .line 6
    :cond_5
    iput-boolean p1, p0, Lg/n0;->f:Z

    .line 7
    .line 8
    iget-object p1, p0, Lg/n0;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_10

    .line 15
    .line 16
    :goto_f
    return-void

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/ClassCastException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget v0, v0, Landroidx/appcompat/widget/i;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public final e()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v2, p0, Lg/n0;->h:Landroidx/fragment/app/p;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    sget-object v1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public final g()V
    .registers 1

    .line 1
    return-void
.end method

.method public final h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    iget-object v1, p0, Lg/n0;->h:Landroidx/fragment/app/p;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lg/n0;->p()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_20

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v3, :cond_17

    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v3, v1

    .line 25
    :goto_18
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_20
    return v1
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0}, Lg/n0;->k()Z

    .line 9
    .line 10
    .line 11
    :cond_a
    return v0
.end method

.method public final k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final l(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public final m(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/i;->g:Z

    .line 4
    .line 5
    if-nez v1, :cond_1e

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    iput-object p1, v0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget v2, v0, Landroidx/appcompat/widget/i;->b:I

    .line 12
    .line 13
    and-int/lit8 v2, v2, 0x8

    .line 14
    .line 15
    if-eqz v2, :cond_1e

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v0, Landroidx/appcompat/widget/i;->g:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1e

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public final p()Landroid/view/Menu;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lg/n0;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 4
    .line 5
    if-nez v0, :cond_22

    .line 6
    .line 7
    new-instance v0, Lg/m0;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lg/m0;-><init>(Lg/n0;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lo5/c;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    invoke-direct {v2, v3, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 19
    .line 20
    iput-object v0, v3, Landroidx/appcompat/widget/Toolbar;->V:Lg/m0;

    .line 21
    .line 22
    iput-object v2, v3, Landroidx/appcompat/widget/Toolbar;->W:Lo5/c;

    .line 23
    .line 24
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 25
    .line 26
    if-eqz v3, :cond_1f

    .line 27
    .line 28
    iput-object v0, v3, Landroidx/appcompat/widget/ActionMenuView;->C:Lg/m0;

    .line 29
    .line 30
    iput-object v2, v3, Landroidx/appcompat/widget/ActionMenuView;->D:Ll/l;

    .line 31
    .line 32
    :cond_1f
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lg/n0;->e:Z

    .line 34
    .line 35
    :cond_22
    iget-object v0, v1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
