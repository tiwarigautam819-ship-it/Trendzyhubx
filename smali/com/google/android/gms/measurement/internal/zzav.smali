###### Class com.google.android.gms.measurement.internal.zzav (com.google.android.gms.measurement.internal.zzav)
.class abstract Lcom/google/android/gms/measurement/internal/zzav;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static volatile zza:Landroid/os/Handler;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzjc;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjc;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzc:Ljava/lang/Runnable;

    .line 15
    .line 16
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzav;J)V
    .registers 3

    .line 1
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzd:J

    return-void
.end method

.method private final zzd()Landroid/os/Handler;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzav;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzav;->zza:Landroid/os/Handler;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    const-class v0, Lcom/google/android/gms/measurement/internal/zzav;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzav;->zza:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v1, :cond_23

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/measurement/r0;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzjc;->zza()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/r0;-><init>(Landroid/os/Looper;I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzav;->zza:Landroid/os/Handler;

    .line 32
    .line 33
    goto :goto_23

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    :goto_23
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzav;->zza:Landroid/os/Handler;

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-object v1

    .line 40
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_21

    .line 41
    throw v1
.end method


# virtual methods
.method public final zza()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzd:J

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(J)V
    .registers 5

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzav;->zza()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_39

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjc;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzd:J

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_39

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzjc;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjc;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to schedule delayed post. time"

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public abstract zzb()V
.end method

.method public final zzc()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzd:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method
