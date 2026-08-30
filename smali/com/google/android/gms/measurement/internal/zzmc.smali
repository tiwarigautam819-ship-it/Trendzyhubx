###### Class com.google.android.gms.measurement.internal.zzmc (com.google.android.gms.measurement.internal.zzmc)
.class final Lcom/google/android/gms/measurement/internal/zzmc;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/w0;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/internal/measurement/w0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

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
    const-string v0, "Failed to get app instance id"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_46

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_36} :catch_44
    .catchall {:try_start_3 .. :try_end_36} :catchall_42

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    goto :goto_b2

    .line 69
    :catch_44
    move-exception v2

    .line 70
    goto :goto_99

    .line 71
    :cond_46
    :try_start_46
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 72
    .line 73
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_67

    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_5b} :catch_44
    .catchall {:try_start_46 .. :try_end_5b} :catchall_42

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_67
    :try_start_67
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 110
    .line 111
    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_88

    .line 116
    .line 117
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 138
    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_8d} :catch_44
    .catchall {:try_start_67 .. :try_end_8d} :catchall_42

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 149
    .line 150
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_99
    :try_start_99
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_42

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 174
    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_b2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/w0;

    .line 186
    .line 187
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0
.end method
