###### Class androidx.lifecycle.l0 (androidx.lifecycle.l0)
.class public final Landroidx/lifecycle/l0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le1/d;


# instance fields
.field public final a:Le1/e;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:Lr6/g;


# direct methods
.method public constructor <init>(Le1/e;Landroidx/lifecycle/t0;)V
    .registers 4

    .line 1
    const-string v0, "savedStateRegistry"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/lifecycle/l0;->a:Le1/e;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/k0;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0, p2}, Landroidx/lifecycle/k0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lr6/g;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lr6/g;-><init>(Lc7/a;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroidx/lifecycle/l0;->d:Lr6/g;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    iget-object v1, p0, Landroidx/lifecycle/l0;->d:Lr6/g;

    .line 14
    .line 15
    invoke-virtual {v1}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/m0;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/lifecycle/m0;->b:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_48

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/lifecycle/h0;

    .line 54
    .line 55
    iget-object v2, v2, Landroidx/lifecycle/h0;->e:Le1/d;

    .line 56
    .line 57
    invoke-interface {v2}, Le1/d;->a()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-static {v2, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1e

    .line 68
    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1e

    .line 73
    :cond_48
    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Landroidx/lifecycle/l0;->b:Z

    .line 75
    .line 76
    return-object v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/l0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2a

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/lifecycle/l0;->a:Le1/e;

    .line 6
    .line 7
    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Le1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v2, :cond_18

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iput-object v1, p0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/lifecycle/l0;->b:Z

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/lifecycle/l0;->d:Lr6/g;

    .line 36
    .line 37
    invoke-virtual {v0}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/lifecycle/m0;

    .line 42
    .line 43
    :cond_2a
    return-void
.end method
