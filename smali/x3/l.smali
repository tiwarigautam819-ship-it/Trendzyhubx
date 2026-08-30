###### Class x3.l (x3.l)
.class public final Lx3/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/common/internal/d;


# instance fields
.field public final a:Lw3/a;

.field public final b:Lx3/a;

.field public c:Lcom/google/android/gms/common/internal/l;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:Lx3/d;


# direct methods
.method public constructor <init>(Lx3/d;Lw3/a;Lx3/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/l;->f:Lx3/d;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lx3/l;->c:Lcom/google/android/gms/common/internal/l;

    .line 8
    .line 9
    iput-object p1, p0, Lx3/l;->d:Ljava/util/Set;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lx3/l;->e:Z

    .line 13
    .line 14
    iput-object p2, p0, Lx3/l;->a:Lw3/a;

    .line 15
    .line 16
    iput-object p3, p0, Lx3/l;->b:Lx3/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lx3/l;->f:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    new-instance v1, Ls4/b;

    .line 6
    .line 7
    const/16 v2, 0x12

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2, v3}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/l;->f:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lx3/l;->b:Lx3/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lx3/j;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lx3/j;->n(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method
