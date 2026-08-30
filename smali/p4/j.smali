###### Class p4.j (p4.j)
.class public final Lp4/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lp4/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/q;

    .line 5
    .line 6
    invoke-direct {v0}, Lp4/q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp4/j;->a:Lp4/q;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/j;->a:Lp4/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp4/q;->m(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Exception;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lp4/j;->a:Lp4/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Exception must not be null"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lp4/q;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_d
    iget-boolean v2, v0, Lp4/q;->c:Z

    .line 15
    .line 16
    if-eqz v2, :cond_16

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_22

    .line 23
    :cond_16
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, Lp4/q;->c:Z

    .line 25
    .line 26
    iput-object p1, v0, Lp4/q;->f:Ljava/lang/Exception;

    .line 27
    .line 28
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_14

    .line 29
    iget-object p1, v0, Lp4/q;->b:Lp4/p;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lp4/p;->e(Lp4/i;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :goto_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_14

    .line 36
    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp4/j;->a:Lp4/q;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/q;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget-boolean v2, v0, Lp4/q;->c:Z

    .line 7
    .line 8
    if-eqz v2, :cond_d

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    goto :goto_19

    .line 14
    :cond_d
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v0, Lp4/q;->c:Z

    .line 16
    .line 17
    iput-object p1, v0, Lp4/q;->e:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_b

    .line 20
    iget-object p1, v0, Lp4/q;->b:Lp4/p;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lp4/p;->e(Lp4/i;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_b

    .line 27
    throw p1
.end method
