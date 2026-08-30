###### Class com.google.android.gms.measurement.internal.zzly (com.google.android.gms.measurement.internal.zzly)
.class final Lcom/google/android/gms/measurement/internal/zzly;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzo;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzc:Landroid/os/Bundle;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_27

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Failed to get trigger URIs; not connected to service"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_25
    .catchall {:try_start_3 .. :try_end_1a} :catchall_23

    .line 25
    .line 26
    .line 27
    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    goto :goto_60

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    goto :goto_5a

    .line 38
    :catch_25
    move-exception v1

    .line 39
    goto :goto_44

    .line 40
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzc:Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzo;Landroid/os/Bundle;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3e} :catch_25
    .catchall {:try_start_27 .. :try_end_3e} :catchall_23

    .line 61
    .line 62
    .line 63
    :try_start_3e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_21

    .line 66
    .line 67
    .line 68
    goto :goto_58

    .line 69
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzly;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "Failed to get trigger URIs; remote exception"

    .line 80
    .line 81
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_23

    .line 82
    .line 83
    .line 84
    :try_start_53
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 87
    .line 88
    .line 89
    :goto_58
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_5a
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzly;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_21

    .line 98
    throw v1
.end method
