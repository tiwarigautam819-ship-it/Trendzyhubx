###### Class x3.s (x3.s)
.class public final Lx3/s;
.super Lx3/o;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final b:Lp4/p;

.field public final c:Lp4/j;

.field public final d:Lx1/w;


# direct methods
.method public constructor <init>(Lp4/p;Lp4/j;Lx1/w;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lx3/o;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lx3/s;->c:Lp4/j;

    .line 6
    .line 7
    iput-object p1, p0, Lx3/s;->b:Lp4/p;

    .line 8
    .line 9
    iput-object p3, p0, Lx3/s;->d:Lx1/w;

    .line 10
    .line 11
    iget-boolean p1, p1, Lp4/p;->b:Z

    .line 12
    .line 13
    if-nez p1, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public final a(Lx3/j;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lx3/s;->b:Lp4/p;

    .line 2
    .line 3
    iget-boolean p1, p1, Lp4/p;->b:Z

    .line 4
    .line 5
    return p1
.end method

.method public final b(Lx3/j;)[Lv3/c;
    .registers 2

    .line 1
    iget-object p1, p0, Lx3/s;->b:Lp4/p;

    .line 2
    .line 3
    iget-object p1, p1, Lp4/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, [Lv3/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lx3/s;->d:Lx1/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->c:Landroid/app/PendingIntent;

    .line 7
    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    new-instance v0, Lw3/f;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    goto :goto_14

    .line 16
    :cond_f
    new-instance v0, Lcom/google/firebase/messaging/x;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    iget-object p1, p0, Lx3/s;->c:Lp4/j;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lp4/j;->b(Ljava/lang/Exception;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lx3/s;->c:Lp4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp4/j;->b(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lx3/j;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/s;->c:Lp4/j;

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lx3/s;->b:Lp4/p;

    .line 4
    .line 5
    iget-object p1, p1, Lx3/j;->c:Lw3/a;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lp4/p;->b(Lw3/a;Lp4/j;)V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_9} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_a

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_a
    move-exception p1

    .line 12
    goto :goto_10

    .line 13
    :catch_c
    move-exception p1

    .line 14
    goto :goto_14

    .line 15
    :catch_e
    move-exception p1

    .line 16
    goto :goto_1c

    .line 17
    :goto_10
    invoke-virtual {v0, p1}, Lp4/j;->b(Ljava/lang/Exception;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_14
    invoke-static {p1}, Lx3/o;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lx3/s;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1c
    throw p1
.end method

.method public final f(Lu3/o;Z)V
    .registers 6

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Lu3/o;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p0, Lx3/s;->c:Lp4/j;

    .line 10
    .line 11
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p2, v1, Lp4/j;->a:Lp4/q;

    .line 15
    .line 16
    new-instance v0, Lu3/o;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, p1, v1, v2}, Lu3/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lp4/q;->h(Lp4/d;)Lp4/q;

    .line 23
    .line 24
    .line 25
    return-void
.end method
