###### Class androidx.fragment.app.g0 (androidx.fragment.app.g0)
.class public final Landroidx/fragment/app/g0;
.super Lh8/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/t0;
.implements Lb/j0;
.implements Le1/g;
.implements Landroidx/fragment/app/d1;


# instance fields
.field public final a:Landroidx/fragment/app/h0;

.field public final b:Landroidx/fragment/app/h0;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/z0;

.field public final synthetic e:Landroidx/fragment/app/h0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance p1, Landroidx/fragment/app/z0;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/fragment/app/y0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/fragment/app/g0;->d:Landroidx/fragment/app/z0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/c0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h0;->onAttachFragment(Landroidx/fragment/app/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/h0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getSavedStateRegistry()Le1/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/p;->getSavedStateRegistry()Le1/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/s0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/p;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final n(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method
