###### Class com.google.android.gms.measurement.internal.zzt (com.google.android.gms.measurement.internal.zzt)
.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzv;

    return-object p1

    .line 3
    :cond_11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zza(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/h4;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_12c

    .line 179
    :cond_8
    new-instance v0, Ls/e;

    const/4 v1, 0x0

    .line 180
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h4;

    .line 182
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v0, v3}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_37

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 185
    invoke-virtual {v0, v3, v4}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_37
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 187
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Skipping failed audience ID"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    .line 189
    :cond_65
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 190
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_70
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_123

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/l2;

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c6

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 193
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    .line 194
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v11

    if-eqz v11, :cond_9f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_a0

    :cond_9f
    move-object v11, v10

    .line 195
    :goto_a0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->r()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 196
    const-string v13, "Evaluating filter. audience, filter, property"

    invoke-virtual {v9, v13, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 198
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/l2;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Filter definition"

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_c6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v9

    if-eqz v9, :cond_fd

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_d5

    goto :goto_fd

    .line 201
    :cond_d5
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-direct {v9, p0, v10, v6, v8}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l2;)V

    .line 202
    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 203
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zza(II)Z

    move-result v8

    .line 204
    invoke-virtual {v9, v10, v11, v2, v8}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/h4;Z)Z

    move-result v8

    if-eqz v8, :cond_f7

    .line 205
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v10

    .line 206
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    goto/16 :goto_70

    .line 207
    :cond_f7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_123

    .line 208
    :cond_fd
    :goto_fd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 209
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 210
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 211
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v9

    if-eqz v9, :cond_119

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_119
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 212
    const-string v9, "Invalid property filter ID. appId, id"

    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v8, v1

    :cond_123
    :goto_123
    if-nez v8, :cond_3f

    .line 213
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    :cond_12c
    :goto_12c
    return-void
.end method

.method private final zza(Ljava/util/List;Z)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/q3;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 138
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_179

    .line 139
    :cond_a
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzy;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 140
    new-instance v3, Ls/e;

    const/4 v4, 0x0

    .line 141
    invoke-direct {v3, v4}, Ls/j;-><init>(I)V

    .line 142
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_179

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/q3;

    .line 143
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q3;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v10

    if-eqz v10, :cond_16d

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v12, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    if-nez v8, :cond_7e

    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 148
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    .line 149
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v8, v7, v9, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 153
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v13

    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->z()J

    move-result-wide v20

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v14, 0x1

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x1

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v30, v1

    move-object/from16 v29, v3

    move-object v13, v11

    goto :goto_b2

    .line 155
    :cond_7e
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    const-wide/16 v15, 0x1

    add-long/2addr v5, v15

    move-object/from16 v29, v3

    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    add-long v17, v2, v15

    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zze:J

    add-long v19, v2, v15

    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    move-object/from16 v30, v1

    move-wide/from16 v21, v2

    iget-wide v1, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzg:J

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    move-wide/from16 v23, v1

    move-object/from16 v25, v3

    move-wide v15, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    move-object/from16 v27, v9

    invoke-direct/range {v12 .. v28}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v13, v12

    .line 156
    :goto_b2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_d3

    if-nez p2, :cond_cc

    goto :goto_d3

    :cond_cc
    move-object v2, v3

    move-object/from16 v3, v29

    :goto_cf
    move-object/from16 v1, v30

    goto/16 :goto_1a

    .line 160
    :cond_d3
    :goto_d3
    iget-wide v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    .line 161
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v29

    .line 162
    invoke-virtual {v2, v1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_f0

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 164
    invoke-virtual {v2, v1, v5}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_f0
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f8
    :goto_f8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_168

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 166
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Skipping failed audience ID"

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f8

    .line 168
    :cond_11e
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 169
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v7, 0x1

    :goto_129
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_160

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/f2;

    .line 170
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzx;

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-direct {v8, v0, v9, v15, v7}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/f2;)V

    move-object v9, v7

    move-object v7, v8

    .line 171
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    move-object v14, v9

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 172
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v14

    invoke-direct {v0, v15, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(II)Z

    move-result v14

    .line 173
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/q3;JLcom/google/android/gms/measurement/internal/zzbb;Z)Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 174
    invoke-direct {v0, v6}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v9

    .line 175
    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    move v7, v8

    goto :goto_129

    .line 176
    :cond_15a
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v7, v8

    :cond_160
    if-nez v7, :cond_f8

    .line 177
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    :cond_168
    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_cf

    :cond_16d
    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    move-object/from16 v31, v3

    move-object v3, v2

    move-object/from16 v2, v31

    goto/16 :goto_1a

    :cond_179
    :goto_179
    return-void
.end method

.method private final zza(II)Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzv;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    .line 215
    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzv;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method private final zzu()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_9c

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/google/android/gms/measurement/internal/zzv;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzv;->zza(I)Lcom/google/android/gms/internal/measurement/m3;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m3;->t()Lcom/google/android/gms/internal/measurement/d4;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v6, Landroid/content/ContentValues;

    .line 82
    .line 83
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v7, "app_id"

    .line 87
    .line 88
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v7, "audience_id"

    .line 92
    .line 93
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    .line 95
    .line 96
    const-string v2, "current_results"

    .line 97
    .line 98
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 99
    .line 100
    .line 101
    :try_start_64
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "audience_filter_values"

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x5

    .line 109
    invoke-virtual {v2, v3, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    const-wide/16 v6, -0x1

    .line 114
    .line 115
    cmp-long v2, v2, v6

    .line 116
    .line 117
    if-nez v2, :cond_14

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 128
    .line 129
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_87} :catch_88

    .line 134
    .line 135
    .line 136
    goto :goto_14

    .line 137
    :catch_88
    move-exception v2

    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const-string v4, "Error storing filter results. appId"

    .line 147
    .line 148
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_14

    .line 156
    .line 157
    :cond_9c
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/q3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/h4;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m3;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/q3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/h4;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m3;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 8
    invoke-static {v10}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 9
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 11
    new-instance v0, Ls/e;

    const/4 v12, 0x0

    .line 12
    invoke-direct {v0, v12}, Ls/j;-><init>(I)V

    .line 13
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    .line 14
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    .line 15
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 16
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;

    .line 17
    const-string v3, "_s"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    move v2, v12

    .line 18
    :goto_4b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbp:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 20
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v14

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbo:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 23
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v15

    if-eqz v2, :cond_aa

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 27
    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    const-string v5, "current_session_count"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    :try_start_88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 31
    const-string v6, "events"

    const-string v7, "app_id = ?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_97} :catch_98

    goto :goto_aa

    :catch_98
    move-exception v0

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v5, "Error resetting session-scoped event counts. appId"

    .line 34
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    :cond_aa
    :goto_aa
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-eqz v15, :cond_ba

    if-eqz v14, :cond_ba

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzn(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 38
    :cond_ba
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzm(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3ec

    .line 40
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_229

    .line 41
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 44
    new-instance v2, Ls/e;

    .line 45
    invoke-direct {v2, v12}, Ls/j;-><init>(I)V

    .line 46
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_223

    .line 47
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_223

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/measurement/d4;

    .line 49
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const/16 p4, 0x1

    move-object/from16 v13, v16

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_120

    .line 50
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_128

    :cond_120
    move-object/from16 p5, v4

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    goto/16 :goto_21f

    .line 51
    :cond_128
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v12

    move-object/from16 p5, v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d4;->C()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v12, v4, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 52
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_21c

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v12

    .line 54
    check-cast v12, Lcom/google/android/gms/internal/measurement/c4;

    .line 55
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    move-object/from16 v17, v4

    .line 56
    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v4, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/d4;->r(Lcom/google/android/gms/internal/measurement/d4;)V

    .line 57
    move-object/from16 v4, v17

    check-cast v4, Ljava/util/List;

    .line 58
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    move-object/from16 v17, v6

    .line 59
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/d4;->s(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d4;->E()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 61
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 62
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/d4;->x(Lcom/google/android/gms/internal/measurement/d4;)V

    .line 63
    check-cast v4, Ljava/util/List;

    .line 64
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 65
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/d4;->y(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d4;->B()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1b5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/google/android/gms/internal/measurement/o3;

    .line 68
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/o3;->n()I

    move-result v18

    move-object/from16 v20, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b0

    .line 69
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b0
    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_18d

    :cond_1b5
    move-object/from16 v20, v7

    .line 70
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 71
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/d4;->o(Lcom/google/android/gms/internal/measurement/d4;)V

    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 73
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/d4;->p(Lcom/google/android/gms/internal/measurement/d4;Ljava/util/ArrayList;)V

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d4;->D()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d8
    :goto_1d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/f4;

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f4;->r()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d8

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d8

    .line 78
    :cond_1f6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 79
    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/d4;->u(Lcom/google/android/gms/internal/measurement/d4;)V

    .line 80
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 81
    iget-object v5, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/d4;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/d4;->v(Lcom/google/android/gms/internal/measurement/d4;Ljava/lang/Iterable;)V

    .line 82
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/d4;

    invoke-virtual {v2, v8, v4}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_213
    move-object/from16 v4, p5

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    :goto_219
    const/4 v12, 0x0

    goto/16 :goto_f7

    :cond_21c
    move-object/from16 v4, p5

    goto :goto_219

    .line 83
    :goto_21f
    invoke-virtual {v2, v8, v5}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_213

    :cond_223
    move-object/from16 p5, v4

    const/16 p4, 0x1

    move-object v12, v2

    goto :goto_22e

    :cond_229
    move-object/from16 p5, v4

    const/16 p4, 0x1

    move-object v12, v3

    .line 84
    :goto_22e
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_232
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3ea

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/d4;

    move-object v5, v4

    .line 86
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    move-object v6, v5

    .line 87
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    move-object v7, v6

    .line 88
    new-instance v6, Ls/e;

    const/4 v8, 0x0

    .line 89
    invoke-direct {v6, v8}, Ls/j;-><init>(I)V

    if-eqz v7, :cond_2ac

    .line 90
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d4;->n()I

    move-result v8

    if-nez v8, :cond_263

    goto :goto_2ac

    .line 91
    :cond_263
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d4;->B()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2ac

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/o3;

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/o3;->t()Z

    move-result v18

    if-eqz v18, :cond_2a3

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/o3;->n()I

    move-result v18

    move-object/from16 p5, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 94
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/o3;->s()Z

    move-result v18

    if-eqz v18, :cond_29c

    .line 95
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/o3;->q()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v25, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v25

    goto :goto_29f

    :cond_29c
    move-object/from16 v17, v8

    const/4 v8, 0x0

    .line 96
    :goto_29f
    invoke-virtual {v6, v7, v8}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a7

    :cond_2a3
    move-object/from16 p5, v7

    move-object/from16 v17, v8

    :goto_2a7
    move-object/from16 v7, p5

    move-object/from16 v8, v17

    goto :goto_26b

    :cond_2ac
    :goto_2ac
    move-object/from16 p5, v7

    .line 97
    new-instance v7, Ls/e;

    const/4 v8, 0x0

    .line 98
    invoke-direct {v7, v8}, Ls/j;-><init>(I)V

    if-eqz p5, :cond_307

    .line 99
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/measurement/d4;->t()I

    move-result v16

    if-nez v16, :cond_2bd

    goto :goto_307

    .line 100
    :cond_2bd
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/measurement/d4;->D()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2c5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_307

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lcom/google/android/gms/internal/measurement/f4;

    .line 101
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f4;->u()Z

    move-result v17

    if-eqz v17, :cond_2fd

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f4;->n()I

    move-result v17

    if-lez v17, :cond_2fd

    .line 102
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f4;->r()I

    move-result v17

    move-object/from16 v19, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 103
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f4;->n()I

    move-result v17

    move-object/from16 v20, v13

    add-int/lit8 v13, v17, -0x1

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/f4;->o(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 104
    invoke-virtual {v7, v12, v8}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_301

    :cond_2fd
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    :goto_301
    move-object/from16 v12, v19

    move-object/from16 v13, v20

    const/4 v8, 0x0

    goto :goto_2c5

    :cond_307
    :goto_307
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    if-eqz p5, :cond_352

    const/4 v8, 0x0

    .line 105
    :goto_30e
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/measurement/d4;->w()I

    move-result v12

    shl-int/lit8 v12, v12, 0x6

    if-ge v8, v12, :cond_352

    .line 106
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/measurement/d4;->E()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;I)Z

    move-result v12

    if-eqz v12, :cond_344

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v12

    .line 108
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v12

    const-string v13, "Filter already evaluated. audience ID, filter ID"

    move/from16 v16, v14

    .line 109
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v2, v14}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 111
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/measurement/d4;->C()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;I)Z

    move-result v12

    if-eqz v12, :cond_346

    .line 112
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_34d

    :cond_344
    move/from16 v16, v14

    .line 113
    :cond_346
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34d
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v16

    goto :goto_30e

    :cond_352
    move/from16 v16, v14

    .line 114
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/d4;

    if-eqz v15, :cond_3ca

    if-eqz v16, :cond_3ca

    .line 115
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_3ca

    .line 116
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    if-eqz v13, :cond_3ca

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    if-nez v13, :cond_36f

    goto :goto_3ca

    .line 117
    :cond_36f
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_373
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3ca

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/f2;

    .line 118
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v14

    move-object/from16 v17, v0

    .line 119
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    .line 120
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/f2;->x()Z

    move-result v0

    if-eqz v0, :cond_39d

    .line 121
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    div-long v21, v21, v23

    .line 122
    :cond_39d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b2

    .line 123
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v0, v13}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3b2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    .line 125
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c7
    move-object/from16 v0, v17

    goto :goto_373

    :cond_3ca
    :goto_3ca
    move-object/from16 v17, v0

    .line 126
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzv;

    move-object v12, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    move-object v13, v3

    move-object v3, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d4;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 127
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v13

    move/from16 v14, v16

    move-object/from16 v0, v17

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto/16 :goto_232

    :cond_3ea
    :goto_3ea
    const/4 v14, 0x0

    goto :goto_3ef

    :cond_3ec
    const/16 p4, 0x1

    goto :goto_3ea

    .line 128
    :goto_3ef
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 130
    invoke-virtual {v0, v14, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_411

    .line 131
    invoke-direct {v1, v9, v11}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/util/List;Z)V

    if-eqz v11, :cond_409

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 133
    :cond_409
    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/util/List;)V

    .line 134
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzu()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_411
    move/from16 v2, p4

    .line 135
    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/util/List;Z)V

    .line 136
    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/util/List;)V

    .line 137
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzu()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
