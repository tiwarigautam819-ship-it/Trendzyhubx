###### Class g.s0 (g.s0)
.class public final Lg/s0;
.super Lg/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm/c;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Lm/f1;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Lg/r0;

.field public j:Lg/r0;

.field public k:Lcom/google/android/gms/internal/measurement/y4;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Lk/k;

.field public t:Z

.field public u:Z

.field public final v:Lg/q0;

.field public final w:Lg/q0;

.field public final x:Lo5/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg/s0;->y:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lg/s0;->z:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/s0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lg/s0;->n:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lg/s0;->o:Z

    .line 6
    iput-boolean v0, p0, Lg/s0;->r:Z

    .line 7
    new-instance v0, Lg/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/q0;-><init>(Lg/s0;I)V

    iput-object v0, p0, Lg/s0;->v:Lg/q0;

    .line 8
    new-instance v0, Lg/q0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/q0;-><init>(Lg/s0;I)V

    iput-object v0, p0, Lg/s0;->w:Lg/q0;

    .line 9
    new-instance v0, Lo5/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/s0;->x:Lo5/c;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lg/s0;->q(Landroid/view/View;)V

    if-nez p2, :cond_46

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/s0;->g:Landroid/view/View;

    :cond_46
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/s0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lg/s0;->n:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lg/s0;->o:Z

    .line 19
    iput-boolean v0, p0, Lg/s0;->r:Z

    .line 20
    new-instance v0, Lg/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/q0;-><init>(Lg/s0;I)V

    iput-object v0, p0, Lg/s0;->v:Lg/q0;

    .line 21
    new-instance v0, Lg/q0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/q0;-><init>(Lg/s0;I)V

    iput-object v0, p0, Lg/s0;->w:Lg/q0;

    .line 22
    new-instance v0, Lo5/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/s0;->x:Lo5/c;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/s0;->q(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_24

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroidx/appcompat/widget/i;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->U:Landroidx/appcompat/widget/h;

    .line 11
    .line 12
    if-eqz v1, :cond_24

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/appcompat/widget/h;->b:Ll/p;

    .line 15
    .line 16
    if-eqz v1, :cond_24

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->U:Landroidx/appcompat/widget/h;

    .line 23
    .line 24
    if-nez v0, :cond_1b

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iget-object v0, v0, Landroidx/appcompat/widget/h;->b:Ll/p;

    .line 29
    .line 30
    :goto_1d
    if-eqz v0, :cond_22

    .line 31
    .line 32
    invoke-virtual {v0}, Ll/p;->collapseActionView()Z

    .line 33
    .line 34
    .line 35
    :cond_22
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public final c(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lg/s0;->l:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_f

    .line 6
    :cond_5
    iput-boolean p1, p0, Lg/s0;->l:Z

    .line 7
    .line 8
    iget-object p1, p0, Lg/s0;->m:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 4
    .line 5
    iget v0, v0, Landroidx/appcompat/widget/i;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public final e()Landroid/content/Context;
    .registers 5

    .line 1
    iget-object v0, p0, Lg/s0;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_28

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lg/s0;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04000a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_24

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Lg/s0;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lg/s0;->b:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_28

    .line 37
    :cond_24
    iget-object v0, p0, Lg/s0;->a:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Lg/s0;->b:Landroid/content/Context;

    .line 40
    .line 41
    :cond_28
    :goto_28
    iget-object v0, p0, Lg/s0;->b:Landroid/content/Context;

    .line 42
    .line 43
    return-object v0
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/s0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x7f050000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lg/s0;->r(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lg/s0;->i:Lg/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_23

    .line 7
    :cond_6
    iget-object v0, v0, Lg/r0;->d:Ll/n;

    .line 8
    .line 9
    if-eqz v0, :cond_23

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v2, v3, :cond_1a

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v3, v1

    .line 28
    :goto_1b
    invoke-virtual {v0, v3}, Ll/n;->setQwertyMode(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2, v1}, Ll/n;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_23
    :goto_23
    return v1
.end method

.method public final l(Z)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lg/s0;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    move p1, v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    iget-object v1, p0, Lg/s0;->e:Lm/f1;

    .line 12
    .line 13
    check-cast v1, Landroidx/appcompat/widget/i;

    .line 14
    .line 15
    iget v2, v1, Landroidx/appcompat/widget/i;->b:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lg/s0;->h:Z

    .line 19
    .line 20
    and-int/2addr p1, v0

    .line 21
    and-int/lit8 v0, v2, -0x5

    .line 22
    .line 23
    or-int/2addr p1, v0

    .line 24
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/i;->a(I)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public final m(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lg/s0;->t:Z

    .line 2
    .line 3
    if-nez p1, :cond_b

    .line 4
    .line 5
    iget-object p1, p0, Lg/s0;->s:Lk/k;

    .line 6
    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    invoke-virtual {p1}, Lk/k;->a()V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/appcompat/widget/i;->g:Z

    .line 6
    .line 7
    if-nez v1, :cond_20

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10
    .line 11
    iput-object p1, v0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget v2, v0, Landroidx/appcompat/widget/i;->b:I

    .line 14
    .line 15
    and-int/lit8 v2, v2, 0x8

    .line 16
    .line 17
    if-eqz v2, :cond_20

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/appcompat/widget/i;->g:Z

    .line 23
    .line 24
    if-eqz v0, :cond_20

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_20
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/measurement/y4;)Lk/b;
    .registers 4

    .line 1
    iget-object v0, p0, Lg/s0;->i:Lg/r0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lg/r0;->a()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iget-object v0, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lg/r0;

    .line 20
    .line 21
    iget-object v1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1, p1}, Lg/r0;-><init>(Lg/s0;Landroid/content/Context;Lcom/google/android/gms/internal/measurement/y4;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lg/r0;->d:Ll/n;

    .line 31
    .line 32
    invoke-virtual {p1}, Ll/n;->w()V

    .line 33
    .line 34
    .line 35
    :try_start_22
    iget-object v1, v0, Lg/r0;->e:Lcom/google/android/gms/internal/measurement/y4;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lk/a;

    .line 40
    .line 41
    invoke-interface {v1, v0, p1}, Lk/a;->e(Lk/b;Landroid/view/Menu;)Z

    .line 42
    .line 43
    .line 44
    move-result v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_42

    .line 45
    invoke-virtual {p1}, Ll/n;->v()V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_40

    .line 49
    .line 50
    iput-object v0, p0, Lg/s0;->i:Lg/r0;

    .line 51
    .line 52
    invoke-virtual {v0}, Lg/r0;->i()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lk/b;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lg/s0;->p(Z)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    return-object p1

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    invoke-virtual {p1}, Ll/n;->v()V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final p(Z)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_15

    .line 3
    .line 4
    iget-boolean v1, p0, Lg/s0;->q:Z

    .line 5
    .line 6
    if-nez v1, :cond_25

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lg/s0;->q:Z

    .line 10
    .line 11
    iget-object v2, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_11

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_11
    invoke-virtual {p0, v0}, Lg/s0;->s(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_25

    .line 22
    :cond_15
    iget-boolean v1, p0, Lg/s0;->q:Z

    .line 23
    .line 24
    if-eqz v1, :cond_25

    .line 25
    .line 26
    iput-boolean v0, p0, Lg/s0;->q:Z

    .line 27
    .line 28
    iget-object v1, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_22

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_22
    invoke-virtual {p0, v0}, Lg/s0;->s(Z)V

    .line 36
    .line 37
    .line 38
    :cond_25
    :goto_25
    iget-object v1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x8

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    if-eqz v1, :cond_b0

    .line 48
    .line 49
    const-wide/16 v4, 0xc8

    .line 50
    .line 51
    const-wide/16 v6, 0x64

    .line 52
    .line 53
    if-eqz p1, :cond_56

    .line 54
    .line 55
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 56
    .line 57
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 58
    .line 59
    iget-object v1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 60
    .line 61
    invoke-static {v1}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lj0/o0;->a(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6, v7}, Lj0/o0;->c(J)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lk/j;

    .line 73
    .line 74
    invoke-direct {v2, p1, v3}, Lk/j;-><init>(Landroidx/appcompat/widget/i;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lj0/o0;->d(Lj0/p0;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lj0/o0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_79

    .line 87
    :cond_56
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 88
    .line 89
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 90
    .line 91
    iget-object v1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 92
    .line 93
    invoke-static {v1}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/high16 v3, 0x3f800000    # 1.0f

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lj0/o0;->a(F)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v4, v5}, Lj0/o0;->c(J)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Lk/j;

    .line 106
    .line 107
    invoke-direct {v3, p1, v0}, Lk/j;-><init>(Landroidx/appcompat/widget/i;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lj0/o0;->d(Lj0/p0;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 114
    .line 115
    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->i(IJ)Lj0/o0;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    move-object v8, v1

    .line 120
    move-object v1, p1

    .line 121
    move-object p1, v8

    .line 122
    :goto_79
    new-instance v0, Lk/k;

    .line 123
    .line 124
    invoke-direct {v0}, Lk/k;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lk/k;->a:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v1, v1, Lj0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroid/view/View;

    .line 139
    .line 140
    if-eqz v1, :cond_96

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    goto :goto_98

    .line 151
    :cond_96
    const-wide/16 v3, 0x0

    .line 152
    .line 153
    :goto_98
    iget-object v1, p1, Lj0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/view/View;

    .line 160
    .line 161
    if-eqz v1, :cond_a9

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 168
    .line 169
    .line 170
    :cond_a9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lk/k;->b()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_b0
    if-eqz p1, :cond_c1

    .line 178
    .line 179
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 180
    .line 181
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 182
    .line 183
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 184
    .line 185
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_c1
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 195
    .line 196
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 197
    .line 198
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final q(Landroid/view/View;)V
    .registers 8

    .line 1
    const v0, 0x7f09006e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_10

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lm/c;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    const v0, 0x7f090028

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lm/f1;

    .line 25
    .line 26
    if-eqz v1, :cond_1e

    .line 27
    .line 28
    check-cast v0, Lm/f1;

    .line 29
    .line 30
    goto :goto_28

    .line 31
    :cond_1e
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_cd

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lm/f1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_28
    iput-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 42
    .line 43
    const v0, 0x7f090030

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f09002a

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 66
    .line 67
    if-eqz v0, :cond_bb

    .line 68
    .line 69
    iget-object v1, p0, Lg/s0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_bb

    .line 72
    .line 73
    if-eqz p1, :cond_bb

    .line 74
    .line 75
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 76
    .line 77
    iget-object p1, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lg/s0;->a:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 86
    .line 87
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 88
    .line 89
    iget v0, v0, Landroidx/appcompat/widget/i;->b:I

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_62

    .line 96
    .line 97
    move v0, v1

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v0, v2

    .line 100
    :goto_63
    if-eqz v0, :cond_67

    .line 101
    .line 102
    iput-boolean v1, p0, Lg/s0;->h:Z

    .line 103
    .line 104
    :cond_67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 109
    .line 110
    const/16 v4, 0xe

    .line 111
    .line 112
    iget-object v0, p0, Lg/s0;->e:Lm/f1;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/high16 v0, 0x7f050000

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Lg/s0;->r(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lg/s0;->a:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v0, Lf/a;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040005

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a7

    .line 147
    .line 148
    iget-object v0, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 149
    .line 150
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    .line 151
    .line 152
    if-eqz v3, :cond_9f

    .line 153
    .line 154
    iput-boolean v1, p0, Lg/s0;->u:Z

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_a7

    .line 160
    :cond_9f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_a7
    :goto_a7
    const/16 v0, 0xc

    .line 169
    .line 170
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b7

    .line 175
    .line 176
    int-to-float v0, v0

    .line 177
    iget-object v1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 178
    .line 179
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 180
    .line 181
    invoke-static {v1, v0}, Lj0/d0;->h(Landroid/view/View;F)V

    .line 182
    .line 183
    .line 184
    :cond_b7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_bb
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-class v0, Lg/s0;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, " can only be used with a compatible window decor layout"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_cd
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    if-eqz v0, :cond_da

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_dc

    .line 219
    :cond_da
    const-string v0, "null"

    .line 220
    .line 221
    :goto_dc
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
.end method

.method public final r(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_10

    .line 3
    .line 4
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 5
    .line 6
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/c;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/c;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 23
    .line 24
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lg/s0;->e:Lm/f1;

    .line 35
    .line 36
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final s(Z)V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lg/s0;->p:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lg/s0;->q:Z

    .line 4
    .line 5
    const-wide/16 v2, 0xfa

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/high16 v5, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iget-object v6, p0, Lg/s0;->x:Lo5/c;

    .line 11
    .line 12
    iget-object v7, p0, Lg/s0;->g:Landroid/view/View;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    if-eqz v1, :cond_13

    .line 17
    .line 18
    goto/16 :goto_ac

    .line 19
    .line 20
    :cond_13
    if-eqz v0, :cond_ac

    .line 21
    .line 22
    iget-boolean v0, p0, Lg/s0;->r:Z

    .line 23
    .line 24
    if-eqz v0, :cond_167

    .line 25
    .line 26
    iput-boolean v9, p0, Lg/s0;->r:Z

    .line 27
    .line 28
    iget-object v0, p0, Lg/s0;->s:Lk/k;

    .line 29
    .line 30
    if-eqz v0, :cond_22

    .line 31
    .line 32
    invoke-virtual {v0}, Lk/k;->a()V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget v0, p0, Lg/s0;->n:I

    .line 36
    .line 37
    iget-object v1, p0, Lg/s0;->v:Lg/q0;

    .line 38
    .line 39
    if-nez v0, :cond_a8

    .line 40
    .line 41
    iget-boolean v0, p0, Lg/s0;->t:Z

    .line 42
    .line 43
    if-nez v0, :cond_2e

    .line 44
    .line 45
    if-eqz p1, :cond_a8

    .line 46
    .line 47
    :cond_2e
    iget-object v0, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lk/k;

    .line 58
    .line 59
    invoke-direct {v0}, Lk/k;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    neg-int v5, v5

    .line 69
    int-to-float v5, v5

    .line 70
    if-eqz p1, :cond_54

    .line 71
    .line 72
    filled-new-array {v9, v9}, [I

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v9, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 77
    .line 78
    invoke-virtual {v9, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 79
    .line 80
    .line 81
    aget p1, p1, v8

    .line 82
    .line 83
    int-to-float p1, p1

    .line 84
    sub-float/2addr v5, p1

    .line 85
    :cond_54
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 86
    .line 87
    invoke-static {p1}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v5}, Lj0/o0;->e(F)V

    .line 92
    .line 93
    .line 94
    iget-object v8, p1, Lj0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Landroid/view/View;

    .line 101
    .line 102
    if-eqz v8, :cond_75

    .line 103
    .line 104
    if-eqz v6, :cond_6e

    .line 105
    .line 106
    new-instance v4, Lj0/m0;

    .line 107
    .line 108
    invoke-direct {v4, v6, v8}, Lj0/m0;-><init>(Lo5/c;Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_6e
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    :cond_75
    iget-boolean v4, v0, Lk/k;->e:Z

    .line 119
    .line 120
    iget-object v6, v0, Lk/k;->a:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-nez v4, :cond_7e

    .line 123
    .line 124
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_7e
    iget-boolean p1, p0, Lg/s0;->o:Z

    .line 128
    .line 129
    if-eqz p1, :cond_92

    .line 130
    .line 131
    if-eqz v7, :cond_92

    .line 132
    .line 133
    invoke-static {v7}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v5}, Lj0/o0;->e(F)V

    .line 138
    .line 139
    .line 140
    iget-boolean v4, v0, Lk/k;->e:Z

    .line 141
    .line 142
    if-nez v4, :cond_92

    .line 143
    .line 144
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_92
    iget-boolean p1, v0, Lk/k;->e:Z

    .line 148
    .line 149
    if-nez p1, :cond_9a

    .line 150
    .line 151
    sget-object v4, Lg/s0;->y:Landroid/view/animation/AccelerateInterpolator;

    .line 152
    .line 153
    iput-object v4, v0, Lk/k;->c:Landroid/view/animation/Interpolator;

    .line 154
    .line 155
    :cond_9a
    if-nez p1, :cond_9e

    .line 156
    .line 157
    iput-wide v2, v0, Lk/k;->b:J

    .line 158
    .line 159
    :cond_9e
    if-nez p1, :cond_a2

    .line 160
    .line 161
    iput-object v1, v0, Lk/k;->d:Lj0/p0;

    .line 162
    .line 163
    :cond_a2
    iput-object v0, p0, Lg/s0;->s:Lk/k;

    .line 164
    .line 165
    invoke-virtual {v0}, Lk/k;->b()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a8
    invoke-virtual {v1}, Lg/q0;->a()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_ac
    :goto_ac
    iget-boolean v0, p0, Lg/s0;->r:Z

    .line 174
    .line 175
    if-nez v0, :cond_167

    .line 176
    .line 177
    iput-boolean v8, p0, Lg/s0;->r:Z

    .line 178
    .line 179
    iget-object v0, p0, Lg/s0;->s:Lk/k;

    .line 180
    .line 181
    if-eqz v0, :cond_b9

    .line 182
    .line 183
    invoke-virtual {v0}, Lk/k;->a()V

    .line 184
    .line 185
    .line 186
    :cond_b9
    iget-object v0, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 187
    .line 188
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget v0, p0, Lg/s0;->n:I

    .line 192
    .line 193
    iget-object v1, p0, Lg/s0;->w:Lg/q0;

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    if-nez v0, :cond_148

    .line 197
    .line 198
    iget-boolean v0, p0, Lg/s0;->t:Z

    .line 199
    .line 200
    if-nez v0, :cond_cb

    .line 201
    .line 202
    if-eqz p1, :cond_148

    .line 203
    .line 204
    :cond_cb
    iget-object v0, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 205
    .line 206
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    neg-int v0, v0

    .line 216
    int-to-float v0, v0

    .line 217
    if-eqz p1, :cond_e7

    .line 218
    .line 219
    filled-new-array {v9, v9}, [I

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object v5, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 224
    .line 225
    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 226
    .line 227
    .line 228
    aget p1, p1, v8

    .line 229
    .line 230
    int-to-float p1, p1

    .line 231
    sub-float/2addr v0, p1

    .line 232
    :cond_e7
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 235
    .line 236
    .line 237
    new-instance p1, Lk/k;

    .line 238
    .line 239
    invoke-direct {p1}, Lk/k;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v5, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 243
    .line 244
    invoke-static {v5}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v5, v10}, Lj0/o0;->e(F)V

    .line 249
    .line 250
    .line 251
    iget-object v8, v5, Lj0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    check-cast v8, Landroid/view/View;

    .line 258
    .line 259
    if-eqz v8, :cond_112

    .line 260
    .line 261
    if-eqz v6, :cond_10b

    .line 262
    .line 263
    new-instance v4, Lj0/m0;

    .line 264
    .line 265
    invoke-direct {v4, v6, v8}, Lj0/m0;-><init>(Lo5/c;Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    :cond_10b
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    :cond_112
    iget-boolean v4, p1, Lk/k;->e:Z

    .line 276
    .line 277
    iget-object v6, p1, Lk/k;->a:Ljava/util/ArrayList;

    .line 278
    .line 279
    if-nez v4, :cond_11b

    .line 280
    .line 281
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :cond_11b
    iget-boolean v4, p0, Lg/s0;->o:Z

    .line 285
    .line 286
    if-eqz v4, :cond_132

    .line 287
    .line 288
    if-eqz v7, :cond_132

    .line 289
    .line 290
    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 291
    .line 292
    .line 293
    invoke-static {v7}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0, v10}, Lj0/o0;->e(F)V

    .line 298
    .line 299
    .line 300
    iget-boolean v4, p1, Lk/k;->e:Z

    .line 301
    .line 302
    if-nez v4, :cond_132

    .line 303
    .line 304
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    :cond_132
    iget-boolean v0, p1, Lk/k;->e:Z

    .line 308
    .line 309
    if-nez v0, :cond_13a

    .line 310
    .line 311
    sget-object v4, Lg/s0;->z:Landroid/view/animation/DecelerateInterpolator;

    .line 312
    .line 313
    iput-object v4, p1, Lk/k;->c:Landroid/view/animation/Interpolator;

    .line 314
    .line 315
    :cond_13a
    if-nez v0, :cond_13e

    .line 316
    .line 317
    iput-wide v2, p1, Lk/k;->b:J

    .line 318
    .line 319
    :cond_13e
    if-nez v0, :cond_142

    .line 320
    .line 321
    iput-object v1, p1, Lk/k;->d:Lj0/p0;

    .line 322
    .line 323
    :cond_142
    iput-object p1, p0, Lg/s0;->s:Lk/k;

    .line 324
    .line 325
    invoke-virtual {p1}, Lk/k;->b()V

    .line 326
    .line 327
    .line 328
    goto :goto_15e

    .line 329
    :cond_148
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 330
    .line 331
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 335
    .line 336
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 337
    .line 338
    .line 339
    iget-boolean p1, p0, Lg/s0;->o:Z

    .line 340
    .line 341
    if-eqz p1, :cond_15b

    .line 342
    .line 343
    if-eqz v7, :cond_15b

    .line 344
    .line 345
    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 346
    .line 347
    .line 348
    :cond_15b
    invoke-virtual {v1}, Lg/q0;->a()V

    .line 349
    .line 350
    .line 351
    :goto_15e
    iget-object p1, p0, Lg/s0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 352
    .line 353
    if-eqz p1, :cond_167

    .line 354
    .line 355
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 356
    .line 357
    invoke-static {p1}, Lj0/b0;->c(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    :cond_167
    return-void
.end method

###### Class j0.m0 (j0.m0)
.class public final synthetic Lj0/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lo5/c;


# direct methods
.method public synthetic constructor <init>(Lo5/c;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/m0;->a:Lo5/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lj0/m0;->a:Lo5/c;

    .line 2
    .line 3
    iget-object p1, p1, Lo5/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lg/s0;

    .line 6
    .line 7
    iget-object p1, p1, Lg/s0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
