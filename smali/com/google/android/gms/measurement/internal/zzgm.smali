###### Class com.google.android.gms.measurement.internal.zzgm (com.google.android.gms.measurement.internal.zzgm)
.class public final Lcom/google/android/gms/measurement/internal/zzgm;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private static final zzb:Ljava/time/Duration;


# instance fields
.field private final zzc:Lcom/google/android/gms/measurement/internal/zzhy;

.field private final zzd:Lcom/google/android/gms/common/internal/r;

.field private final zze:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/getcapacitor/plugin/util/a;->n()Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/common/internal/s;

    .line 14
    .line 15
    const-string v1, "measurement:api"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/s;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lz3/b;

    .line 21
    .line 22
    sget-object v2, Lz3/b;->i:Lu3/o;

    .line 23
    .line 24
    sget-object v3, Lw3/b;->b:Lw3/b;

    .line 25
    .line 26
    invoke-direct {v1, p1, v2, v0, v3}, Lz3/b;-><init>(Landroid/content/Context;Lu3/o;Lcom/google/android/gms/common/internal/s;Lw3/b;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/r;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 32
    .line 33
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 3
    :cond_f
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(IIJJI)V
    .registers 25

    move-object/from16 v1, p0

    monitor-enter p0

    .line 5
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1f

    goto :goto_31

    .line 8
    :cond_1f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    invoke-static {v0}, Lcom/getcapacitor/plugin/util/a;->b(Ljava/time/Duration;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_6d

    .line 9
    :goto_31
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/r;

    new-instance v4, Lcom/google/android/gms/common/internal/q;

    new-instance v5, Lcom/google/android/gms/common/internal/n;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v6, 0x8dcd

    const/4 v8, 0x0

    const/4 v13, 0x0

    move/from16 v7, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move/from16 v16, p7

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/common/internal/n;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/common/internal/n;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 10
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/google/android/gms/common/internal/q;-><init>(Ljava/util/List;I)V

    .line 11
    check-cast v0, Lz3/b;

    invoke-virtual {v0, v4}, Lz3/b;->b(Lcom/google/android/gms/common/internal/q;)Lp4/q;

    move-result-object v0

    .line 12
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v2, Lp4/k;->a:Lf3/o;

    invoke-virtual {v0, v2, v4}, Lp4/q;->b(Ljava/util/concurrent/Executor;Lp4/e;)Lp4/q;
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6b

    .line 14
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception v0

    goto :goto_6f

    .line 15
    :cond_6d
    monitor-exit p0

    return-void

    .line 16
    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6b

    throw v0
.end method

.method public final synthetic zza(JLjava/lang/Exception;)V
    .registers 4

    .line 4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzgl (com.google.android.gms.measurement.internal.zzgl)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/e;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(JLjava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
