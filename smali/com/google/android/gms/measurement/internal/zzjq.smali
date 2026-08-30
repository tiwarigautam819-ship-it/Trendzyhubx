###### Class com.google.android.gms.measurement.internal.zzjq (com.google.android.gms.measurement.internal.zzjq)
.class public final Lcom/google/android/gms/measurement/internal/zzjq;
.super Lcom/google/android/gms/measurement/internal/zzh;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field final zza:Lcom/google/android/gms/measurement/internal/zzu;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzkz;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzjm;

.field private final zzd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/internal/zzjl;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:I

.field private zzj:Lcom/google/android/gms/measurement/internal/zzav;

.field private zzk:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/measurement/internal/zzno;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Z

.field private zzm:Lcom/google/android/gms/measurement/internal/zzje;

.field private final zzn:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzo:J

.field private zzp:Z

.field private zzq:Lcom/google/android/gms/measurement/internal/zzav;

.field private zzr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private zzs:Lcom/google/android/gms/measurement/internal/zzav;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzg:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzh:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzi:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzp:Z

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    .line 43
    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzo:J

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .line 50
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzn:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzu;

    .line 63
    .line 64
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzi:I

    return p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Throwable;)I
    .registers 5

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzl:Z

    if-eqz v0, :cond_40

    .line 10
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_34

    const-string v1, "garbage collected"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceUnavailableException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_34

    .line 13
    :cond_26
    instance-of p0, p1, Ljava/lang/SecurityException;

    if-eqz p0, :cond_40

    const-string p0, "READ_DEVICE_CONFIG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_40

    const/4 p0, 0x3

    return p0

    .line 14
    :cond_34
    :goto_34
    const-string p1, "Background"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzl:Z

    :cond_3f
    return v0

    :cond_40
    const/4 p0, 0x2

    return p0
.end method

.method public static synthetic zza(Ljava/lang/Long;Ljava/lang/Long;)I
    .registers 4

    .line 6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static zza(Ljava/lang/String;)I
    .registers 1

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    const/16 p0, 0x19

    return p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzno;)Ljava/lang/Long;
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/os/Bundle;IJ)V
    .registers 13

    .line 375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 376
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 377
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 379
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzg()Z

    move-result v0

    .line 380
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzi()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 382
    invoke-virtual {p0, v1, p3, p4, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzje;JZ)V

    .line 383
    :cond_38
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzg()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 385
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzax;Z)V

    .line 386
    :cond_45
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7d

    const/16 v1, -0x1e

    if-ne p2, v1, :cond_53

    .line 387
    const-string p2, "tcf"

    :goto_51
    move-object v2, p2

    goto :goto_56

    .line 388
    :cond_53
    const-string p2, "app"

    goto :goto_51

    .line 389
    :goto_56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_70

    if-eqz v0, :cond_70

    .line 390
    const-string v3, "allow_personalized_ads"

    .line 391
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-wide v5, p3

    .line 392
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    :cond_70
    move-wide v5, p3

    .line 393
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v6, v5

    const/4 v5, 0x0

    .line 394
    const-string v3, "allow_personalized_ads"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    :cond_7d
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzi:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V
    .registers 21

    move-object/from16 v0, p1

    .line 73
    const-string v1, "creation_timestamp"

    const-string v2, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 76
    const-string v3, "name"

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    move-object/from16 v3, p0

    .line 78
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v4

    if-nez v4, :cond_30

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Conditional property not cleared since app measurement is disabled"

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_30
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzon;

    const/4 v8, 0x0

    const-string v9, ""

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_3a
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "expired_event_name"

    .line 85
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "expired_event_params"

    .line 86
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, ""

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 88
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v18
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_5a} :catch_8b

    move-object v7, v4

    .line 89
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzae;

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "active"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "trigger_event_name"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "trigger_timeout"

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v1, "time_to_live"

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v6, ""

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzon;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;)V

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzae;)V

    :catch_8b
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V
    .registers 9

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 107
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzo:J

    cmp-long v1, p2, v1

    if-gtz v1, :cond_30

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v1

    .line 109
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzje;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Setting storage consent(FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzo:J

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzls;->zzao()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzls;->zzb(Z)V

    goto :goto_62

    .line 116
    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Z)V

    :goto_62
    if-eqz p5, :cond_70

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_70
    return-void

    .line 118
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 121
    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 9

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 99
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 100
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje;[Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v3

    .line 101
    new-array v2, v2, [Lcom/google/android/gms/measurement/internal/zzje$zza;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    .line 102
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Lcom/google/android/gms/measurement/internal/zzje;[Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p1

    if-nez v3, :cond_2e

    if-eqz p1, :cond_35

    .line 103
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzag()V

    :cond_35
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Boolean;Z)V
    .registers 3

    .line 3
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjq;Z)V
    .registers 2

    .line 4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzh:Z

    return-void
.end method

.method private final zza(Ljava/lang/Boolean;Z)V
    .registers 5

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_23

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzha;->zzb(Ljava/lang/Boolean;)V

    .line 421
    :cond_23
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzad()Z

    move-result p2

    if-nez p2, :cond_35

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    return-void

    .line 422
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzav()V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 14

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkh;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 374
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzav()V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzh:Lcom/google/android/gms/measurement/internal/zzhd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_56

    .line 15
    .line 16
    const-string v1, "unset"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2e

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lb4/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const-string v2, "app"

    .line 38
    .line 39
    const-string v3, "_npa"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    move-object v1, p0

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 44
    .line 45
    .line 46
    goto :goto_57

    .line 47
    :cond_2e
    const-string v1, "true"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_39

    .line 54
    .line 55
    const-wide/16 v0, 0x1

    .line 56
    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    :goto_3b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lb4/b;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    const-string v8, "app"

    .line 78
    .line 79
    const-string v9, "_npa"

    .line 80
    .line 81
    move-object v7, p0

    .line 82
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 83
    .line 84
    .line 85
    move-object v1, v7

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move-object v1, p0

    .line 88
    :goto_57
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_89

    .line 95
    .line 96
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzp:Z

    .line 97
    .line 98
    if-eqz v0, :cond_89

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzan()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznb;->zza:Lcom/google/android/gms/measurement/internal/zznj;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznj;->zza()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkd;

    .line 130
    .line 131
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, "Updating Scion state (FE)"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzak()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjq;)Lcom/google/android/gms/measurement/internal/zzav;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzq:Lcom/google/android/gms/measurement/internal/zzav;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjq;I)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzj:Lcom/google/android/gms/measurement/internal/zzav;

    if-nez v0, :cond_d

    .line 39
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzjc;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzj:Lcom/google/android/gms/measurement/internal/zzav;

    .line 40
    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzj:Lcom/google/android/gms/measurement/internal/zzav;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V
    .registers 24

    move-object/from16 v0, p1

    .line 3
    const-string v1, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 6
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v2, "origin"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 10
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    move-object/from16 v14, p0

    .line 11
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v3

    if-nez v3, :cond_40

    .line 12
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_40
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v5, "triggered_timestamp"

    .line 14
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_50
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "triggered_event_name"

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "triggered_event_params"

    .line 19
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v10, 0x0

    .line 20
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v16

    .line 21
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "timed_out_event_name"

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "timed_out_event_params"

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v10, 0x0

    .line 25
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v2

    .line 26
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v5

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "expired_event_name"

    .line 28
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "expired_event_params"

    .line 29
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v10, 0x0

    .line 30
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v19
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_a4} :catch_d5

    .line 31
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzae;

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "creation_timestamp"

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "trigger_event_name"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "trigger_timeout"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "time_to_live"

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide v14, v10

    const/4 v11, 0x0

    move-wide/from16 v20, v7

    move-object v7, v9

    move-wide/from16 v9, v20

    move-object v13, v2

    move-object v8, v3

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzon;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzae;)V

    :catch_d5
    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 22

    .line 47
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzki;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 49
    invoke-virtual {v11, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzav()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2

    .line 7
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 22
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 25
    :cond_37
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkq;

    const/4 v5, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    const-wide/16 v4, 0x1388

    .line 28
    const-string v6, "get conditional user properties"

    move-object v7, v2

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_72

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 34
    :cond_72
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzon;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Getting user properties (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 39
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 40
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 42
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 43
    :cond_40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-direct {v5, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkk;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    const-wide/16 v2, 0x1388

    .line 46
    const-string v4, "get user properties"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_73

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties, includeInternal"

    .line 50
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_73
    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 54
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 55
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 57
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 58
    :cond_30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkp;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    const-wide/16 v2, 0x1388

    .line 61
    const-string v4, "get user properties"

    move-object v5, v0

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_6c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Timed out waiting for handle get user properties, includeInternal"

    .line 65
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 66
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 68
    :cond_6c
    new-instance p2, Ls/e;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 69
    invoke-direct {p2, p3}, Ls/j;-><init>(I)V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_79
    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzon;

    .line 71
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 72
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_91
    return-object p2
.end method

.method public final zza(J)V
    .registers 5

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;J)V

    .line 350
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(JZ)V
    .registers 8

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzt()V

    .line 356
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/zznh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznh;->zza()V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzag()V

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    .line 360
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzc:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 361
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzha;->zzq:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4b

    .line 362
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzq:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 363
    :cond_4b
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzk:Lcom/google/android/gms/measurement/internal/zzhb;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 364
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzl:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 365
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzag;->zzx()Z

    move-result p1

    if-nez p1, :cond_66

    xor-int/lit8 p1, v0, 0x1

    .line 366
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzha;->zzb(Z)V

    .line 367
    :cond_66
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzr:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 368
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzs:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 369
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzt:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Landroid/os/Bundle;)V

    if-eqz p3, :cond_7e

    .line 370
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzls;->zzai()V

    .line 371
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznb;->zza:Lcom/google/android/gms/measurement/internal/zznj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznj;->zza()V

    xor-int/lit8 p1, v0, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzp:Z

    return-void
.end method

.method public final zza(Landroid/content/Intent;)V
    .registers 4

    .line 423
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzby:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 424
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_23

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Activity intent has no data. Preview Mode was not enabled."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 426
    :cond_23
    const-string v0, "sgtm_debug_enable"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 427
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_55

    .line 428
    :cond_34
    const-string v0, "sgtm_preview_key"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Preview Mode was enabled. Using the sgtmPreviewKey: "

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzag;->zzh(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Preview Mode was not enabled."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzh(Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .line 146
    const-string p1, "IABTCF_TCString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "IABTCF_TCString change picked up in listener."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzs:Lcom/google/android/gms/measurement/internal/zzav;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    :cond_1f
    return-void
.end method

.method public final synthetic zza(Landroid/os/Bundle;)V
    .registers 10

    .line 152
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p1

    goto/16 :goto_cc

    .line 153
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzt:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzdh:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    .line 156
    :cond_25
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 158
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_6e

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_6e

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_6e

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v7, 0x1b

    .line 161
    invoke-static {v6, v7, v4, v4, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V

    .line 162
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Invalid default event parameter type. Name, value"

    .line 164
    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2d

    .line 165
    :cond_6e
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_82
    if-nez v5, :cond_88

    .line 167
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2d

    .line 168
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v6

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v3

    .line 170
    const-string v4, "param"

    invoke-virtual {v6, v4, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .line 172
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzc()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v2, 0x1a

    .line 175
    invoke-static {v1, v2, v4, v4, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 179
    :cond_cc
    :goto_cc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzt:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_e8

    goto :goto_e9

    :cond_e8
    return-void

    .line 182
    :cond_e9
    :goto_e9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic zza(Landroid/os/Bundle;J)V
    .registers 5

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;IJ)V

    return-void

    .line 151
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Using developer consent only; google app id found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;)V
    .registers 4

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/internal/measurement/w0;)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzax;Z)V
    .registers 4

    .line 395
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzky;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzax;)V

    if-eqz p2, :cond_e

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 397
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 398
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 4

    .line 407
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 408
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 409
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzls;->zzan()Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    move p1, v1

    .line 410
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzad()Z

    move-result v0

    if-eq p1, v0, :cond_43

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzu()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3c

    if-eqz v0, :cond_3c

    .line 413
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 414
    :cond_3c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 415
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/Boolean;Z)V

    :cond_43
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzje;JZ)V
    .registers 16

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 435
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v7

    const/16 v8, -0xa

    if-eq v7, v8, :cond_27

    .line 436
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v2, v3, :cond_27

    .line 437
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzd()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v2

    if-ne v2, v3, :cond_27

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Ignoring empty consent settings"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzg:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    :try_start_2a
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    .line 441
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v3

    .line 442
    invoke-static {v7, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(II)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 443
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzc(Lcom/google/android/gms/measurement/internal/zzje;)Z

    move-result v3

    .line 444
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    .line 445
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v5

    if-nez v5, :cond_51

    move v4, v9

    goto :goto_51

    :catchall_4e
    move-exception v0

    goto/16 :goto_c0

    .line 446
    :cond_51
    :goto_51
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 447
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzm:Lcom/google/android/gms/measurement/internal/zzje;

    move v5, v4

    move v4, v9

    goto :goto_5f

    :cond_5c
    move-object v0, p1

    move v3, v4

    move v5, v3

    .line 448
    :goto_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_4e

    if-nez v4, :cond_70

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Ignoring lower-priority consent settings, proposed settings"

    .line 451
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 452
    :cond_70
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzn:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v9

    if-eqz v3, :cond_98

    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    move-object v2, v0

    .line 454
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkx;

    move-object v1, p0

    move-wide v3, p2

    move v7, v5

    move-object v8, v6

    move-wide v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JJZLcom/google/android/gms/measurement/internal/zzje;)V

    if-eqz p4, :cond_90

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 456
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 457
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_98
    move-object v2, v0

    move-wide v3, v9

    .line 458
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzla;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzla;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZLcom/google/android/gms/measurement/internal/zzje;)V

    if-eqz p4, :cond_a9

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 460
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_a9
    const/16 v1, 0x1e

    if-eq v7, v1, :cond_b8

    if-ne v7, v8, :cond_b0

    goto :goto_b8

    .line 461
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 462
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 463
    :goto_c0
    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_4e

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .registers 3

    .line 344
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 345
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 347
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjm;)V
    .registers 4

    .line 399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 400
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    if-eqz p1, :cond_16

    .line 401
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    if-eq p1, v0, :cond_16

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 402
    :goto_11
    const-string v1, "EventInterceptor already set."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/d0;->j(Ljava/lang/String;Z)V

    .line 403
    :cond_16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    return-void
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .registers 4

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Boolean;)V

    .line 406
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;J)V
    .registers 13

    if-eqz p1, :cond_18

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 465
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "User ID must be non-empty or null"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 466
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 468
    const-string v4, "_id"

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    move-wide v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 16

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    if-eqz v1, :cond_11

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_11

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move v7, v1

    goto :goto_13

    :cond_11
    :goto_11
    const/4 v1, 0x1

    goto :goto_f

    :goto_13
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 197
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 198
    invoke-static {v7}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 199
    invoke-static {v9}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 202
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 204
    :cond_2a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzaf()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 205
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 206
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v2, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_48
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_a0

    .line 208
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Z

    .line 209
    :try_start_51
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzag()Z

    move-result v0
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_57} :catch_93

    const-string v2, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_68

    .line 210
    :try_start_5b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6c

    .line 211
    :cond_68
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_6c} :catch_93

    .line 212
    :goto_6c
    :try_start_6c
    const-string v2, "initialize"

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v11

    .line 213
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v2, v3, v11

    invoke-virtual {v0, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_83} :catch_84

    goto :goto_a0

    :catch_84
    move-exception v0

    .line 215
    :try_start_85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_85 .. :try_end_92} :catch_93

    goto :goto_a0

    .line 216
    :catch_93
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 217
    :cond_a0
    :goto_a0
    const-string v0, "_cmp"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 218
    const-string v0, "gclid"

    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 219
    invoke-virtual {v9, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 222
    const-string v2, "auto"

    const-string v3, "_lgclid"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_c8
    move-object v6, v1

    if-eqz p6, :cond_e2

    .line 223
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzos;->zzj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 224
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzt:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_e2
    const/16 v0, 0x28

    if-nez p8, :cond_146

    .line 225
    const-string v1, "_iap"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    .line 226
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    .line 227
    const-string v2, "event"

    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_fe

    goto :goto_113

    .line 228
    :cond_fe
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzji;->zza:[Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzji;->zzb:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10b

    const/16 v4, 0xd

    goto :goto_113

    .line 229
    :cond_10b
    invoke-virtual {v1, v2, v0, v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_112

    goto :goto_113

    :cond_112
    move v4, v11

    :goto_113
    if-eqz v4, :cond_146

    .line 230
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 232
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    .line 236
    invoke-static {v8, v0, v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_139

    .line 237
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 238
    :cond_139
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 239
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    const-string v2, "_ev"

    .line 240
    invoke-static {v1, v4, v2, v0, v11}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 241
    :cond_146
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v11}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v1

    .line 243
    const-string v2, "_sc"

    if-eqz v1, :cond_15a

    invoke-virtual {v9, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 244
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzlk;->zzd:Z

    :cond_15a
    if-eqz p6, :cond_160

    if-nez p8, :cond_160

    move v3, v12

    goto :goto_161

    :cond_160
    move v3, v11

    .line 245
    :goto_161
    invoke-static {v1, v9, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V

    .line 246
    const-string v1, "am"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 247
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz p6, :cond_1a5

    .line 248
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    if-eqz v3, :cond_1a5

    if-nez v1, :cond_1a5

    if-nez v13, :cond_1a5

    .line 249
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 251
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 255
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    move-wide/from16 v4, p3

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjm;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_1a5
    move-wide/from16 v14, p3

    .line 256
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzaf()Z

    move-result v1

    if-nez v1, :cond_1b1

    goto/16 :goto_452

    .line 257
    :cond_1b1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f6

    .line 258
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 260
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v4, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {v8, v0, v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_1dd

    .line 263
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 264
    :cond_1dd
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 265
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    const-string v3, "_ev"

    move-object/from16 p2, p9

    move-object/from16 p5, v0

    move/from16 p3, v1

    move-object/from16 p1, v2

    move-object/from16 p4, v3

    move/from16 p6, v11

    .line 266
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 267
    :cond_1f6
    const-string v0, "_sn"

    const-string v1, "_si"

    const-string v9, "_o"

    filled-new-array {v9, v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 269
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    move-object/from16 v3, p5

    move/from16 v5, p8

    move-object/from16 v1, p9

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v11}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v1

    .line 273
    const-string v2, "_ae"

    if-eqz v1, :cond_255

    .line 274
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 275
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v1

    .line 276
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/zznh;

    .line 277
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    move-result-object v5

    check-cast v5, Lb4/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p5, 0x0

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 279
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    sub-long v10, v3, v10

    .line 280
    iput-wide v3, v1, Lcom/google/android/gms/measurement/internal/zznh;->zza:J

    cmp-long v1, v10, p5

    if-lez v1, :cond_257

    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    invoke-virtual {v1, v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;J)V

    goto :goto_257

    :cond_255
    const-wide/16 p5, 0x0

    .line 282
    :cond_257
    :goto_257
    const-string v1, "auto"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "_ffr"

    if-nez v1, :cond_2b0

    const-string v1, "_ssr"

    .line 283
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 284
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    sget v4, Lb4/d;->a:I

    if-eqz v3, :cond_287

    .line 287
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_280

    goto :goto_287

    :cond_280
    if-eqz v3, :cond_288

    .line 288
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_288

    :cond_287
    :goto_287
    const/4 v3, 0x0

    .line 289
    :cond_288
    :goto_288
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzha;->zzq:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 291
    :cond_2a6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzq:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    goto :goto_2cd

    .line 292
    :cond_2b0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cd

    .line 293
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzq:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2cd

    .line 296
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2cd
    :goto_2cd
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzco:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_2ea

    .line 300
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznb;->zzaa()Z

    move-result v1

    goto :goto_2f4

    .line 301
    :cond_2ea
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzn:Lcom/google/android/gms/measurement/internal/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()Z

    move-result v1

    .line 302
    :goto_2f4
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzha;->zzk:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v3

    cmp-long v3, v3, p5

    if-lez v3, :cond_36f

    .line 303
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/measurement/internal/zzha;->zza(J)Z

    move-result v3

    if-eqz v3, :cond_36f

    if-eqz v1, :cond_36f

    .line 304
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v3, "Current session is expired, remove the session number, ID, and engagement time"

    .line 306
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v2

    .line 309
    const-string v2, "auto"

    const-string v3, "_sid"

    const/4 v4, 0x0

    move-object v11, v1

    move/from16 v16, v13

    move-object/from16 v1, p0

    move-wide/from16 v12, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 312
    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 315
    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    move-object v6, v1

    .line 316
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzha;->zzl:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    goto :goto_374

    :cond_36f
    move-object v11, v2

    move/from16 v16, v13

    move-wide/from16 v12, p5

    .line 317
    :goto_374
    const-string v1, "extend_session"

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_399

    .line 318
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 320
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 321
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzs()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v1

    .line 322
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznb;->zza:Lcom/google/android/gms/measurement/internal/zznj;

    const/4 v2, 0x1

    invoke-virtual {v1, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zznj;->zza(JZ)V

    .line 323
    :cond_399
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 325
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_3aa
    :goto_3aa
    if-ge v3, v2, :cond_3c7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3aa

    .line 326
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3aa

    .line 327
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_3aa

    :cond_3c7
    const/4 v12, 0x0

    .line 328
    :goto_3c8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_42c

    .line 329
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v12, :cond_3d9

    .line 330
    const-string v1, "_ep"

    goto :goto_3da

    :cond_3d9
    move-object v1, v8

    .line 331
    :goto_3da
    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_3e9

    .line 332
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v0, v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3ea

    :cond_3e9
    const/4 v13, 0x0

    .line 333
    :goto_3ea
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbf;

    move-object v3, v2

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    move-object v4, v7

    move-object v7, v0

    move-object v0, v3

    move-object v3, v4

    move-wide v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 334
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v1

    move-object/from16 v14, p9

    invoke-virtual {v1, v0, v14}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V

    if-nez v16, :cond_425

    .line 335
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_40b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_425

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjl;

    .line 336
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v1, p1

    move-wide/from16 v4, p3

    move-object v2, v8

    .line 337
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjl;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_40b

    :cond_425
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    move-wide/from16 v14, p3

    goto :goto_3c8

    .line 338
    :cond_42c
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object v0

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Z)Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v0

    if-eqz v0, :cond_452

    .line 340
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_452

    .line 341
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v1

    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 343
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    :cond_452
    :goto_452
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 125
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string p1, "creation_timestamp"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_2b

    .line 128
    const-string p1, "expired_event_name"

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string p1, "expired_event_params"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 130
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 16

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzs()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v10, p4

    .line 193
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .registers 18

    if-nez p1, :cond_4

    .line 183
    const-string p1, "app"

    :cond_4
    move-object v1, p1

    if-nez p3, :cond_c

    .line 184
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_c
    move-object v5, p3

    .line 185
    const-string p1, "screen_view"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    move-result-object p1

    move-wide/from16 v3, p6

    invoke-virtual {p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/os/Bundle;J)V

    return-void

    :cond_1f
    move-wide/from16 v3, p6

    if-eqz p5, :cond_31

    .line 187
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    if-eqz p1, :cond_31

    .line 188
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_31

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    move v7, p1

    goto :goto_33

    :cond_31
    :goto_31
    const/4 p1, 0x1

    goto :goto_2f

    :goto_33
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move v8, p4

    move v6, p5

    .line 189
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 15

    .line 495
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 496
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 499
    const-string v0, "allow_personalized_ads"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 500
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "_npa"

    if-eqz v0, :cond_4d

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 501
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_35

    move-wide v4, v2

    goto :goto_37

    :cond_35
    const-wide/16 v4, 0x0

    :goto_37
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 502
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzh:Lcom/google/android/gms/measurement/internal/zzhd;

    cmp-long v2, v4, v2

    if-nez v2, :cond_47

    const-string p3, "true"

    :cond_47
    invoke-virtual {v0, p3}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    move-object p3, p2

    :goto_4b
    move-object p2, v1

    goto :goto_5b

    :cond_4d
    if-nez p3, :cond_5b

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzha;->zzh:Lcom/google/android/gms/measurement/internal/zzhd;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    goto :goto_4b

    .line 504
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Setting user property(FE)"

    const-string v2, "non_personalized_ads(_npa)"

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    move-object v4, p2

    move-object v7, p3

    .line 505
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result p2

    if-nez p2, :cond_82

    .line 506
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 507
    :cond_82
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzaf()Z

    move-result p2

    if-nez p2, :cond_8b

    return-void

    .line 508
    :cond_8b
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzon;

    move-object v8, p1

    move-wide v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzon;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 13

    .line 469
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 471
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .registers 13

    if-nez p1, :cond_4

    .line 472
    const-string p1, "app"

    :cond_4
    move-object v1, p1

    const/4 p1, 0x0

    const/16 v0, 0x18

    if-eqz p4, :cond_13

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;)I

    move-result p4

    goto :goto_35

    .line 474
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p4

    .line 475
    const-string v2, "user property"

    invoke-virtual {p4, v2, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_22

    :goto_20
    move p4, v4

    goto :goto_35

    .line 476
    :cond_22
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjj;->zza:[Ljava/lang/String;

    invoke-virtual {p4, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 p4, 0xf

    goto :goto_35

    .line 477
    :cond_2d
    invoke-virtual {p4, v2, v0, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_34

    goto :goto_20

    :cond_34
    move p4, p1

    .line 478
    :goto_35
    const-string v2, "_ev"

    const/4 v3, 0x1

    if-eqz p4, :cond_52

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_47

    .line 480
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 481
    :cond_47
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 482
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    .line 483
    invoke-static {p2, p4, v2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_52
    if-eqz p3, :cond_91

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p4

    if-eqz p4, :cond_80

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 486
    instance-of p5, p3, Ljava/lang/String;

    if-nez p5, :cond_6d

    instance-of p5, p3, Ljava/lang/CharSequence;

    if-eqz p5, :cond_75

    .line 487
    :cond_6d
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 489
    :cond_75
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 490
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzt:Lcom/google/android/gms/measurement/internal/zzor;

    .line 491
    invoke-static {p3, p4, v2, p2, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 492
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_90

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 493
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_90
    return-void

    :cond_91
    move-object v2, p2

    move-wide v3, p5

    const/4 v5, 0x0

    move-object v0, p0

    .line 494
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final synthetic zza(Ljava/util/List;)V
    .registers 8

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_46

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzm()Landroid/util/SparseArray;

    move-result-object v0

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzno;

    .line 142
    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzc:I

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/a;->i(Landroid/util/SparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzc:I

    .line 143
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    .line 144
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 145
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzas()V

    :cond_46
    return-void
.end method

.method public final synthetic zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzi:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v1

    if-nez v0, :cond_15

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    :cond_15
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzaa()Landroid/app/Application$ActivityLifecycleCallbacks;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzab()Lcom/google/android/gms/measurement/internal/zzaj;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzaa()Lcom/google/android/gms/measurement/internal/zzaj;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final zzac()Ljava/lang/Boolean;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzka;

    .line 11
    .line 12
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3a98

    .line 16
    .line 17
    const-string v4, "boolean test flag value"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    return-object v0
.end method

.method public final zzad()Ljava/lang/Double;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkw;

    .line 11
    .line 12
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3a98

    .line 16
    .line 17
    const-string v4, "double test flag value"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Double;

    .line 24
    .line 25
    return-object v0
.end method

.method public final zzae()Ljava/lang/Integer;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkt;

    .line 11
    .line 12
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3a98

    .line 16
    .line 17
    const-string v4, "int test flag value"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    return-object v0
.end method

.method public final zzaf()Ljava/lang/Long;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzku;

    .line 11
    .line 12
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3a98

    .line 16
    .line 17
    const-string v4, "long test flag value"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Long;

    .line 24
    .line 25
    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzah()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzq()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzaa()Lcom/google/android/gms/measurement/internal/zzlk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final zzai()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzq()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzaa()Lcom/google/android/gms/measurement/internal/zzlk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final zzaj()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzu()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzu()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzx()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "google_app_id"

    .line 27
    .line 28
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhs;

    .line 29
    .line 30
    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_24} :catch_25

    .line 37
    return-object v0

    .line 38
    :catch_25
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "getGoogleAppId failed with exception"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public final zzak()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkj;

    .line 11
    .line 12
    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3a98

    .line 16
    .line 17
    const-string v4, "String test flag value"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public final zzal()Ljava/util/PriorityQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/gms/measurement/internal/zzno;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzk:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    if-nez v0, :cond_1a

    .line 4
    .line 5
    new-instance v0, Ljava/util/PriorityQueue;

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjp;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzjp;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjs;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzjs;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/getcapacitor/a;->k(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzjs;)Ljava/util/Comparator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/getcapacitor/a;->o(Ljava/util/Comparator;)Ljava/util/PriorityQueue;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzk:Ljava/util/PriorityQueue;

    .line 26
    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzk:Ljava/util/PriorityQueue;

    .line 28
    .line 29
    return-object v0
.end method

.method public final zzam()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdd:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_37

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzt()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzap()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_23

    .line 34
    .line 35
    goto :goto_30

    .line 36
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzg()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const v1, 0x3b3a8

    .line 45
    .line 46
    .line 47
    if-lt v0, v1, :cond_37

    .line 48
    .line 49
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzac()V

    .line 54
    .line 55
    .line 56
    :cond_37
    return-void
.end method

.method public final zzan()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzaf()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_72

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "google_analytics_deferred_deep_link_enabled"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3a

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3a

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "Deferred Deep Link feature enabled."

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjv;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zzad()V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzp:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzw()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_72

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 88
    .line 89
    .line 90
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_72

    .line 97
    .line 98
    new-instance v1, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "_po"

    .line 104
    .line 105
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "auto"

    .line 109
    .line 110
    const-string v2, "_ou"

    .line 111
    .line 112
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    :cond_72
    :goto_72
    return-void
.end method

.method public final zzao()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/app/Application;

    .line 10
    .line 11
    if-eqz v0, :cond_1f

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    .line 14
    .line 15
    if-eqz v0, :cond_1f

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/Application;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-void
.end method

.method public final zzap()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzci:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzg()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_28

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3c

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Cannot get trigger URIs from main thread"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "Getting trigger URIs (FE)"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzjr;

    .line 87
    .line 88
    invoke-direct {v7, p0, v3}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v4, 0x1388

    .line 92
    .line 93
    const-string v6, "get trigger URIs"

    .line 94
    .line 95
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/util/List;

    .line 103
    .line 104
    if-nez v0, :cond_77

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "Timed out waiting for get trigger URIs"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzju;

    .line 125
    .line 126
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final zzaq()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzo:Lcom/google/android/gms/measurement/internal/zzgz;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgz;->zza()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1d

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzp:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zzp:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 45
    .line 46
    const-wide/16 v3, 0x1

    .line 47
    .line 48
    add-long/2addr v3, v0

    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v2, 0x5

    .line 53
    .line 54
    cmp-long v0, v0, v2

    .line 55
    .line 56
    if-ltz v0, :cond_51

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzo:Lcom/google/android/gms/measurement/internal/zzgz;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzq:Lcom/google/android/gms/measurement/internal/zzav;

    .line 83
    .line 84
    if-nez v0, :cond_5e

    .line 85
    .line 86
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkm;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 89
    .line 90
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkm;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzq:Lcom/google/android/gms/measurement/internal/zzav;

    .line 94
    .line 95
    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzq:Lcom/google/android/gms/measurement/internal/zzav;

    .line 96
    .line 97
    const-wide/16 v1, 0x0

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzav;->zza(J)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final zzar()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Handle tcf update."

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzc()Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznm;->zza(Landroid/content/SharedPreferences;)Lcom/google/android/gms/measurement/internal/zznm;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "Tcf preferences read"

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Lcom/google/android/gms/measurement/internal/zznm;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_6f

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznm;->zza()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "Consent generated from Tcf"

    .line 65
    .line 66
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 70
    .line 71
    if-eq v1, v2, :cond_5a

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lb4/b;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    const/16 v4, -0x1e

    .line 87
    .line 88
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;IJ)V

    .line 89
    .line 90
    .line 91
    :cond_5a
    new-instance v1, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "_tcfd"

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznm;->zzb()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "auto"

    .line 106
    .line 107
    const-string v2, "_tcf"

    .line 108
    .line 109
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    .line 111
    .line 112
    :cond_6f
    return-void
.end method

.method public final zzas()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzl:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_8f

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzh:Z

    .line 18
    .line 19
    if-eqz v1, :cond_16

    .line 20
    .line 21
    goto/16 :goto_8f

    .line 22
    .line 23
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/measurement/internal/zzno;

    .line 32
    .line 33
    if-nez v1, :cond_23

    .line 34
    .line 35
    goto :goto_8f

    .line 36
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzo()Lb1/e;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_2e

    .line 45
    .line 46
    goto :goto_8f

    .line 47
    :cond_2e
    const/4 v3, 0x1

    .line 48
    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzh:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "Registering trigger URI"

    .line 59
    .line 60
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lb1/e;->b(Landroid/net/Uri;)Ls4/c;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_56

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzh:Z

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcn:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7c

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzm()Landroid/util/SparseArray;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget v3, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzc:I

    .line 108
    .line 109
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    .line 110
    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/util/SparseArray;)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjz;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjz;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkc;

    .line 131
    .line 132
    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzno;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Ls4/b;

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-direct {v1, v2, v4, v3}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v2, v1, v0}, Ls4/c;->a(Ls4/b;Ljava/util/concurrent/Executor;)V

    .line 142
    .line 143
    .line 144
    :cond_8f
    :goto_8f
    return-void
.end method

.method public final zzat()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Register tcfPrefChangeListener."

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 18
    .line 19
    if-nez v0, :cond_24

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkf;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzs:Lcom/google/android/gms/measurement/internal/zzav;

    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjy;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjy;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 36
    .line 37
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzc()Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final zzau()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic zzb()Lb4/a;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(J)V
    .registers 4

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(JZ)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;J)V
    .registers 15

    const-wide/16 v0, 0x0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 65
    const-string p1, "app_id"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Package name should be null when calling setConditionalUserProperty"

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 69
    :cond_27
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p1, "origin"

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v4, "name"

    invoke-static {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v5, Ljava/lang/Object;

    const-string v6, "value"

    invoke-static {v1, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "trigger_event_name"

    invoke-static {v1, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v7, "trigger_timeout"

    const-class v8, Ljava/lang/Long;

    invoke-static {v1, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v9, "timed_out_event_name"

    invoke-static {v1, v9, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v9, "timed_out_event_params"

    const-class v10, Landroid/os/Bundle;

    invoke-static {v1, v9, v10, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v9, "triggered_event_name"

    invoke-static {v1, v9, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v9, "triggered_event_params"

    invoke-static {v1, v9, v10, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v9, "time_to_live"

    invoke-static {v1, v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "expired_event_name"

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "expired_event_params"

    invoke-static {v1, v0, v10, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 86
    const-string p1, "creation_timestamp"

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 87
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_b4

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    const-string p3, "Invalid conditional user property name"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_d4

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 96
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "Invalid conditional user property value"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_d4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f4

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 101
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    const-string v0, "Unable to normalize conditional user property value"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_f4
    invoke-static {v1, p3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 106
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v0, :cond_12e

    cmp-long v0, p2, v4

    if-gtz v0, :cond_114

    cmp-long v0, p2, v2

    if-gez v0, :cond_12e

    .line 108
    :cond_114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 112
    const-string p3, "Invalid conditional user property timeout"

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_12e
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-gtz v0, :cond_148

    cmp-long v0, p2, v2

    if-gez v0, :cond_13b

    goto :goto_148

    .line 114
    :cond_13b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 116
    :cond_148
    :goto_148
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 120
    const-string p3, "Invalid conditional user property time to live"

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 122
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final synthetic zzb(Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzag()V

    :cond_11
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 45
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final zzb(Z)V
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3a

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    if-nez v1, :cond_21

    .line 53
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkz;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    :cond_21
    if-eqz p1, :cond_3a

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Lcom/google/android/gms/measurement/internal/zzkz;

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Registered activity lifecycle callback"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(J)V
    .registers 5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;J)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .registers 4

    if-nez p1, :cond_8

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    .line 14
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjt;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Landroid/os/Bundle;J)V
    .registers 6

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;J)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final zzc(Z)V
    .registers 4

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzjq;Z)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Landroid/os/Bundle;J)V
    .registers 5

    const/16 v0, -0x14

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;IJ)V

    return-void
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

###### Class com.google.android.gms.measurement.internal.zzjp (com.google.android.gms.measurement.internal.zzjp)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjp;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzno;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzno;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

###### Class com.google.android.gms.measurement.internal.zzjr (com.google.android.gms.measurement.internal.zzjr)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjr;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjs (com.google.android.gms.measurement.internal.zzjs)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjs;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/Long;Ljava/lang/Long;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

###### Class com.google.android.gms.measurement.internal.zzjt (com.google.android.gms.measurement.internal.zzjt)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjt;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzb:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjt;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzju (com.google.android.gms.measurement.internal.zzju)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzju;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjv (com.google.android.gms.measurement.internal.zzjv)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzaq()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjw (com.google.android.gms.measurement.internal.zzjw)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjw;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Landroid/os/Bundle;

.field private synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/os/Bundle;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjx (com.google.android.gms.measurement.internal.zzjx)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjx;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;

.field private synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzjy (com.google.android.gms.measurement.internal.zzjy)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjy;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
