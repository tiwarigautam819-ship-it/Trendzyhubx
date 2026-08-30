###### Class com.google.android.gms.measurement.internal.zzx (com.google.android.gms.measurement.internal.zzx)
.class final Lcom/google/android/gms/measurement/internal/zzx;
.super Lcom/google/android/gms/measurement/internal/zzaa;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/f2;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/f2;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/q3;JLcom/google/android/gms/measurement/internal/zzbb;Z)Z
    .registers 22

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbp:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->y()Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object/from16 v1, p6

    .line 6
    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zze:J

    goto :goto_20

    :cond_1e
    move-wide/from16 v1, p4

    .line 7
    :goto_20
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_82

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    iget v5, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:I

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v6

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_52

    :cond_51
    move-object v6, v4

    :goto_52
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f2;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    const-string v8, "Evaluating filter. audience, filter, event"

    invoke-virtual {v3, v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/f2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Filter definition"

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_82
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3f4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v3

    const/16 v6, 0x100

    if-le v3, v6, :cond_97

    goto/16 :goto_3f4

    .line 18
    :cond_97
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f2;->w()Z

    move-result v3

    .line 19
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->x()Z

    move-result v6

    .line 20
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f2;->y()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v3, :cond_b3

    if-nez v6, :cond_b3

    if-eqz v7, :cond_b1

    goto :goto_b3

    :cond_b1
    move v3, v5

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v3, v8

    :goto_b4
    if-eqz p7, :cond_e0

    if-nez v3, :cond_e0

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 25
    :cond_da
    const-string v1, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    .line 26
    :cond_e0
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    move-result v9

    if-eqz v9, :cond_102

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->t()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v9

    invoke-static {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(JLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_f8

    goto/16 :goto_399

    .line 30
    :cond_f8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_102

    .line 31
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_399

    .line 32
    :cond_102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->v()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_148

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/h2;

    .line 34
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_140

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v6, "null or empty param name in filter. event"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_399

    .line 39
    :cond_140
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 40
    :cond_148
    new-instance v2, Ls/e;

    .line 41
    invoke-direct {v2, v5}, Ls/j;-><init>(I)V

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_155
    :goto_155
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/u3;

    .line 43
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_155

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v11

    if-eqz v11, :cond_189

    .line 45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v12

    if-eqz v12, :cond_184

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_185

    :cond_184
    move-object v10, v4

    :goto_185
    invoke-virtual {v2, v11, v10}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_155

    .line 46
    :cond_189
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v11

    if-eqz v11, :cond_1a7

    .line 47
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v12

    if-eqz v12, :cond_1a2

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_1a3

    :cond_1a2
    move-object v10, v4

    .line 48
    :goto_1a3
    invoke-virtual {v2, v11, v10}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_155

    .line 49
    :cond_1a7
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v11

    if-eqz v11, :cond_1b9

    .line 50
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_155

    .line 51
    :cond_1b9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    const-string v7, "Unknown value for param. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_399

    .line 56
    :cond_1e2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f2;->v()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_397

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/h2;

    .line 57
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->t()Z

    move-result v9

    if-eqz v9, :cond_204

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->s()Z

    move-result v9

    if-eqz v9, :cond_204

    move v9, v8

    goto :goto_205

    :cond_204
    move v9, v5

    .line 58
    :goto_205
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_22a

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v6, "Event has empty param name. event"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_399

    .line 64
    :cond_22a
    invoke-virtual {v2, v10}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 65
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_279

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v12

    if-nez v12, :cond_25d

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 70
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    const-string v7, "No number filter for long param. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_399

    .line 72
    :cond_25d
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v6

    invoke-static {v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(JLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_26f

    goto/16 :goto_399

    .line 73
    :cond_26f
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_1ea

    .line 74
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_399

    .line 75
    :cond_279
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_2c4

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v12

    if-nez v12, :cond_2a8

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 80
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    const-string v7, "No number filter for double param. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_399

    .line 82
    :cond_2a8
    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v6

    invoke-static {v10, v11, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(DLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_2ba

    goto/16 :goto_399

    .line 83
    :cond_2ba
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_1ea

    .line 84
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_399

    .line 85
    :cond_2c4
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_34b

    .line 86
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->w()Z

    move-result v12

    if-eqz v12, :cond_2df

    .line 87
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->q()Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v6

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    invoke-static {v11, v6, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n2;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2f5

    .line 88
    :cond_2df
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v12

    if-eqz v12, :cond_327

    .line 89
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_303

    .line 90
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_2f5
    if-nez v6, :cond_2f9

    goto/16 :goto_399

    .line 91
    :cond_2f9
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v9, :cond_1ea

    .line 92
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_399

    .line 93
    :cond_303
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    const-string v7, "Invalid param value for number filter. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_399

    .line 98
    :cond_327
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 101
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    const-string v7, "No filter for String param. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_399

    :cond_34b
    if-nez v11, :cond_373

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v6, "Missing param for filter. event, param"

    invoke-virtual {v1, v6, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_399

    .line 109
    :cond_373
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    const-string v7, "Unknown param type. event, param"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_399

    .line 114
    :cond_397
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    :goto_399
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    if-nez v4, :cond_3a8

    const-string v2, "null"

    goto :goto_3a9

    :cond_3a8
    move-object v2, v4

    :goto_3a9
    const-string v6, "Event filter result"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_3b1

    return v5

    .line 116
    :cond_3b1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3bc

    goto :goto_3f3

    .line 118
    :cond_3bc
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Boolean;

    if-eqz v3, :cond_3f3

    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/q3;->F()Z

    move-result v1

    if-eqz v1, :cond_3f3

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/q3;->z()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f2;->x()Z

    move-result v2

    if-eqz v2, :cond_3e5

    if-eqz v0, :cond_3e1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    move-result v0

    if-eqz v0, :cond_3e1

    goto :goto_3e2

    :cond_3e1
    move-object p1, v1

    .line 123
    :goto_3e2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    return v8

    :cond_3e5
    if-eqz v0, :cond_3f1

    .line 124
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    move-result p1

    if-eqz p1, :cond_3f1

    move-object/from16 v1, p2

    .line 125
    :cond_3f1
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    :cond_3f3
    :goto_3f3
    return v8

    .line 126
    :cond_3f4
    :goto_3f4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v1

    if-eqz v1, :cond_416

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_416
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "Invalid event filter ID. appId, id"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzg:Lcom/google/android/gms/internal/measurement/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
