###### Class com.google.android.gms.measurement.internal.zzml (com.google.android.gms.measurement.internal.zzml)
.class final Lcom/google/android/gms/measurement/internal/zzml;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzml;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_38

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

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
    const-string v2, "(legacy) Failed to get conditional properties; not connected to service"

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzc:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzd:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_36
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    .line 42
    .line 43
    .line 44
    :try_start_2b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    goto :goto_9a

    .line 53
    :catchall_34
    move-exception v1

    .line 54
    goto :goto_94

    .line 55
    :catch_36
    move-exception v1

    .line 56
    goto :goto_6f

    .line 57
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_55

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzc:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzd:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzml;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    .line 77
    .line 78
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_64

    .line 86
    :cond_55
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzc:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzd:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_69} :catch_36
    .catchall {:try_start_38 .. :try_end_69} :catchall_34

    .line 104
    .line 105
    .line 106
    :try_start_69
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_32

    .line 109
    .line 110
    .line 111
    goto :goto_92

    .line 112
    :goto_6f
    :try_start_6f
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "(legacy) Failed to get conditional properties; remote exception"

    .line 123
    .line 124
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzc:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    .line 137
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_6f .. :try_end_8d} :catchall_34

    .line 140
    .line 141
    .line 142
    :try_start_8d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 145
    .line 146
    .line 147
    :goto_92
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_94
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_32

    .line 156
    throw v1
.end method
