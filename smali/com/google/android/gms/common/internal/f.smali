###### Class com.google.android.gms.common.internal.f (com.google.android.gms.common.internal.f)
.class public abstract Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zze:[Lv3/c;


# instance fields
.field private volatile zzA:Ljava/lang/String;

.field private zzB:Lcom/google/android/gms/common/ConnectionResult;

.field private zzC:Z

.field private volatile zzD:Lcom/google/android/gms/common/internal/j0;

.field zza:Lcom/google/android/gms/common/internal/p0;

.field final zzb:Landroid/os/Handler;

.field protected zzc:Lcom/google/android/gms/common/internal/d;

.field protected zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:I

.field private zzj:J

.field private volatile zzk:Ljava/lang/String;

.field private final zzl:Landroid/content/Context;

.field private final zzm:Landroid/os/Looper;

.field private final zzn:Lcom/google/android/gms/common/internal/k;

.field private final zzo:Lv3/e;

.field private final zzp:Ljava/lang/Object;

.field private final zzq:Ljava/lang/Object;

.field private zzr:Lcom/google/android/gms/common/internal/m;

.field private zzs:Landroid/os/IInterface;

.field private final zzt:Ljava/util/ArrayList;

.field private zzu:Lcom/google/android/gms/common/internal/g0;

.field private zzv:I

.field private final zzw:Lcom/google/android/gms/common/internal/b;

.field private final zzx:Lcom/google/android/gms/common/internal/c;

.field private final zzy:I

.field private final zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lv3/c;

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/common/internal/f;->zze:[Lv3/c;

    .line 5
    .line 6
    const-string v0, "service_esmobile"

    .line 7
    .line 8
    const-string v1, "service_googleme"

    .line 9
    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/common/internal/f;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/o0;Lv3/e;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzk:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/f;->zzC:Z

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzD:Lcom/google/android/gms/common/internal/j0;

    .line 37
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    const-string v0, "Context must not be null"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzl:Landroid/content/Context;

    .line 51
    .line 52
    const-string p1, "Looper must not be null"

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzm:Landroid/os/Looper;

    .line 58
    .line 59
    const-string p1, "Supervisor must not be null"

    .line 60
    .line 61
    invoke-static {p1, p3}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object p3, p0, Lcom/google/android/gms/common/internal/f;->zzn:Lcom/google/android/gms/common/internal/k;

    .line 65
    .line 66
    const-string p1, "API availability must not be null"

    .line 67
    .line 68
    invoke-static {p1, p4}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object p4, p0, Lcom/google/android/gms/common/internal/f;->zzo:Lv3/e;

    .line 72
    .line 73
    new-instance p1, Lcom/google/android/gms/common/internal/e0;

    .line 74
    .line 75
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/e0;-><init>(Lcom/google/android/gms/common/internal/f;Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 79
    .line 80
    iput p5, p0, Lcom/google/android/gms/common/internal/f;->zzy:I

    .line 81
    .line 82
    iput-object p6, p0, Lcom/google/android/gms/common/internal/f;->zzw:Lcom/google/android/gms/common/internal/b;

    .line 83
    .line 84
    iput-object p7, p0, Lcom/google/android/gms/common/internal/f;->zzx:Lcom/google/android/gms/common/internal/c;

    .line 85
    .line 86
    iput-object p8, p0, Lcom/google/android/gms/common/internal/f;->zzz:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzw:Lcom/google/android/gms/common/internal/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzx:Lcom/google/android/gms/common/internal/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/common/internal/f;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/common/internal/f;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/internal/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzr:Lcom/google/android/gms/common/internal/m;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V
    .registers 3

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/f;->b(ILandroid/os/IInterface;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static zzj(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/internal/j0;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzD:Lcom/google/android/gms/common/internal/j0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->usesClientTelemetry()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_34

    .line 8
    .line 9
    iget-object p0, p1, Lcom/google/android/gms/common/internal/j0;->d:Lcom/google/android/gms/common/internal/h;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/common/internal/o;->b()Lcom/google/android/gms/common/internal/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p0, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iget-object p0, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/internal/p;

    .line 20
    .line 21
    :goto_14
    monitor-enter p1

    .line 22
    if-nez p0, :cond_1f

    .line 23
    .line 24
    :try_start_17
    sget-object p0, Lcom/google/android/gms/common/internal/o;->c:Lcom/google/android/gms/common/internal/p;

    .line 25
    .line 26
    iput-object p0, p1, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1d

    .line 27
    .line 28
    monitor-exit p1

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_32

    .line 32
    :cond_1f
    :try_start_1f
    iget-object v0, p1, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/google/android/gms/common/internal/p;

    .line 35
    .line 36
    if-eqz v0, :cond_2e

    .line 37
    .line 38
    iget v0, v0, Lcom/google/android/gms/common/internal/p;->a:I

    .line 39
    .line 40
    iget v1, p0, Lcom/google/android/gms/common/internal/p;->a:I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1d

    .line 41
    .line 42
    if-ge v0, v1, :cond_2c

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    monitor-exit p1

    .line 46
    return-void

    .line 47
    :cond_2e
    :goto_2e
    :try_start_2e
    iput-object p0, p1, Lcom/google/android/gms/common/internal/o;->a:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_1d

    .line 48
    .line 49
    monitor-exit p1

    .line 50
    return-void

    .line 51
    :goto_32
    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1d

    .line 52
    throw p0

    .line 53
    :cond_34
    return-void
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/common/internal/f;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    .line 7
    const/4 p1, 0x3

    .line 8
    if-ne v0, p1, :cond_e

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/f;->zzC:Z

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x4

    .line 16
    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/common/internal/f;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/f;->zzC:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/common/internal/f;IILandroid/os/IInterface;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_c

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :catchall_a
    move-exception p0

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/internal/f;->b(ILandroid/os/IInterface;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    .line 20
    throw p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/common/internal/f;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->zzC:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getServiceDescriptor()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    return v1

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getLocalStartServiceAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getServiceDescriptor()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_23} :catch_25

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :catch_25
    return v1
.end method


# virtual methods
.method public final b(ILandroid/os/IInterface;)V
    .registers 12

    .line 1
    const-string v0, "unable to connect to service: "

    .line 2
    .line 3
    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x4

    .line 8
    if-eq p1, v4, :cond_b

    .line 9
    .line 10
    move v5, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v5, v3

    .line 13
    :goto_c
    if-nez p2, :cond_10

    .line 14
    .line 15
    move v6, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v6, v3

    .line 18
    :goto_11
    if-ne v5, v6, :cond_15

    .line 19
    .line 20
    move v5, v3

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v5, v2

    .line 23
    :goto_16
    invoke-static {v5}, Lcom/google/android/gms/common/internal/d0;->a(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v5

    .line 29
    :try_start_1c
    iput p1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzs:Landroid/os/IInterface;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-eq p1, v3, :cond_126

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v7, 0x3

    .line 38
    if-eq p1, v3, :cond_38

    .line 39
    .line 40
    if-eq p1, v7, :cond_38

    .line 41
    .line 42
    if-eq p1, v4, :cond_2d

    .line 43
    .line 44
    goto/16 :goto_143

    .line 45
    .line 46
    :cond_2d
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/f;->onConnectedLocked(Landroid/os/IInterface;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_143

    .line 53
    .line 54
    :catchall_35
    move-exception p1

    .line 55
    goto/16 :goto_145

    .line 56
    .line 57
    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzu:Lcom/google/android/gms/common/internal/g0;

    .line 58
    .line 59
    if-eqz p1, :cond_79

    .line 60
    .line 61
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 62
    .line 63
    if-eqz p2, :cond_79

    .line 64
    .line 65
    const-string v3, "GmsClient"

    .line 66
    .line 67
    iget-object v4, p2, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p2, p2, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " on "

    .line 80
    .line 81
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzn:Lcom/google/android/gms/common/internal/k;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->zze()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 111
    .line 112
    iget-boolean v4, v4, Lcom/google/android/gms/common/internal/p0;->c:Z

    .line 113
    .line 114
    invoke-virtual {p2, v1, v3, p1, v4}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 120
    .line 121
    .line 122
    :cond_79
    new-instance p1, Lcom/google/android/gms/common/internal/g0;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/g0;-><init>(Lcom/google/android/gms/common/internal/f;I)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzu:Lcom/google/android/gms/common/internal/g0;

    .line 134
    .line 135
    iget p2, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 136
    .line 137
    if-ne p2, v7, :cond_a2

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getLocalStartServiceAction()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_a2

    .line 144
    .line 145
    new-instance p2, Lcom/google/android/gms/common/internal/p0;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getLocalStartServiceAction()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-direct {p2, v1, v3, v2}, Lcom/google/android/gms/common/internal/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_b3

    .line 163
    :cond_a2
    new-instance p2, Lcom/google/android/gms/common/internal/p0;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getStartServicePackage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getStartServiceAction()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getUseDynamicLookup()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-direct {p2, v1, v2, v3}, Lcom/google/android/gms/common/internal/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    :goto_b3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 181
    .line 182
    iget-boolean p2, p2, Lcom/google/android/gms/common/internal/p0;->c:Z

    .line 183
    .line 184
    if-eqz p2, :cond_d7

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getMinApkVersion()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    const v1, 0x1110e58

    .line 191
    .line 192
    .line 193
    if-lt p2, v1, :cond_c3

    .line 194
    .line 195
    goto :goto_d7

    .line 196
    :cond_c3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 199
    .line 200
    iget-object p2, p2, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 201
    .line 202
    const-string v0, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 203
    .line 204
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_d7
    :goto_d7
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzn:Lcom/google/android/gms/common/internal/k;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 226
    .line 227
    iget-object v2, v2, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->zze()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 234
    .line 235
    iget-boolean v4, v4, Lcom/google/android/gms/common/internal/p0;->c:Z

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getBindServiceExecutor()Ljava/util/concurrent/Executor;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    new-instance v8, Lcom/google/android/gms/common/internal/k0;

    .line 242
    .line 243
    invoke-direct {v8, v1, v2, v4}, Lcom/google/android/gms/common/internal/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, v8, p1, v3, v7}, Lcom/google/android/gms/common/internal/k;->d(Lcom/google/android/gms/common/internal/k0;Lcom/google/android/gms/common/internal/g0;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_143

    .line 251
    .line 252
    const-string p1, "GmsClient"

    .line 253
    .line 254
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 255
    .line 256
    iget-object v1, p2, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 257
    .line 258
    iget-object p2, p2, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 259
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v0, " on "

    .line 269
    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    const/16 p2, 0x10

    .line 290
    .line 291
    invoke-virtual {p0, p2, v6, p1}, Lcom/google/android/gms/common/internal/f;->zzl(ILandroid/os/Bundle;I)V

    .line 292
    .line 293
    .line 294
    goto :goto_143

    .line 295
    :cond_126
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzu:Lcom/google/android/gms/common/internal/g0;

    .line 296
    .line 297
    if-eqz p1, :cond_143

    .line 298
    .line 299
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzn:Lcom/google/android/gms/common/internal/k;

    .line 300
    .line 301
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/google/android/gms/common/internal/p0;->a:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->zze()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 316
    .line 317
    iget-boolean v2, v2, Lcom/google/android/gms/common/internal/p0;->c:Z

    .line 318
    .line 319
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/google/android/gms/common/internal/k;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    .line 320
    .line 321
    .line 322
    iput-object v6, p0, Lcom/google/android/gms/common/internal/f;->zzu:Lcom/google/android/gms/common/internal/g0;

    .line 323
    .line 324
    :cond_143
    :goto_143
    monitor-exit v5

    .line 325
    return-void

    .line 326
    :goto_145
    monitor-exit v5
    :try_end_146
    .catchall {:try_start_1c .. :try_end_146} :catchall_35

    .line 327
    throw p1
.end method

.method public checkAvailabilityAndConnect()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzo:Lv3/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzl:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getMinApkVersion()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lv3/e;->b(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1c

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/internal/f;->b(ILandroid/os/IInterface;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/google/android/gms/common/internal/o;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/o;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/f;->triggerNotAvailable(Lcom/google/android/gms/common/internal/d;ILandroid/app/PendingIntent;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance v0, Lcom/google/android/gms/common/internal/o;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/o;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/f;->connect(Lcom/google/android/gms/common/internal/d;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final checkConnected()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public connect(Lcom/google/android/gms/common/internal/d;)V
    .registers 3

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzc:Lcom/google/android/gms/common/internal/d;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/internal/f;->b(ILandroid/os/IInterface;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public disconnect()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/x;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_1f
    move-exception v1

    goto :goto_36

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzt:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_1f

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2b
    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzr:Lcom/google/android/gms/common/internal/m;

    .line 6
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/internal/f;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_33
    move-exception v0

    .line 8
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 9
    :goto_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1f

    throw v1
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->disconnect()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_3
    iget p4, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzs:Landroid/os/IInterface;

    .line 7
    .line 8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16f

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_b
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzr:Lcom/google/android/gms/common/internal/m;

    .line 13
    .line 14
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_16c

    .line 15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "mConnectState="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq p4, v3, :cond_44

    .line 28
    .line 29
    if-eq p4, v2, :cond_3e

    .line 30
    .line 31
    if-eq p4, v1, :cond_38

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    if-eq p4, v4, :cond_32

    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    if-eq p4, v4, :cond_2c

    .line 38
    .line 39
    const-string p4, "UNKNOWN"

    .line 40
    .line 41
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_49

    .line 45
    :cond_2c
    const-string p4, "DISCONNECTING"

    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_49

    .line 51
    :cond_32
    const-string p4, "CONNECTED"

    .line 52
    .line 53
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_49

    .line 57
    :cond_38
    const-string p4, "LOCAL_CONNECTING"

    .line 58
    .line 59
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_49

    .line 63
    :cond_3e
    const-string p4, "REMOTE_CONNECTING"

    .line 64
    .line 65
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_49

    .line 69
    :cond_44
    const-string p4, "DISCONNECTED"

    .line 70
    .line 71
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_49
    const-string p4, " mService="

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 77
    .line 78
    .line 79
    if-nez v0, :cond_56

    .line 80
    .line 81
    const-string p4, "null"

    .line 82
    .line 83
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    goto :goto_73

    .line 87
    :cond_56
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getServiceDescriptor()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    const-string v4, "@"

    .line 96
    .line 97
    invoke-virtual {p4, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 114
    .line 115
    .line 116
    :goto_73
    const-string p4, " mServiceBroker="

    .line 117
    .line 118
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 119
    .line 120
    .line 121
    if-nez p2, :cond_80

    .line 122
    .line 123
    const-string p2, "null"

    .line 124
    .line 125
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_95

    .line 129
    :cond_80
    const-string p4, "IGmsServiceBroker@"

    .line 130
    .line 131
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_95
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 151
    .line 152
    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 153
    .line 154
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 155
    .line 156
    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    .line 158
    .line 159
    iget-wide v4, p0, Lcom/google/android/gms/common/internal/f;->zzh:J

    .line 160
    .line 161
    const-wide/16 v6, 0x0

    .line 162
    .line 163
    cmp-long p4, v4, v6

    .line 164
    .line 165
    if-lez p4, :cond_d2

    .line 166
    .line 167
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    const-string v0, "lastConnectedTime="

    .line 172
    .line 173
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    iget-wide v4, p0, Lcom/google/android/gms/common/internal/f;->zzh:J

    .line 178
    .line 179
    new-instance v0, Ljava/util/Date;

    .line 180
    .line 181
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v4, " "

    .line 197
    .line 198
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_d2
    iget-wide v4, p0, Lcom/google/android/gms/common/internal/f;->zzg:J

    .line 212
    .line 213
    cmp-long p4, v4, v6

    .line 214
    .line 215
    if-lez p4, :cond_12a

    .line 216
    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 218
    .line 219
    .line 220
    move-result-object p4

    .line 221
    const-string v0, "lastSuspendedCause="

    .line 222
    .line 223
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 224
    .line 225
    .line 226
    iget p4, p0, Lcom/google/android/gms/common/internal/f;->zzf:I

    .line 227
    .line 228
    if-eq p4, v3, :cond_fd

    .line 229
    .line 230
    if-eq p4, v2, :cond_f7

    .line 231
    .line 232
    if-eq p4, v1, :cond_f1

    .line 233
    .line 234
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 239
    .line 240
    .line 241
    goto :goto_102

    .line 242
    :cond_f1
    const-string p4, "CAUSE_DEAD_OBJECT_EXCEPTION"

    .line 243
    .line 244
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 245
    .line 246
    .line 247
    goto :goto_102

    .line 248
    :cond_f7
    const-string p4, "CAUSE_NETWORK_LOST"

    .line 249
    .line 250
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 251
    .line 252
    .line 253
    goto :goto_102

    .line 254
    :cond_fd
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    .line 255
    .line 256
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 257
    .line 258
    .line 259
    :goto_102
    const-string p4, " lastSuspendedTime="

    .line 260
    .line 261
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 262
    .line 263
    .line 264
    move-result-object p4

    .line 265
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/f;->zzg:J

    .line 266
    .line 267
    new-instance v2, Ljava/util/Date;

    .line 268
    .line 269
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v0, " "

    .line 285
    .line 286
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_12a
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/f;->zzj:J

    .line 300
    .line 301
    cmp-long p4, v0, v6

    .line 302
    .line 303
    if-lez p4, :cond_16b

    .line 304
    .line 305
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    const-string p4, "lastFailedStatus="

    .line 310
    .line 311
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget p4, p0, Lcom/google/android/gms/common/internal/f;->zzi:I

    .line 316
    .line 317
    invoke-static {p4}, Lb2/k;->g(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p4

    .line 321
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 322
    .line 323
    .line 324
    const-string p1, " lastFailedTime="

    .line 325
    .line 326
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iget-wide p3, p0, Lcom/google/android/gms/common/internal/f;->zzj:J

    .line 331
    .line 332
    new-instance v0, Ljava/util/Date;

    .line 333
    .line 334
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string p3, " "

    .line 350
    .line 351
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_16b
    return-void

    .line 365
    :catchall_16c
    move-exception p1

    .line 366
    :try_start_16d
    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    .line 367
    throw p1

    .line 368
    :catchall_16f
    move-exception p1

    .line 369
    :try_start_170
    monitor-exit p2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    .line 370
    throw p1
.end method

.method public enableLocalFallback()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getApiFeatures()[Lv3/c;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/f;->zze:[Lv3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAvailableFeatures()[Lv3/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzD:Lcom/google/android/gms/common/internal/j0;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/j0;->b:[Lv3/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public getBindServiceExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzl:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zza:Lcom/google/android/gms/common/internal/p0;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/common/internal/p0;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Failed to connect when checking package"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public getGCoreServiceId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/f;->zzy:I

    .line 2
    .line 3
    return v0
.end method

.method public getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLastDisconnectMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalStartServiceAction()Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzm:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getMinApkVersion()I
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/google/android/gms/common/internal/i;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/google/android/gms/common/internal/f;->zzA:Ljava/lang/String;

    .line 12
    .line 13
    sget v6, Lv3/e;->a:I

    .line 14
    .line 15
    sget-object v9, Lcom/google/android/gms/common/internal/i;->w:[Lcom/google/android/gms/common/api/Scope;

    .line 16
    .line 17
    new-instance v10, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    iget v5, v1, Lcom/google/android/gms/common/internal/f;->zzy:I

    .line 23
    .line 24
    sget-object v12, Lcom/google/android/gms/common/internal/i;->x:[Lv3/c;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    move-object/from16 v17, v4

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v14, 0x1

    .line 36
    move-object v13, v12

    .line 37
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/internal/i;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv3/c;[Lv3/c;ZIZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, Lcom/google/android/gms/common/internal/f;->zzl:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iput-object v4, v3, Lcom/google/android/gms/common/internal/i;->d:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v2, v3, Lcom/google/android/gms/common/internal/i;->g:Landroid/os/Bundle;

    .line 49
    .line 50
    if-eqz v0, :cond_3e

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 60
    .line 61
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 62
    .line 63
    :cond_3e
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->requiresSignIn()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5e

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->getAccount()Landroid/accounts/Account;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_53

    .line 74
    .line 75
    new-instance v0, Landroid/accounts/Account;

    .line 76
    .line 77
    const-string v2, "<<default account>>"

    .line 78
    .line 79
    const-string v4, "com.google"

    .line 80
    .line 81
    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_53
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->h:Landroid/accounts/Account;

    .line 85
    .line 86
    if-eqz p1, :cond_6a

    .line 87
    .line 88
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->e:Landroid/os/IBinder;

    .line 93
    .line 94
    goto :goto_6a

    .line 95
    :cond_5e
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->requiresAccount()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6a

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->getAccount()Landroid/accounts/Account;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->h:Landroid/accounts/Account;

    .line 106
    .line 107
    :cond_6a
    :goto_6a
    sget-object v0, Lcom/google/android/gms/common/internal/f;->zze:[Lv3/c;

    .line 108
    .line 109
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->i:[Lv3/c;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->getApiFeatures()[Lv3/c;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v3, Lcom/google/android/gms/common/internal/i;->j:[Lv3/c;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f;->usesClientTelemetry()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7d

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/i;->m:Z

    .line 125
    .line 126
    :cond_7d
    :try_start_7d
    iget-object v2, v1, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v2
    :try_end_80
    .catch Landroid/os/DeadObjectException; {:try_start_7d .. :try_end_80} :catch_a8
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_80} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_80} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_80} :catch_a2

    .line 129
    :try_start_80
    iget-object v0, v1, Lcom/google/android/gms/common/internal/f;->zzr:Lcom/google/android/gms/common/internal/m;

    .line 130
    .line 131
    if-eqz v0, :cond_97

    .line 132
    .line 133
    new-instance v4, Lcom/google/android/gms/common/internal/f0;

    .line 134
    .line 135
    iget-object v5, v1, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/common/internal/f0;-><init>(Lcom/google/android/gms/common/internal/f;I)V

    .line 142
    .line 143
    .line 144
    check-cast v0, Lcom/google/android/gms/common/internal/z;

    .line 145
    .line 146
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/z;->b(Lcom/google/android/gms/common/internal/f0;Lcom/google/android/gms/common/internal/i;)V

    .line 147
    .line 148
    .line 149
    goto :goto_9e

    .line 150
    :catchall_95
    move-exception v0

    .line 151
    goto :goto_a0

    .line 152
    :cond_97
    const-string v0, "GmsClient"

    .line 153
    .line 154
    const-string v3, "mServiceBroker is null, client disconnected"

    .line 155
    .line 156
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :goto_9e
    monitor-exit v2

    .line 160
    return-void

    .line 161
    :goto_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_80 .. :try_end_a1} :catchall_95

    .line 162
    :try_start_a1
    throw v0
    :try_end_a2
    .catch Landroid/os/DeadObjectException; {:try_start_a1 .. :try_end_a2} :catch_a8
    .catch Ljava/lang/SecurityException; {:try_start_a1 .. :try_end_a2} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_a2} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a2} :catch_a2

    .line 163
    :catch_a2
    move-exception v0

    .line 164
    goto :goto_aa

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    goto :goto_aa

    .line 167
    :catch_a6
    move-exception v0

    .line 168
    goto :goto_be

    .line 169
    :catch_a8
    move-exception v0

    .line 170
    goto :goto_bf

    .line 171
    :goto_aa
    const-string v2, "GmsClient"

    .line 172
    .line 173
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 174
    .line 175
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    iget-object v0, v1, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    const/16 v2, 0x8

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/google/android/gms/common/internal/f;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :goto_be
    throw v0

    .line 192
    :goto_bf
    const-string v2, "GmsClient"

    .line 193
    .line 194
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 195
    .line 196
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    const/4 v0, 0x3

    .line 200
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/f;->triggerConnectionSuspended(I)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public getScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/IInterface;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_16

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->checkConnected()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzs:Landroid/os/IInterface;

    .line 13
    .line 14
    const-string v2, "Client is connected but service is null"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    new-instance v1, Landroid/os/DeadObjectException;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_14

    .line 30
    throw v1
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzq:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzr:Lcom/google/android/gms/common/internal/m;

    .line 5
    .line 6
    if-nez v1, :cond_c

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    .line 20
    throw v1
.end method

.method public abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Not a sign in API"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public abstract getStartServiceAction()Ljava/lang/String;
.end method

.method public getStartServicePackage()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms"

    .line 2
    .line 3
    return-object v0
.end method

.method public getTelemetryConfiguration()Lcom/google/android/gms/common/internal/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzD:Lcom/google/android/gms/common/internal/j0;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/j0;->d:Lcom/google/android/gms/common/internal/h;

    .line 8
    .line 9
    return-object v0
.end method

.method public getUseDynamicLookup()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->getMinApkVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xc9e4920

    .line 6
    .line 7
    .line 8
    if-lt v0, v1, :cond_b

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public hasConnectionInfo()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzD:Lcom/google/android/gms/common/internal/j0;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public isConnected()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_a

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .line 16
    throw v1
.end method

.method public isConnecting()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzp:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/f;->zzv:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v1, v2, :cond_e

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_d

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v3, 0x0

    .line 15
    :cond_e
    :goto_e
    monitor-exit v0

    .line 16
    return v3

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw v1
.end method

.method public onConnectedLocked(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IInterface;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/f;->zzh:J

    .line 6
    .line 7
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/common/internal/f;->zzi:I

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/f;->zzj:J

    .line 10
    .line 11
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/google/android/gms/common/internal/f;->zzf:I

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/f;->zzg:J

    .line 8
    .line 9
    return-void
.end method

.method public onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/h0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/h0;-><init>(Lcom/google/android/gms/common/internal/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 p3, -0x1

    .line 10
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/e;)V
    .registers 5

    .line 1
    check-cast p1, Lk1/h;

    .line 2
    .line 3
    iget-object v0, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lx3/j;

    .line 6
    .line 7
    iget-object v0, v0, Lx3/j;->m:Lx3/d;

    .line 8
    .line 9
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 10
    .line 11
    new-instance v1, Landroidx/fragment/app/p;

    .line 12
    .line 13
    const/16 v2, 0xf

    .line 14
    .line 15
    invoke-direct {v1, v2, p1}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public providesSignIn()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public requiresAccount()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public requiresGooglePlayServices()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public requiresSignIn()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzA:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public triggerConnectionSuspended(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public triggerNotAvailable(Lcom/google/android/gms/common/internal/d;ILandroid/app/PendingIntent;)V
    .registers 6

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzc:Lcom/google/android/gms/common/internal/d;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public usesClientTelemetry()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzz:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->zzl:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_e
    return-object v0
.end method

.method public final zzl(ILandroid/os/Bundle;I)V
    .registers 6

    .line 1
    new-instance p2, Lcom/google/android/gms/common/internal/i0;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/common/internal/i0;-><init>(Lcom/google/android/gms/common/internal/f;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/common/internal/f;->zzb:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
