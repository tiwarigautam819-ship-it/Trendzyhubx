###### Class com.google.android.gms.measurement.internal.zzz (com.google.android.gms.measurement.internal.zzz)
.class final Lcom/google/android/gms/measurement/internal/zzz;
.super Lcom/google/android/gms/measurement/internal/zzaa;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zzg:Lcom/google/android/gms/internal/measurement/l2;

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l2;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/h4;Z)Z
    .registers 15

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o8;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbn:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l2;->s()Z

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l2;->t()Z

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l2;->u()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2e

    if-nez v2, :cond_2e

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v1, v4

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v5

    :goto_2f
    const/4 v2, 0x0

    if-eqz p4, :cond_5c

    if-nez v1, :cond_5c

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:I

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result p3

    if-eqz p3, :cond_56

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    :cond_56
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    .line 13
    :cond_5c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l2;->p()Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->s()Z

    move-result v7

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->E()Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v8

    if-nez v8, :cond_91

    .line 18
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    const-string v8, "No number filter for long property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_181

    .line 22
    :cond_91
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->w()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(JLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_181

    .line 24
    :cond_a3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->C()Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v8

    if-nez v8, :cond_ce

    .line 26
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    const-string v8, "No number filter for double property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_181

    .line 30
    :cond_ce
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->n()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(DLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v2

    .line 31
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_181

    .line 32
    :cond_e0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->G()Z

    move-result v8

    if-eqz v8, :cond_164

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->w()Z

    move-result v8

    if-nez v8, :cond_14d

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v8

    if-nez v8, :cond_110

    .line 35
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    const-string v8, "No string or number filter defined. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_181

    .line 39
    :cond_110
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12b

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;

    move-result-object v2

    .line 41
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_181

    .line 42
    :cond_12b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 44
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v8

    .line 46
    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_181

    .line 47
    :cond_14d
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/h2;->q()Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n2;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;

    move-result-object v2

    .line 48
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_181

    .line 49
    :cond_164
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    const-string v8, "User property has no value, property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :goto_181
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    if-nez v2, :cond_190

    .line 55
    const-string v7, "null"

    goto :goto_191

    :cond_190
    move-object v7, v2

    :goto_191
    const-string v8, "Property filter result"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_199

    return v4

    .line 56
    :cond_199
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/lang/Boolean;

    if-eqz v3, :cond_1a6

    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1a6

    goto :goto_1f7

    :cond_1a6
    if-eqz p4, :cond_1b0

    .line 58
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/l2;->s()Z

    move-result p4

    if-eqz p4, :cond_1b2

    .line 59
    :cond_1b0
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Boolean;

    .line 60
    :cond_1b2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_1f7

    if-eqz v1, :cond_1f7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->F()Z

    move-result p4

    if-eqz p4, :cond_1f7

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h4;->y()J

    move-result-wide p3

    if-eqz p1, :cond_1ca

    .line 62
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_1ca
    if-eqz v0, :cond_1e2

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->s()Z

    move-result p1

    if-eqz p1, :cond_1e2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->t()Z

    move-result p1

    if-nez p1, :cond_1e2

    if-eqz p2, :cond_1e2

    .line 64
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 65
    :cond_1e2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Lcom/google/android/gms/internal/measurement/l2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->t()Z

    move-result p1

    if-eqz p1, :cond_1f1

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    return v5

    .line 67
    :cond_1f1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    :cond_1f7
    :goto_1f7
    return v5
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
