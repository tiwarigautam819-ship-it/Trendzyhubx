###### Class com.google.android.gms.measurement.internal.zzlj (com.google.android.gms.measurement.internal.zzlj)
.class public final Lcom/google/android/gms/measurement/internal/zzlj;
.super Lcom/google/android/gms/measurement/internal/zzh;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzlk;

.field private volatile zzb:Lcom/google/android/gms/measurement/internal/zzlk;

.field private volatile zzc:Lcom/google/android/gms/measurement/internal/zzlk;

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzlk;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Landroid/app/Activity;

.field private volatile zzf:Z

.field private volatile zzg:Lcom/google/android/gms/measurement/internal/zzlk;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzlk;

.field private zzi:Z

.field private final zzj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzlj;)Lcom/google/android/gms/measurement/internal/zzlk;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzh:Lcom/google/android/gms/measurement/internal/zzlk;

    return-object p0
.end method

.method private final zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p2

    .line 11
    :cond_7
    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length p2, p1

    if-lez p2, :cond_16

    .line 13
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    goto :goto_18

    .line 14
    :cond_16
    const-string p1, ""

    .line 15
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v0

    if-le p2, v0, :cond_34

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_34
    return-object p1
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzlk;Z)V
    .registers 16

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    :goto_6
    move-object v3, v2

    goto :goto_b

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    goto :goto_6

    .line 23
    :goto_b
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    if-nez v2, :cond_2e

    if-eqz p1, :cond_1d

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "Activity"

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    move-object v6, v2

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1b

    .line 25
    :goto_1f
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    iget-wide v7, p2, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    iget-boolean v9, p2, Lcom/google/android/gms/measurement/internal/zzlk;->zze:Z

    iget-wide v10, p2, Lcom/google/android/gms/measurement/internal/zzlk;->zzf:J

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v4

    goto :goto_2f

    :cond_2e
    move-object v2, p2

    .line 26
    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 27
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzll;

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZ)V

    .line 31
    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V
    .registers 19

    if-eqz p1, :cond_c

    .line 17
    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 18
    const-string v0, "screen_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 19
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 20
    const-string v2, "screen_view"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v9, p4

    .line 21
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;)V
    .registers 2

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzh:Lcom/google/android/gms/measurement/internal/zzlk;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V
    .registers 7

    .line 3
    const/4 p6, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;ZJ)V
    .registers 5

    .line 4
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlk;ZJ)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V
    .registers 21

    move-object v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p6

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzt()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_2d

    .line 33
    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2d

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    .line 34
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    .line 35
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v7, v5

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v7, v6

    :goto_2e
    if-eqz p5, :cond_35

    .line 36
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    if-eqz v8, :cond_35

    move v5, v6

    :cond_35
    if-eqz v7, :cond_bc

    .line 37
    new-instance v7, Landroid/os/Bundle;

    if-eqz v4, :cond_40

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_3e
    move-object v13, v7

    goto :goto_44

    :cond_40
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_3e

    .line 38
    :goto_44
    invoke-static {p1, v13, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V

    if-eqz v1, :cond_62

    .line 39
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    if-eqz v4, :cond_52

    .line 40
    const-string v7, "_pn"

    invoke-virtual {v13, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_52
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    if-eqz v4, :cond_5b

    .line 42
    const-string v7, "_pc"

    invoke-virtual {v13, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_5b
    const-string v4, "_pi"

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    invoke-virtual {v13, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_62
    const-wide/16 v7, 0x0

    if-eqz v5, :cond_7b

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/zznh;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zznh;->zza(J)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-lez v1, :cond_7b

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1, v13, v9, v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;J)V

    .line 47
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 48
    const-string v1, "_mst"

    const-wide/16 v9, 0x1

    invoke-virtual {v13, v1, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 49
    :cond_8c
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zze:Z

    if-eqz v1, :cond_94

    .line 50
    const-string v1, "app"

    :goto_92
    move-object v9, v1

    goto :goto_97

    .line 51
    :cond_94
    const-string v1, "auto"

    goto :goto_92

    .line 52
    :goto_97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 54
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zze:Z

    if-eqz v1, :cond_b2

    move-wide/from16 p5, v7

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zzf:J

    cmp-long v1, v7, p5

    if-eqz v1, :cond_b2

    move-wide v11, v7

    goto :goto_b3

    :cond_b2
    move-wide v11, v10

    .line 55
    :goto_b3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v8

    const-string v10, "_vs"

    .line 56
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_bc
    if-eqz v5, :cond_c3

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Lcom/google/android/gms/measurement/internal/zzlk;ZJ)V

    .line 58
    :cond_c3
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 59
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zze:Z

    if-eqz v1, :cond_cb

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzh:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 61
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzlk;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzlk;ZJ)V
    .registers 8

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 79
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzlk;->zzd:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v0

    .line 80
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_2c

    if-eqz p1, :cond_2c

    .line 82
    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzlk;->zzd:Z

    :cond_2c
    return-void
.end method

.method private final zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzlk;
    .registers 7

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzlk;

    if-nez v0, :cond_3b

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Activity"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzn()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 7
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzg:Lcom/google/android/gms/measurement/internal/zzlk;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzg:Lcom/google/android/gms/measurement/internal/zzlk;

    return-object p1

    :cond_42
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2

    .line 5
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzt()V

    if-nez p1, :cond_b

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    return-object p1

    .line 9
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzlk;

    if-eqz p1, :cond_10

    return-object p1

    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzh:Lcom/google/android/gms/measurement/internal/zzlk;

    return-object p1
.end method

.method public final zza(Landroid/app/Activity;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Landroid/app/Activity;

    if-ne p1, v1, :cond_d

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Landroid/app/Activity;

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_27

    .line 72
    :cond_d
    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 74
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 75
    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_b

    throw p1
.end method

.method public final zza(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    if-nez p2, :cond_e

    goto :goto_16

    .line 63
    :cond_e
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_17

    :goto_16
    return-void

    .line 64
    :cond_17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlk;

    const-string v1, "name"

    .line 65
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 66
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 67
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_18

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    if-nez v0, :cond_2a

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_48

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 94
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    :cond_48
    if-nez p3, :cond_54

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v1, "Activity"

    invoke-direct {p0, p3, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 96
    :cond_54
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 97
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    :cond_72
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_a0

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v3

    if-le v2, v3, :cond_a0

    .line 103
    :cond_8a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a0
    if-eqz p3, :cond_cc

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b6

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v0

    if-le v2, v0, :cond_cc

    .line 108
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    .line 110
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    if-nez p2, :cond_d9

    .line 113
    const-string v1, "null"

    goto :goto_da

    :cond_d9
    move-object v1, p2

    .line 114
    :goto_da
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzn()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 117
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzlk;Z)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;J)V
    .registers 17

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzi:Z

    if-nez v0, :cond_1a

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Cannot log screen view event when the app is in the background."

    .line 122
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 123
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    move-object p1, v0

    goto/16 :goto_11b

    :cond_1a
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_87

    .line 124
    const-string v3, "screen_name"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v5

    if-le v4, v5, :cond_51

    .line 127
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Invalid screen name length for screen view. Length"

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    monitor-exit v1

    return-void

    .line 131
    :cond_51
    const-string v4, "screen_class"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6d

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v2

    if-le v5, v2, :cond_84

    .line 134
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Invalid screen class length for screen view. Length"

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    monitor-exit v1

    return-void

    :cond_84
    move-object v2, v4

    move-object v4, v3

    goto :goto_88

    :cond_87
    move-object v4, v2

    :goto_88
    if-nez v2, :cond_9b

    .line 138
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Landroid/app/Activity;

    if-eqz v2, :cond_99

    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Activity"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9b

    .line 140
    :cond_99
    const-string v2, "Activity"

    :cond_9b
    :goto_9b
    move-object v5, v2

    .line 141
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 142
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Z

    if-eqz v3, :cond_c5

    if-eqz v2, :cond_c5

    .line 143
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Z

    .line 144
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 145
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_c5

    if-eqz v2, :cond_c5

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring call to log screen view event with duplicate parameters."

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 149
    monitor-exit v1

    return-void

    .line 150
    :cond_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_16

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Logging screen view with name, class"

    if-nez v4, :cond_d5

    .line 153
    const-string v2, "null"

    goto :goto_d6

    :cond_d5
    move-object v2, v4

    :goto_d6
    if-nez v5, :cond_db

    .line 154
    const-string v3, "null"

    goto :goto_dc

    :cond_db
    move-object v3, v5

    .line 155
    :goto_dc
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    goto :goto_e8

    :cond_e6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 157
    :goto_e8
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlk;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzn()J

    move-result-wide v6

    const/4 v8, 0x1

    move-wide v9, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    .line 159
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 160
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 161
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzg:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzlm;

    move-object v7, p0

    move-object v8, p1

    move-object v10, v0

    move-object v9, v3

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlm;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V

    .line 165
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 166
    :goto_11b
    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_16

    throw p1
.end method

.method public final zzaa()Lcom/google/android/gms/measurement/internal/zzlk;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic zzb()Lb4/a;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Landroid/app/Activity;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzi:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Z

    .line 5
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_48

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_31

    .line 9
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzln;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzln;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;J)V

    .line 11
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 12
    :cond_31
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 14
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;J)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    :catchall_48
    move-exception p1

    .line 17
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final zzb(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_20

    :cond_b
    if-nez p2, :cond_e

    goto :goto_20

    .line 19
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzlk;

    if-nez p1, :cond_21

    :goto_20
    return-void

    .line 20
    :cond_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/app/Activity;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzi:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_32

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzj:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_2d

    .line 6
    :try_start_e
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zze:Landroid/app/Activity;

    .line 7
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Z

    .line 8
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2f

    .line 9
    :try_start_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzg:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlp;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzlp;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;)V

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    goto :goto_32

    :catchall_2d
    move-exception p1

    goto :goto_73

    :catchall_2f
    move-exception p1

    .line 13
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p1

    .line 14
    :cond_32
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2d

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzg:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzlo;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_4e
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v0

    .line 20
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzlk;Z)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzb;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzb;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzc;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzb;J)V

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :goto_73
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_2d

    throw p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzgg;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzgf;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzgf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzjq;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzlj;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzls;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zznb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzz()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
