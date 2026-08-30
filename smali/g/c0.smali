###### Class g.c0 (g.c0)
.class public abstract Lg/c0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c0;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/f0;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/c0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq2/d;

    .line 4
    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    :try_start_6
    iget-object v1, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lg/f0;

    .line 10
    .line 11
    iget-object v1, v1, Lg/f0;->k:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_f

    .line 14
    .line 15
    .line 16
    :catch_f
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public abstract d()Landroid/content/IntentFilter;
.end method

.method public abstract e()I
.end method

.method public f(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    instance-of v0, p1, Le0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_31

    .line 4
    .line 5
    check-cast p1, Le0/a;

    .line 6
    .line 7
    iget-object v0, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ls/j;

    .line 10
    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    new-instance v0, Ls/j;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_14
    iget-object v0, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ls/j;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/MenuItem;

    .line 30
    .line 31
    if-nez v0, :cond_30

    .line 32
    .line 33
    new-instance v0, Ll/u;

    .line 34
    .line 35
    iget-object v1, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Ll/u;-><init>(Landroid/content/Context;Le0/a;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ls/j;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v0}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_30
    return-object v0

    .line 50
    :cond_31
    return-object p1
.end method

.method public abstract g()V
.end method

.method public h()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lg/c0;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg/c0;->d()Landroid/content/IntentFilter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lq2/d;

    .line 18
    .line 19
    if-nez v1, :cond_1c

    .line 20
    .line 21
    new-instance v1, Lq2/d;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, v2, p0}, Lq2/d;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_1c
    iget-object v1, p0, Lg/c0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lg/f0;

    .line 32
    .line 33
    iget-object v1, v1, Lg/f0;->k:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Lg/c0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lq2/d;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method
