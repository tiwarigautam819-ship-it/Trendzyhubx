###### Class com.google.android.gms.measurement.internal.zzlz (com.google.android.gms.measurement.internal.zzlz)
.class final Lcom/google/android/gms/measurement/internal/zzlz;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_4a

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3c} :catch_48
    .catchall {:try_start_3 .. :try_end_3c} :catchall_46

    .line 59
    .line 60
    .line 61
    :try_start_3c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 64
    .line 65
    .line 66
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_43

    .line 67
    return-void

    .line 68
    :catchall_43
    move-exception v1

    .line 69
    goto/16 :goto_bd

    .line 70
    .line 71
    :catchall_46
    move-exception v1

    .line 72
    goto :goto_b7

    .line 73
    :catch_48
    move-exception v1

    .line 74
    goto :goto_a1

    .line 75
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_68

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "Failed to get app instance id"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_61} :catch_48
    .catchall {:try_start_4a .. :try_end_61} :catchall_46

    .line 96
    .line 97
    .line 98
    :try_start_61
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_43

    .line 104
    return-void

    .line 105
    :cond_68
    :try_start_68
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 113
    .line 114
    invoke-interface {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_96

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_96
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_9b} :catch_48
    .catchall {:try_start_68 .. :try_end_9b} :catchall_46

    .line 154
    .line 155
    .line 156
    :try_start_9b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_43

    .line 159
    .line 160
    .line 161
    goto :goto_b5

    .line 162
    :goto_a1
    :try_start_a1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "Failed to get app instance id"

    .line 173
    .line 174
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_46

    .line 175
    .line 176
    .line 177
    :try_start_b0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 180
    .line 181
    .line 182
    :goto_b5
    monitor-exit v0

    .line 183
    return-void

    .line 184
    :goto_b7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :goto_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_b0 .. :try_end_be} :catchall_43

    .line 191
    throw v1
.end method
