###### Class com.google.android.gms.measurement.internal.zzli (com.google.android.gms.measurement.internal.zzli)
.class final Lcom/google/android/gms/measurement/internal/zzli;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


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

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)[B
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    .line 2
    const-string v2, "_r"

    const-wide/16 v4, 0x1

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzy()V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzbl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_39

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-array v0, v8, [B

    return-object v0

    .line 11
    :cond_39
    const-string v7, "_iap"

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_5e

    const-string v7, "_iapx"

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    .line 16
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x3;->v()Lcom/google/android/gms/internal/measurement/w3;

    move-result-object v7

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 18
    :try_start_69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v10

    if-nez v10, :cond_8d

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-array v0, v8, [B
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_8a

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-object v0

    :catchall_8a
    move-exception v0

    goto/16 :goto_66f

    .line 22
    :cond_8d
    :try_start_8d
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result v11

    if-nez v11, :cond_aa

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-array v0, v8, [B
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_8a

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-object v0

    .line 26
    :cond_aa
    :try_start_aa
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z3;->c2()Lcom/google/android/gms/internal/measurement/y3;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 28
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/z3;->n1(Lcom/google/android/gms/internal/measurement/z3;)V

    .line 29
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 30
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/z3;->S1(Lcom/google/android/gms/internal/measurement/z3;)V

    .line 31
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_da

    .line 32
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 34
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/measurement/z3;->h0(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 35
    :cond_da
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f5

    .line 36
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 38
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/measurement/z3;->V0(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 39
    :cond_f5
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_110

    .line 40
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 42
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/measurement/z3;->c1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 43
    :cond_110
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    const-wide/32 v14, -0x80000000

    cmp-long v12, v12, v14

    if-eqz v12, :cond_12a

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    long-to-int v12, v12

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 46
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/measurement/z3;->T0(Lcom/google/android/gms/internal/measurement/z3;I)V

    .line 47
    :cond_12a
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v12

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 49
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v14, v12, v13}, Lcom/google/android/gms/internal/measurement/z3;->h1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 50
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v12

    .line 51
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 52
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v14, v12, v13}, Lcom/google/android/gms/internal/measurement/z3;->U0(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 53
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v12

    .line 54
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_15f

    .line 56
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 57
    iget-object v13, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/measurement/z3;->M1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    goto :goto_16f

    .line 58
    :cond_15f
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_16f

    .line 59
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 60
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/measurement/z3;->A(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 61
    :cond_16f
    :goto_16f
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v12

    .line 62
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 63
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v14, v12, v13}, Lcom/google/android/gms/internal/measurement/z3;->A1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 64
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v12, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v12

    .line 65
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v13

    .line 66
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 67
    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v15, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/measurement/z3;->L0(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 68
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v13

    if-eqz v13, :cond_1bf

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y3;->x()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zzj(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1bf

    .line 69
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v13

    if-eqz v13, :cond_1bf

    .line 70
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1b4

    goto :goto_1bf

    .line 71
    :cond_1b4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 72
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/measurement/z3;->B1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    throw v9

    .line 73
    :cond_1bf
    :goto_1bf
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zze()Ljava/lang/String;

    move-result-object v13

    .line 74
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 75
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v14, v13}, Lcom/google/android/gms/internal/measurement/z3;->m1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v13

    if-eqz v13, :cond_240

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v13

    if-eqz v13, :cond_240

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    move-result-object v13

    .line 78
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)Landroid/util/Pair;

    move-result-object v13

    .line 79
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v14

    if-eqz v14, :cond_240

    if-eqz v13, :cond_240

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    .line 80
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1f5
    .catchall {:try_start_aa .. :try_end_1f5} :catchall_8a

    if-nez v14, :cond_240

    .line 81
    :try_start_1f7
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v14, v4}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 85
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->U1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V
    :try_end_20f
    .catch Ljava/lang/SecurityException; {:try_start_1f7 .. :try_end_20f} :catch_224
    .catchall {:try_start_1f7 .. :try_end_20f} :catchall_8a

    .line 86
    :try_start_20f
    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_240

    .line 87
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 88
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 89
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->O0(Lcom/google/android/gms/internal/measurement/z3;Z)V

    goto :goto_240

    :catch_224
    move-exception v0

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    new-array v0, v8, [B
    :try_end_238
    .catchall {:try_start_20f .. :try_end_238} :catchall_8a

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-object v0

    .line 93
    :cond_240
    :goto_240
    :try_start_240
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 95
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 96
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 97
    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v4, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/z3;->x1(Lcom/google/android/gms/internal/measurement/z3;)V

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 100
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 102
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->Q1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()J

    move-result-wide v4

    long-to-int v4, v4

    .line 104
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 105
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->v1(Lcom/google/android/gms/internal/measurement/z3;I)V

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaz;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 108
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->Y1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V
    :try_end_28b
    .catchall {:try_start_240 .. :try_end_28b} :catchall_8a

    .line 109
    :try_start_28b
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v4

    if-eqz v4, :cond_2b8

    .line 110
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b8

    .line 111
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 112
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v4, v5}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 115
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->M0(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V
    :try_end_2b2
    .catch Ljava/lang/SecurityException; {:try_start_28b .. :try_end_2b2} :catch_2b6
    .catchall {:try_start_28b .. :try_end_2b2} :catchall_8a

    goto :goto_2b8

    :goto_2b3
    move v2, v8

    goto/16 :goto_654

    :catch_2b6
    move-exception v0

    goto :goto_2b3

    .line 116
    :cond_2b8
    :goto_2b8
    :try_start_2b8
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d3

    .line 117
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 119
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->I1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 120
    :cond_2d3
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 122
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2e3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2fc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzop;

    .line 123
    const-string v14, "_lte"

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2fa

    goto :goto_2fd

    :cond_2fa
    const/4 v8, 0x0

    goto :goto_2e3

    :cond_2fc
    move-object v13, v9

    :goto_2fd
    const-wide/16 v24, 0x0

    if-eqz v13, :cond_305

    .line 124
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    if-nez v8, :cond_32d

    .line 125
    :cond_305
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzop;

    const-string v19, "auto"

    const-string v20, "_lte"

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v8

    check-cast v8, Lb4/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 128
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v18, v4

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v4, v17

    .line 129
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    .line 131
    :cond_32d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/h4;

    const/4 v8, 0x0

    .line 132
    :goto_334
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_37d

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/measurement/h4;->z()Lcom/google/android/gms/internal/measurement/g4;

    move-result-object v12

    .line 134
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    .line 135
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 136
    iget-object v14, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {v14, v13}, Lcom/google/android/gms/internal/measurement/h4;->q(Lcom/google/android/gms/internal/measurement/h4;Ljava/lang/String;)V

    .line 137
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzop;

    iget-wide v13, v13, Lcom/google/android/gms/measurement/internal/zzop;->zzd:J

    .line 138
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 139
    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v9, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {v9, v13, v14}, Lcom/google/android/gms/internal/measurement/h4;->u(Lcom/google/android/gms/internal/measurement/h4;J)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v9

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/g4;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/h4;

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_334

    .line 142
    :cond_37d
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 143
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 144
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/z3;->d1(Lcom/google/android/gms/internal/measurement/z3;Ljava/util/List;)V

    .line 145
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/y3;)V

    .line 146
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    .line 147
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/y3;)V

    .line 148
    :cond_3a6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 151
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v8

    .line 154
    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzgs;I)V

    .line 155
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    .line 156
    const-string v5, "_c"

    const-wide/16 v8, 0x1

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v12, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v5, "_o"

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/y3;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40c

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    const-string v8, "_dbg"

    invoke-virtual {v5, v4, v8, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    :cond_40c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    if-nez v2, :cond_442

    .line 164
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbb;

    move-object v5, v4

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    move-object v6, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v5

    move-object v8, v6

    const-wide/16 v5, 0x0

    move-object v13, v7

    move-object v14, v8

    const-wide/16 v7, 0x0

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    const-wide/16 v11, 0x0

    move-object/from16 v20, v13

    const/4 v13, 0x0

    move-object/from16 v21, v14

    const/4 v14, 0x0

    move-object/from16 v26, v20

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v9, v24

    :goto_440
    move-object v12, v2

    goto :goto_456

    :cond_442
    move-object/from16 v19, v4

    move-object/from16 v26, v7

    move-object/from16 v21, v10

    move-object/from16 v18, v11

    const/16 v17, 0x0

    .line 165
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    .line 166
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 167
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(J)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    move-wide v9, v3

    goto :goto_440

    .line 168
    :goto_456
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 169
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    move-object/from16 v5, p2

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v3, v5

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->A()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    .line 171
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 172
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/q3;->x(JLcom/google/android/gms/internal/measurement/q3;)V

    .line 173
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    .line 174
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/p3;->j(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    .line 175
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 176
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/q3;->q(JLcom/google/android/gms/internal/measurement/q3;)V

    .line 177
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_496
    :goto_496
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/t3;->i(Ljava/lang/String;)V

    .line 179
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_496

    .line 180
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/t3;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/p3;->h(Lcom/google/android/gms/internal/measurement/t3;)V

    goto :goto_496

    .line 182
    :cond_4bc
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    move-object/from16 v2, v18

    .line 183
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/z3;->w(Lcom/google/android/gms/internal/measurement/z3;Lcom/google/android/gms/internal/measurement/q3;)V

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->o()Lcom/google/android/gms/internal/measurement/a4;

    move-result-object v5

    .line 185
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s3;->p()Lcom/google/android/gms/internal/measurement/r3;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    .line 186
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 187
    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v9, Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/s3;->n(Lcom/google/android/gms/internal/measurement/s3;J)V

    .line 188
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 190
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/measurement/s3;->o(Lcom/google/android/gms/internal/measurement/s3;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 192
    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b4;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/s3;

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/measurement/b4;->n(Lcom/google/android/gms/internal/measurement/b4;Lcom/google/android/gms/internal/measurement/s3;)V

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 194
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/b4;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/measurement/z3;->x(Lcom/google/android/gms/internal/measurement/z3;Lcom/google/android/gms/internal/measurement/b4;)V

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzg()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v6

    .line 196
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v7

    .line 197
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y3;->n()Ljava/util/List;

    move-result-object v9

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->m()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->m()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 201
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 202
    check-cast v0, Ljava/util/List;

    .line 203
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 204
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v5, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/measurement/z3;->z(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/Iterable;)V

    .line 205
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/q3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q3;->F()Z

    move-result v0

    if-eqz v0, :cond_562

    .line 206
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->m()J

    move-result-wide v5

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 208
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/measurement/z3;->w1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p3;->m()J

    move-result-wide v4

    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 211
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/z3;->b1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 212
    :cond_562
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v4

    cmp-long v0, v4, v24

    if-eqz v0, :cond_574

    .line 213
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 214
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/measurement/z3;->l1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 215
    :cond_574
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-eqz v8, :cond_587

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 217
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/z3;->r1(Lcom/google/android/gms/internal/measurement/z3;J)V

    goto :goto_593

    :cond_587
    if-eqz v0, :cond_593

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 219
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/z3;->r1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 220
    :cond_593
    :goto_593
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v0

    .line 221
    sget-object v4, Lcom/google/android/gms/internal/measurement/y9;->b:Lcom/google/android/gms/internal/measurement/y9;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y9;->get()Ljava/lang/Object;

    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_5b4

    if-eqz v0, :cond_5b4

    .line 223
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 224
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v4, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/measurement/z3;->W1(Lcom/google/android/gms/internal/measurement/z3;Ljava/lang/String;)V

    .line 225
    :cond_5b4
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzap()V

    .line 226
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v4

    long-to-int v0, v4

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 228
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v4, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/measurement/z3;->a1(Lcom/google/android/gms/internal/measurement/z3;I)V

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 230
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z3;->J1(Lcom/google/android/gms/internal/measurement/z3;)V

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 233
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 234
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/z3;->E1(Lcom/google/android/gms/internal/measurement/z3;J)V

    .line 235
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 236
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/z3;->X0(Lcom/google/android/gms/internal/measurement/z3;Z)V

    .line 237
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y3;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y3;)V

    move-object/from16 v13, v26

    .line 238
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/measurement/w3;->h(Lcom/google/android/gms/internal/measurement/y3;)V

    .line 239
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z3;->T1()J

    move-result-wide v4

    move-object/from16 v14, v21

    .line 240
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    .line 241
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v4

    .line 242
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v0, v14, v2, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_627
    .catchall {:try_start_2b8 .. :try_end_627} :catchall_8a

    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 247
    :try_start_62e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb([B)[B

    move-result-object v0
    :try_end_640
    .catch Ljava/io/IOException; {:try_start_62e .. :try_end_640} :catch_641

    return-object v0

    :catch_641
    move-exception v0

    .line 248
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 250
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 251
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v17

    .line 252
    :goto_654
    :try_start_654
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    new-array v0, v2, [B
    :try_end_667
    .catchall {:try_start_654 .. :try_end_667} :catchall_8a

    .line 254
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-object v0

    .line 255
    :goto_66f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 256
    throw v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
