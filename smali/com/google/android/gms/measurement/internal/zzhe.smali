###### Class com.google.android.gms.measurement.internal.zzhe (com.google.android.gms.measurement.internal.zzhe)
.class public final Lcom/google/android/gms/measurement/internal/zzhe;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Ljava/lang/String;J)V
    .registers 7

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 4
    :goto_11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->a(Z)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":start"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Ljava/lang/String;

    .line 6
    const-string p1, ":count"

    .line 7
    invoke-static {p2, p1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    .line 9
    const-string p1, ":value"

    .line 10
    invoke-static {p2, p1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzd:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzhg;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zzha;Ljava/lang/String;J)V

    return-void
.end method

.method private final zzb()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private final zzc()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lb4/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zza:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final zza()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzc()V

    move-wide v0, v2

    goto :goto_2d

    .line 5
    :cond_19
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v4

    check-cast v4, Lb4/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 8
    :goto_2d
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzd:J

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-gez v6, :cond_35

    return-object v7

    :cond_35
    const/4 v6, 0x1

    shl-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_3f

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzc()V

    return-object v7

    .line 10
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzc()V

    if-eqz v0, :cond_6b

    cmp-long v1, v4, v2

    if-gtz v1, :cond_61

    goto :goto_6b

    .line 13
    :cond_61
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 14
    :cond_6b
    :goto_6b
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzha;->zza:Landroid/util/Pair;

    return-object v0
.end method

.method public final zza(Ljava/lang/String;J)V
    .registers 11

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_12

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzc()V

    :cond_12
    if-nez p1, :cond_16

    .line 18
    const-string p1, ""

    .line 19
    :cond_16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_40

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    invoke-interface {p2, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 24
    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v3, v5

    add-long/2addr p2, v1

    .line 25
    div-long/2addr v5, p2

    cmp-long v0, v3, v5

    if-gez v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 26
    :goto_5d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zze:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzha;->zzg()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_6e

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzc:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    :cond_6e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhe;->zzb:Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
