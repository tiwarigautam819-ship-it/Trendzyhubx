###### Class androidx.lifecycle.d0 (androidx.lifecycle.d0)
.class public abstract Landroidx/lifecycle/d0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/app/Activity;Landroidx/lifecycle/m;)V
    .registers 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Landroidx/lifecycle/t;

    .line 7
    .line 8
    if-eqz v0, :cond_18

    .line 9
    .line 10
    check-cast p0, Landroidx/lifecycle/t;

    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    instance-of v0, p0, Landroidx/lifecycle/v;

    .line 17
    .line 18
    if-eqz v0, :cond_18

    .line 19
    .line 20
    check-cast p0, Landroidx/lifecycle/v;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_13

    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/f0$a;->Companion:Landroidx/lifecycle/e0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/f0$a;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/lifecycle/f0$a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, La4/a;->k(Landroid/app/Activity;Landroidx/lifecycle/f0$a;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_32

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Landroidx/lifecycle/f0;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method
