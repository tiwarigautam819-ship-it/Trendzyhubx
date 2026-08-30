###### Class androidx.fragment.app.i1 (androidx.fragment.app.i1)
.class public final Landroidx/fragment/app/i1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Le1/g;
.implements Landroidx/lifecycle/t0;


# instance fields
.field public final a:Landroidx/fragment/app/c0;

.field public final b:Landroidx/lifecycle/s0;

.field public final c:Landroidx/fragment/app/u;

.field public d:Landroidx/lifecycle/v;

.field public e:Le1/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c0;Landroidx/lifecycle/s0;Landroidx/fragment/app/u;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/i1;->e:Le1/f;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/i1;->a:Landroidx/fragment/app/c0;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/fragment/app/i1;->b:Landroidx/lifecycle/s0;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/fragment/app/i1;->c:Landroidx/fragment/app/u;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/v;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 11
    .line 12
    new-instance v0, Le1/f;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Le1/f;-><init>(Le1/g;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/i1;->e:Le1/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Le1/f;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/fragment/app/i1;->c:Landroidx/fragment/app/u;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/u;->run()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lv0/b;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i1;->a:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->F()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_a
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1c

    .line 14
    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_15

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    check-cast v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    :goto_1d
    new-instance v2, Lv0/c;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v3}, Lv0/c;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v2, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_2c

    .line 39
    .line 40
    sget-object v4, Landroidx/lifecycle/q0;->e:Le5/e;

    .line 41
    .line 42
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2c
    sget-object v1, Landroidx/lifecycle/j0;->a:Le5/e;

    .line 46
    .line 47
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object v1, Landroidx/lifecycle/j0;->b:Le5/e;

    .line 51
    .line 52
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz v0, :cond_3f

    .line 58
    .line 59
    sget-object v1, Landroidx/lifecycle/j0;->c:Le5/e;

    .line 60
    .line 61
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_3f
    return-object v2
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 5
    .line 6
    return-object v0
.end method

.method public final getSavedStateRegistry()Le1/e;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i1;->e:Le1/f;

    .line 5
    .line 6
    iget-object v0, v0, Le1/f;->b:Le1/e;

    .line 7
    .line 8
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/s0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/i1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/i1;->b:Landroidx/lifecycle/s0;

    .line 5
    .line 6
    return-object v0
.end method
