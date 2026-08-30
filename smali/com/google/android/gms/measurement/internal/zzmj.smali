###### Class com.google.android.gms.measurement.internal.zzmj (com.google.android.gms.measurement.internal.zzmj)
.class final Lcom/google/android/gms/measurement/internal/zzmj;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzbf;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;ZLcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:Z

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

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
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_18

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Discarding data. Failed to send event to service"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Z

    .line 26
    .line 27
    if-eqz v1, :cond_32

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:Z

    .line 37
    .line 38
    if-eqz v2, :cond_29

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 43
    .line 44
    :goto_2b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzgb;Ly3/a;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_12a

    .line 50
    .line 51
    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzce:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    :try_start_40
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_cf

    .line 72
    .line 73
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 74
    .line 75
    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    if-eqz v1, :cond_7f

    .line 79
    .line 80
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lb4/b;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_60} :catch_7d

    .line 97
    :try_start_60
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lb4/b;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_71} :catch_78

    .line 114
    move-wide v12, v6

    .line 115
    move-wide v7, v4

    .line 116
    goto :goto_81

    .line 117
    :goto_74
    move-wide v12, v2

    .line 118
    move-wide v7, v4

    .line 119
    goto/16 :goto_e1

    .line 120
    .line 121
    :catch_78
    move-exception v0

    .line 122
    goto :goto_74

    .line 123
    :goto_7a
    move-wide v7, v2

    .line 124
    move-wide v12, v7

    .line 125
    goto :goto_e1

    .line 126
    :catch_7d
    move-exception v0

    .line 127
    goto :goto_7a

    .line 128
    :cond_7f
    move-wide v7, v2

    .line 129
    move-wide v12, v7

    .line 130
    :goto_81
    :try_start_81
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 131
    .line 132
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 133
    .line 134
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 135
    .line 136
    .line 137
    if-eqz v1, :cond_12a

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v4, "Logging telemetry for logEvent"

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lb4/b;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v9

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lb4/b;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v5

    .line 196
    sub-long/2addr v5, v12

    .line 197
    long-to-int v11, v5

    .line 198
    const v5, 0x8dcd

    .line 199
    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(IIJJI)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_cc} :catch_cd

    .line 203
    .line 204
    .line 205
    goto :goto_12a

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    goto :goto_e1

    .line 208
    :cond_cf
    :try_start_cf
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 209
    .line 210
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzx()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_e0} :catch_7d

    .line 223
    .line 224
    .line 225
    goto :goto_12a

    .line 226
    :goto_e1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzls;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const-string v5, "Failed to send event to the service"

    .line 237
    .line 238
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    if-eqz v1, :cond_12a

    .line 242
    .line 243
    cmp-long v0, v7, v2

    .line 244
    .line 245
    if-eqz v0, :cond_12a

    .line 246
    .line 247
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 250
    .line 251
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lb4/b;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v9

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lb4/a;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lb4/b;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 286
    .line 287
    .line 288
    move-result-wide v0

    .line 289
    sub-long/2addr v0, v12

    .line 290
    long-to-int v11, v0

    .line 291
    const v5, 0x8dcd

    .line 292
    .line 293
    .line 294
    const/16 v6, 0xd

    .line 295
    .line 296
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(IIJJI)V

    .line 297
    .line 298
    .line 299
    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method
