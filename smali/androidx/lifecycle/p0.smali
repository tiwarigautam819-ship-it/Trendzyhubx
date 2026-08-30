###### Class androidx.lifecycle.p0 (androidx.lifecycle.p0)
.class public abstract Landroidx/lifecycle/p0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lw0/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw0/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lw0/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/p0;->a:Lw0/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p0;->a:Lw0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4a

    .line 4
    .line 5
    iget-boolean v1, v0, Lw0/a;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_4a

    .line 10
    :cond_9
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lw0/a;->d:Z

    .line 12
    .line 13
    iget-object v1, v0, Lw0/a;->a:Lw0/b;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_f
    iget-object v2, v0, Lw0/a;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2b

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 37
    .line 38
    invoke-static {v3}, Lw0/a;->a(Ljava/lang/AutoCloseable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_19

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    goto :goto_48

    .line 44
    :cond_2b
    iget-object v2, v0, Lw0/a;->c:Ljava/util/LinkedHashSet;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_41

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 61
    .line 62
    invoke-static {v3}, Lw0/a;->a(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_31

    .line 66
    :cond_41
    iget-object v0, v0, Lw0/a;->c:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_29

    .line 69
    .line 70
    .line 71
    monitor-exit v1

    .line 72
    goto :goto_4a

    .line 73
    :goto_48
    monitor-exit v1

    .line 74
    throw v0

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroidx/lifecycle/p0;->b()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public b()V
    .registers 1

    .line 1
    return-void
.end method
