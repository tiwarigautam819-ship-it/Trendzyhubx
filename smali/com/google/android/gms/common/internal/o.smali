###### Class com.google.android.gms.common.internal.o (com.google.android.gms.common.internal.o)
.class public final Lcom/google/android/gms/common/internal/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/common/internal/d;
.implements Lcom/google/android/gms/common/internal/b;
.implements Lcom/google/android/gms/common/internal/c;


# static fields
.field public static b:Lcom/google/android/gms/common/internal/o;

.field public static final c:Lcom/google/android/gms/common/internal/p;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/p;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/p;-><init>(IIIZZ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/common/internal/o;->c:Lcom/google/android/gms/common/internal/p;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized b()Lcom/google/android/gms/common/internal/o;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/common/internal/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/o;->b:Lcom/google/android/gms/common/internal/o;

    .line 5
    .line 6
    if-nez v1, :cond_11

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/internal/o;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/common/internal/o;->b:Lcom/google/android/gms/common/internal/o;

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    :goto_11
    sget-object v1, Lcom/google/android/gms/common/internal/o;->b:Lcom/google/android/gms/common/internal/o;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    .line 23
    throw v1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/common/internal/f;

    .line 4
    .line 5
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 6
    .line 7
    if-nez v1, :cond_11

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getScopes()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/internal/f;->getRemoteService(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->zzc(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1e

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->zzc(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/c;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lw3/c;

    .line 4
    .line 5
    invoke-interface {p1}, Lw3/c;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw3/d;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw3/d;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw3/c;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw3/c;->onConnectionSuspended(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
