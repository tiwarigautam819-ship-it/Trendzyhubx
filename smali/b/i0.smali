###### Class b.i0 (b.i0)
.class public final Lb/i0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ls6/e;

.field public c:Lb/y;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb/i0;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Ls6/e;

    .line 7
    .line 8
    invoke-direct {p1}, Ls6/e;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lb/i0;->b:Ls6/e;

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v0, 0x21

    .line 16
    .line 17
    if-lt p1, v0, :cond_43

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-lt p1, v0, :cond_35

    .line 22
    .line 23
    new-instance p1, Lb/z;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p1, p0, v0}, Lb/z;-><init>(Lb/i0;I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lb/z;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, Lb/z;-><init>(Lb/i0;I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lb/a0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lb/a0;-><init>(Lb/i0;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lb/a0;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, p0, v3}, Lb/a0;-><init>(Lb/i0;I)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lb/e0;->a:Lb/e0;

    .line 48
    .line 49
    invoke-virtual {v3, p1, v0, v1, v2}, Lb/e0;->a(Lc7/l;Lc7/l;Lc7/a;Lc7/a;)Landroid/window/OnBackInvokedCallback;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_41

    .line 54
    :cond_35
    new-instance p1, Lb/a0;

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    invoke-direct {p1, p0, v0}, Lb/a0;-><init>(Lb/i0;I)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lb/c0;->a:Lb/c0;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lb/c0;->a(Lc7/a;)Landroid/window/OnBackInvokedCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_41
    iput-object p1, p0, Lb/i0;->d:Landroid/window/OnBackInvokedCallback;

    .line 67
    .line 68
    :cond_43
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Lb/y;)V
    .registers 5

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onBackPressedCallback"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Landroidx/lifecycle/v;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 19
    .line 20
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 21
    .line 22
    if-ne v0, v1, :cond_18

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    new-instance v0, Lb/f0;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, Lb/f0;-><init>(Lb/i0;Landroidx/lifecycle/o;Lb/y;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p2, Lb/y;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lb/i0;->e()V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lb/h0;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, v0, p0}, Lb/h0;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p2, Lb/y;->c:Lb/h0;

    .line 45
    .line 46
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lb/i0;->c:Lb/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_25

    .line 5
    .line 6
    iget-object v0, p0, Lb/i0;->b:Ls6/e;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_21

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lb/y;

    .line 28
    .line 29
    iget-boolean v3, v3, Lb/y;->a:Z

    .line 30
    .line 31
    if-eqz v3, :cond_f

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move-object v2, v1

    .line 35
    :goto_22
    move-object v0, v2

    .line 36
    check-cast v0, Lb/y;

    .line 37
    .line 38
    :cond_25
    iput-object v1, p0, Lb/i0;->c:Lb/y;

    .line 39
    .line 40
    if-eqz v0, :cond_2c

    .line 41
    .line 42
    invoke-virtual {v0}, Lb/y;->a()V

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lb/i0;->c:Lb/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_26

    .line 5
    .line 6
    iget-object v0, p0, Lb/i0;->b:Ls6/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v2, v0, Ls6/e;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_22

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lb/y;

    .line 29
    .line 30
    iget-boolean v3, v3, Lb/y;->a:Z

    .line 31
    .line 32
    if-eqz v3, :cond_10

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-object v2, v1

    .line 36
    :goto_23
    move-object v0, v2

    .line 37
    check-cast v0, Lb/y;

    .line 38
    .line 39
    :cond_26
    iput-object v1, p0, Lb/i0;->c:Lb/y;

    .line 40
    .line 41
    if-eqz v0, :cond_2e

    .line 42
    .line 43
    invoke-virtual {v0}, Lb/y;->b()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    iget-object v0, p0, Lb/i0;->a:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final d(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lb/i0;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    iget-object v1, p0, Lb/i0;->d:Landroid/window/OnBackInvokedCallback;

    .line 6
    .line 7
    if-eqz v1, :cond_23

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    sget-object v3, Lb/c0;->a:Lb/c0;

    .line 11
    .line 12
    if-eqz p1, :cond_18

    .line 13
    .line 14
    iget-boolean v4, p0, Lb/i0;->f:Z

    .line 15
    .line 16
    if-nez v4, :cond_18

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2, v1}, Lb/c0;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lb/i0;->f:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    if-nez p1, :cond_23

    .line 26
    .line 27
    iget-boolean p1, p0, Lb/i0;->f:Z

    .line 28
    .line 29
    if-eqz p1, :cond_23

    .line 30
    .line 31
    invoke-virtual {v3, v0, v1}, Lb/c0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v2, p0, Lb/i0;->f:Z

    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public final e()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lb/i0;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb/i0;->b:Ls6/e;

    .line 5
    .line 6
    if-eqz v2, :cond_e

    .line 7
    .line 8
    invoke-virtual {v2}, Ls6/e;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_e

    .line 13
    .line 14
    goto :goto_23

    .line 15
    :cond_e
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_23

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lb/y;

    .line 30
    .line 31
    iget-boolean v3, v3, Lb/y;->a:Z

    .line 32
    .line 33
    if-eqz v3, :cond_12

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_23
    :goto_23
    iput-boolean v1, p0, Lb/i0;->g:Z

    .line 37
    .line 38
    if-eq v1, v0, :cond_30

    .line 39
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x21

    .line 43
    .line 44
    if-lt v0, v2, :cond_30

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lb/i0;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void
.end method
