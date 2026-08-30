###### Class com.google.android.gms.measurement.internal.zzos (com.google.android.gms.measurement.internal.zzos)
.class public final Lcom/google/android/gms/measurement/internal/zzos;
.super Lcom/google/android/gms/measurement/internal/zzjd;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;


# instance fields
.field private zzc:Ljava/security/SecureRandom;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicLong;

.field private zze:I

.field private zzf:Lb1/e;

.field private zzg:Ljava/lang/Boolean;

.field private zzh:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "google_"

    .line 2
    .line 3
    const-string v1, "ga_"

    .line 4
    .line 5
    const-string v2, "firebase_"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zza:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "_err"

    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zzb:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjd;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzh:Ljava/lang/Integer;

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "param"

    const/4 v3, 0x0

    if-eqz v1, :cond_84

    if-eqz p8, :cond_81

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:[Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/16 p1, 0x14

    return p1

    .line 6
    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzam()Z

    move-result v1

    if-nez v1, :cond_2a

    const/16 p1, 0x19

    return p1

    .line 7
    :cond_2a
    instance-of v1, p4, [Landroid/os/Parcelable;

    if-eqz v1, :cond_33

    .line 8
    move-object v4, p4

    check-cast v4, [Landroid/os/Parcelable;

    array-length v4, v4

    goto :goto_3e

    .line 9
    :cond_33
    instance-of v4, p4, Ljava/util/ArrayList;

    if-eqz v4, :cond_84

    .line 10
    move-object v4, p4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3e
    const/16 v5, 0xc8

    if-le v4, v5, :cond_84

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v7, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    invoke-virtual {v6, v7, v2, p3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_65

    .line 15
    move-object v1, p4

    check-cast v1, [Landroid/os/Parcelable;

    array-length v4, v1

    if-le v4, v5, :cond_7e

    .line 16
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 17
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_7e

    .line 18
    :cond_65
    instance-of v1, p4, Ljava/util/ArrayList;

    if-eqz v1, :cond_7e

    .line 19
    move-object v1, p4

    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_7e

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7e
    :goto_7e
    const/16 v0, 0x11

    goto :goto_85

    :cond_81
    const/16 p1, 0x15

    return p1

    :cond_84
    move v0, v3

    .line 22
    :goto_85
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_9c

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    goto :goto_9c

    .line 23
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result v1

    goto :goto_a4

    .line 24
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result v1

    .line 25
    :goto_a4
    invoke-virtual {p0, v2, p3, v1, p4}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    return v0

    :cond_ab
    if-eqz p8, :cond_132

    .line 26
    instance-of v1, p4, Landroid/os/Bundle;

    if-eqz v1, :cond_c0

    .line 27
    move-object v8, p4

    check-cast v8, Landroid/os/Bundle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    return v0

    .line 28
    :cond_c0
    instance-of v1, p4, [Landroid/os/Parcelable;

    if-eqz v1, :cond_f4

    .line 29
    check-cast p4, [Landroid/os/Parcelable;

    .line 30
    array-length v8, p4

    move v9, v3

    :goto_c8
    if-ge v9, v8, :cond_f3

    aget-object v1, p4, v9

    .line 31
    instance-of v2, v1, Landroid/os/Bundle;

    if-nez v2, :cond_e2

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 35
    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_132

    .line 36
    :cond_e2
    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    :cond_f3
    return v0

    .line 37
    :cond_f4
    instance-of v1, p4, Ljava/util/ArrayList;

    if-eqz v1, :cond_132

    .line 38
    check-cast p4, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_fe
    if-ge v3, v8, :cond_131

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v3, 0x1

    .line 40
    instance-of v2, v1, Landroid/os/Bundle;

    if-nez v2, :cond_121

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    if-eqz v1, :cond_119

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_11b

    :cond_119
    const-string p2, "null"

    .line 44
    :goto_11b
    const-string p4, "All ArrayList elements must be of type Bundle. Value type, name"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_132

    .line 45
    :cond_121
    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    move v3, v9

    goto :goto_fe

    :cond_131
    return v0

    :cond_132
    :goto_132
    const/4 p1, 0x4

    return p1
.end method

.method public static zza(JJ)J
    .registers 6

    const-wide/32 v0, 0xea60

    mul-long/2addr p2, v0

    add-long/2addr p2, p0

    const-wide/32 p0, 0x5265c00

    .line 80
    div-long/2addr p2, p0

    return-wide p2
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzbe;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-eqz v4, :cond_9

    .line 79
    check-cast v3, [Landroid/os/Parcelable;

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_9

    :cond_23
    return-wide v0
.end method

.method public static zza([B)J
    .registers 9

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 71
    array-length v0, p0

    if-lez v0, :cond_21

    .line 72
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_c
    if-ltz v0, :cond_20

    .line 73
    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_20

    .line 74
    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_20
    return-wide v2

    .line 75
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static zza(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    if-nez p0, :cond_8

    .line 156
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 157
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 159
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_34

    .line 162
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_15

    .line 163
    :cond_34
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 164
    check-cast v2, [Landroid/os/Parcelable;

    .line 165
    :goto_3b
    array-length v1, v2

    if-ge v3, v1, :cond_15

    .line 166
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4f

    .line 167
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 168
    :cond_52
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_15

    .line 169
    check-cast v2, Ljava/util/List;

    .line 170
    :goto_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_15

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 172
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_70

    .line 173
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_73
    return-object v0
.end method

.method public static zza(Ljava/util/List;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzon;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_8

    goto :goto_3e

    .line 83
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzon;

    .line 84
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 85
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 86
    :cond_22
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    if-eqz v2, :cond_30

    .line 87
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    .line 88
    :cond_30
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    if-eqz v2, :cond_c

    .line 89
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_c

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private final zza(ILjava/lang/Object;ZZLjava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 p5, 0x0

    if-nez p2, :cond_4

    return-object p5

    .line 228
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_b3

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_d

    return-object p2

    .line 229
    :cond_d
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 230
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 231
    :cond_1d
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_2d

    .line 232
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 233
    :cond_2d
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_3d

    .line 234
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 235
    :cond_3d
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_53

    .line 236
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4c

    const-wide/16 p1, 0x1

    goto :goto_4e

    :cond_4c
    const-wide/16 p1, 0x0

    :goto_4e
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 237
    :cond_53
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_62

    .line 238
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 239
    :cond_62
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_aa

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_aa

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6f

    goto :goto_aa

    :cond_6f
    if-eqz p4, :cond_a9

    .line 240
    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_79

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_a9

    .line 241
    :cond_79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_82
    if-ge p4, p3, :cond_9e

    aget-object v0, p2, p4

    .line 243
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_9b

    .line 244
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0, p5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 245
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    add-int/lit8 p4, p4, 0x1

    goto :goto_82

    .line 247
    :cond_9e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a9
    return-object p5

    .line 248
    :cond_aa
    :goto_aa
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 249
    invoke-static {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b3
    return-object p2
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 250
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_21

    if-eqz p2, :cond_20

    .line 251
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    .line 252
    invoke-static {p0, p1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v0

    :cond_21
    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 283
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/16 p1, 0x28

    const/4 v0, 0x1

    .line 284
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 285
    const-string p2, "_ev"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2a

    .line 286
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_1c

    instance-of p1, p3, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2a

    .line 287
    :cond_1c
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long p1, p1

    const-string p3, "_el"

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2a
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V
    .registers 7

    .line 289
    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_2e

    if-eqz p0, :cond_2e

    .line 290
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz p2, :cond_2e

    .line 291
    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlk;->zza:Ljava/lang/String;

    if-eqz p2, :cond_1a

    .line 292
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 293
    :cond_1a
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 294
    :goto_1d
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlk;->zzb:Ljava/lang/String;

    if-eqz p2, :cond_25

    .line 295
    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 296
    :cond_25
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 297
    :goto_28
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzlk;->zzc:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_2e
    if-eqz p1, :cond_3d

    if-nez p0, :cond_3d

    if-eqz p2, :cond_3d

    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzor;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 340
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 343
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 344
    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 p3, 0x6

    if-eq p2, p3, :cond_20

    const/4 p3, 0x7

    if-eq p2, p3, :cond_20

    const/4 p3, 0x2

    if-ne p2, p3, :cond_26

    .line 345
    :cond_20
    const-string p2, "_el"

    int-to-long p3, p5

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 346
    :cond_26
    const-string p2, "_err"

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    if-nez v5, :cond_c

    goto/16 :goto_116

    .line 387
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    const v9, 0xdc64e60

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(IZ)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_23

    const/16 v1, 0x23

    move v12, v1

    goto :goto_24

    :cond_23
    move v12, v11

    .line 389
    :goto_24
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 390
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v11

    :goto_32
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_116

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    if-eqz v6, :cond_4a

    .line 391
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_4a

    :cond_48
    move v1, v11

    goto :goto_58

    :cond_4a
    :goto_4a
    if-nez p6, :cond_51

    .line 392
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzl(Ljava/lang/String;)I

    move-result v1

    goto :goto_52

    :cond_51
    move v1, v11

    :goto_52
    if-nez v1, :cond_58

    .line 393
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzk(Ljava/lang/String;)I

    move-result v1

    :cond_58
    :goto_58
    if-eqz v1, :cond_69

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5f

    move-object v4, v3

    goto :goto_60

    :cond_5f
    const/4 v4, 0x0

    .line 394
    :goto_60
    invoke-static {v5, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v15, p3

    goto :goto_a9

    .line 396
    :cond_69
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 397
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v4, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v15, p3

    .line 399
    invoke-virtual {v1, v4, v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x16

    goto :goto_95

    :cond_85
    move-object/from16 v15, p3

    .line 400
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move/from16 v7, p6

    .line 401
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v4

    move v1, v4

    :goto_95
    if-eqz v1, :cond_ac

    .line 402
    const-string v4, "_ev"

    .line 403
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 404
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    move-object/from16 v6, p5

    goto :goto_32

    .line 406
    :cond_ac
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a9

    add-int/lit8 v14, v14, 0x1

    .line 407
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(IZ)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 408
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 412
    const-string v7, "Item array not supported on client\'s version of Google Play Services (Android Only)"

    invoke-virtual {v1, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x17

    .line 413
    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 414
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_a9

    :cond_e8
    if-le v14, v12, :cond_a9

    .line 415
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v4, "Item can\'t contain more than "

    const-string v6, " item-scoped custom params"

    .line 417
    invoke-static {v12, v4, v6}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 420
    invoke-virtual {v1, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x1c

    .line 421
    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 422
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_a9

    :cond_116
    :goto_116
    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .registers 5

    .line 478
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 479
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_1e

    .line 480
    :cond_b
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 482
    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1a} :catch_1e

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static zza(Landroid/content/Context;Z)Z
    .registers 3

    .line 483
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 484
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_10

    .line 485
    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 486
    :cond_10
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zza(Landroid/content/Intent;)Z
    .registers 2

    .line 496
    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 497
    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 498
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "https://www.google.com"

    .line 499
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android-app://com.google.appcrawler"

    .line 500
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Landroid/os/Bundle;I)Z
    .registers 6

    .line 470
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_8

    return v1

    .line 471
    :cond_8
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 472
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/2addr v1, v3

    if-le v1, p1, :cond_15

    .line 473
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    return v3
.end method

.method public static zza(Ljava/lang/Object;)Z
    .registers 2

    .line 474
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_f

    instance-of p0, p0, Landroid/os/Bundle;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v0, :cond_16

    if-nez v1, :cond_16

    .line 503
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    :cond_16
    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 506
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    .line 507
    :cond_2d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    :cond_34
    if-nez v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 508
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3f

    goto :goto_59

    .line 509
    :cond_3f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    .line 510
    :cond_4c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    :cond_59
    :goto_59
    const/4 p0, 0x0

    return p0

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    return p0
.end method

.method private static zza(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 428
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 429
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_15

    aget-object v3, p1, v2

    .line 430
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method public static zza(Landroid/os/Parcelable;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 512
    :try_start_9
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_14
    move-exception p0

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    throw p0
.end method

.method public static zzb(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzae;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_9

    .line 12
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 13
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzae;

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v3, "app_id"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "origin"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v3, "creation_timestamp"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 23
    const-string v3, "active"

    iget-boolean v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    if-eqz v3, :cond_61

    .line 25
    const-string v4, "trigger_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_61
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v3, :cond_79

    .line 27
    const-string v4, "timed_out_event_name"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v3, :cond_79

    .line 29
    const-string v4, "timed_out_event_params"

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    :cond_79
    const-string v3, "trigger_timeout"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 33
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v3, :cond_98

    .line 34
    const-string v4, "triggered_event_name"

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v3, :cond_98

    .line 36
    const-string v4, "triggered_event_params"

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    :cond_98
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string v3, "time_to_live"

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzj:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v1, :cond_c0

    .line 42
    const-string v3, "expired_event_name"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v1, :cond_c0

    .line 44
    const-string v3, "expired_event_params"

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    :cond_c0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_c5
    return-object v0
.end method

.method private final zzb(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 66
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 67
    :try_start_7
    invoke-static {p1}, Ld4/c;->a(Landroid/content/Context;)Ld4/b;

    move-result-object p1

    const/16 v1, 0x40

    .line 68
    invoke-virtual {p1, v1, p2}, Ld4/b;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 69
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_5a

    array-length p2, p1

    if-lez p2, :cond_5a

    const/4 p2, 0x0

    .line 70
    aget-object p1, p1, p2

    .line 71
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 72
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 73
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 74
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3a
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_3a} :catch_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_3a} :catch_3b

    return p1

    :catch_3b
    move-exception p1

    goto :goto_3f

    :catch_3d
    move-exception p1

    goto :goto_4d

    .line 75
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    .line 76
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5a
    :goto_5a
    const/4 p1, 0x1

    return p1
.end method

.method private static zzb(Landroid/os/Bundle;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 48
    :cond_4
    const-string v1, "_err"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    int-to-long v2, p1

    .line 49
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public static zzb(Ljava/lang/Object;)[Landroid/os/Bundle;
    .registers 3

    .line 77
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 78
    check-cast p0, Landroid/os/Bundle;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 79
    :cond_d
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1d

    .line 80
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    .line 81
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 82
    :cond_1d
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 83
    check-cast p0, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzc()I
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_12

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->w()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    .line 26
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 27
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_19

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :catch_19
    :cond_19
    return v0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .registers 3

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzbd:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 7
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static zzf(Ljava/lang/String;)Z
    .registers 3

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzca:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzg(Ljava/lang/String;)Z
    .registers 2

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static zzh(Ljava/lang/String;)Z
    .registers 4

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_16

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public static zzj(Ljava/lang/String;)Z
    .registers 6

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zzb:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private final zzk(Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 p1, 0xe

    return p1

    :cond_14
    const/16 v1, 0x28

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    return v2

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private final zzl(Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const/16 p1, 0xe

    return p1

    :cond_14
    const/16 v1, 0x28

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    return v2

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private static zzm(Ljava/lang/String;)I
    .registers 2

    .line 1
    const-string v0, "_ldl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x800

    return p0

    .line 2
    :cond_b
    const-string v0, "_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x100

    return p0

    .line 3
    :cond_16
    const-string v0, "_lgclid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/16 p0, 0x64

    return p0

    :cond_21
    const/16 p0, 0x24

    return p0
.end method

.method private static zzn(Ljava/lang/String;)Z
    .registers 2

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 13
    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzu()Ljava/security/MessageDigest;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_10

    .line 4
    .line 5
    :try_start_4
    const-string v1, "MD5"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_d

    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    return-object v1

    .line 14
    :catch_d
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private final zzy()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzg:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_5c

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzo()Lb1/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    return v1

    .line 13
    :cond_c
    invoke-virtual {v0}, Lb1/e;->a()Ls4/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    const-wide/16 v4, 0x2710

    .line 21
    .line 22
    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;
    :try_end_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_1b} :catch_3c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1b} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1b} :catch_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_1b} :catch_36

    .line 27
    .line 28
    if-eqz v0, :cond_2f

    .line 29
    .line 30
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v2, v3, :cond_2f

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_2f

    .line 39
    :catch_26
    move-exception v1

    .line 40
    :goto_27
    move-object v2, v0

    .line 41
    goto :goto_3d

    .line 42
    :catch_29
    move-exception v1

    .line 43
    goto :goto_27

    .line 44
    :catch_2b
    move-exception v1

    .line 45
    goto :goto_27

    .line 46
    :catch_2d
    move-exception v1

    .line 47
    goto :goto_27

    .line 48
    :cond_2f
    :goto_2f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzg:Ljava/lang/Boolean;
    :try_end_35
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1d .. :try_end_35} :catch_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1d .. :try_end_35} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_35} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1d .. :try_end_35} :catch_26

    .line 53
    .line 54
    goto :goto_4f

    .line 55
    :catch_36
    move-exception v1

    .line 56
    goto :goto_3d

    .line 57
    :catch_38
    move-exception v1

    .line 58
    goto :goto_3d

    .line 59
    :catch_3a
    move-exception v1

    .line 60
    goto :goto_3d

    .line 61
    :catch_3c
    move-exception v1

    .line 62
    :goto_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v3, "Measurement manager api exception"

    .line 71
    .line 72
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzg:Ljava/lang/Boolean;

    .line 78
    .line 79
    move-object v0, v2

    .line 80
    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "Measurement manager api status result"

    .line 89
    .line 90
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzg:Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    return v0
.end method


# virtual methods
.method public final zza(I)I
    .registers 4

    .line 1
    sget-object p1, Lv3/e;->b:Lv3/e;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lv3/e;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final zza(Ljava/lang/String;)I
    .registers 6

    .line 53
    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_a

    return v2

    .line 54
    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzji;->zza:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzji;->zzb:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 p1, 0xd

    return p1

    :cond_17
    const/16 v1, 0x28

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 5

    .line 46
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    const-string v0, "user property referrer"

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzm(Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_1d

    .line 50
    :cond_13
    const-string v0, "user property"

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzm(Ljava/lang/String;)I

    move-result v1

    .line 52
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_1d
    if-eqz p1, :cond_21

    const/4 p1, 0x0

    return p1

    :cond_21
    const/4 p1, 0x7

    return p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;)J
    .registers 9

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzu()Ljava/security/MessageDigest;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_23

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-wide v2

    :cond_23
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_73

    .line 62
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_73

    .line 63
    invoke-static {p1}, Ld4/c;->a(Landroid/content/Context;)Ld4/b;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Ld4/b;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 65
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_58

    array-length p2, p1

    if-lez p2, :cond_58

    const/4 p2, 0x0

    .line 66
    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza([B)J

    move-result-wide p1

    return-wide p1

    :catch_56
    move-exception p1

    goto :goto_66

    .line 68
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_65} :catch_56

    return-wide v2

    .line 69
    :goto_66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_73
    return-wide v4
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/net/Uri;Z)Landroid/os/Bundle;
    .registers 20

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 90
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_a} :catch_33

    const-string v3, "sfmc_id"

    const-string v4, "srsltid"

    const-string v5, "dclid"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    if-eqz v2, :cond_4a

    .line 91
    :try_start_16
    const-string v2, "utm_campaign"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v8, "utm_source"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    const-string v9, "utm_medium"

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz p2, :cond_36

    .line 95
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_37

    :catch_33
    move-exception v0

    goto/16 :goto_188

    :cond_36
    move-object v11, v1

    .line 96
    :goto_37
    const-string v12, "utm_id"

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 98
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 99
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16 .. :try_end_49} :catch_33

    goto :goto_53

    :cond_4a
    move-object v2, v1

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 100
    :goto_53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 101
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 102
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 103
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    if-eqz p2, :cond_73

    .line 104
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 105
    :cond_73
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 106
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 107
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8d

    .line 108
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8c

    goto :goto_8d

    :cond_8c
    return-object v1

    .line 109
    :cond_8d
    :goto_8d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a0

    move-object/from16 v16, v3

    .line 111
    const-string v3, "campaign"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :cond_a0
    move-object/from16 v16, v3

    .line 112
    :goto_a2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 113
    const-string v2, "source"

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_ad
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 115
    const-string v2, "medium"

    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 117
    invoke-virtual {v1, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    if-eqz p2, :cond_cc

    .line 118
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 119
    invoke-virtual {v1, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_cc
    const-string v2, "gad_source"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_dd

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_dd
    const-string v2, "utm_term"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 125
    const-string v3, "term"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_ee
    const-string v2, "utm_content"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 128
    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_ff
    const-string v2, "aclid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10e

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_10e
    const-string v2, "cp1"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11d

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_11d
    const-string v2, "anid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12c

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_12c
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_137

    .line 139
    const-string v2, "campaign_id"

    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_137
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 141
    invoke-virtual {v1, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_140
    const-string v2, "utm_source_platform"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_151

    .line 144
    const-string v3, "source_platform"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_151
    const-string v2, "utm_creative_format"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_162

    .line 147
    const-string v3, "creative_format"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_162
    const-string v2, "utm_marketing_tactic"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_173

    .line 150
    const-string v2, "marketing_tactic"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_173
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17c

    .line 152
    invoke-virtual {v1, v4, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_17c
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    move-object/from16 v0, v16

    .line 154
    invoke-virtual {v1, v0, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_187
    return-object v1

    .line 155
    :goto_188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    .line 174
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3f

    .line 175
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Param value can\'t be null"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 180
    :cond_3b
    invoke-virtual {p0, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_3f
    return-object p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    .line 181
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzji;->zzd:[Ljava/lang/String;

    .line 182
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v9, :cond_cb

    .line 183
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzc()I

    move-result v11

    .line 185
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v13

    :goto_2b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v6, :cond_43

    .line 187
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_43

    :cond_41
    move v0, v13

    goto :goto_51

    :cond_43
    :goto_43
    if-nez p5, :cond_4a

    .line 188
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzl(Ljava/lang/String;)I

    move-result v0

    goto :goto_4b

    :cond_4a
    move v0, v13

    :goto_4b
    if-nez v0, :cond_51

    .line 189
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzk(Ljava/lang/String;)I

    move-result v0

    :cond_51
    :goto_51
    if-eqz v0, :cond_60

    const/4 v1, 0x3

    if-ne v0, v1, :cond_58

    move-object v1, v3

    goto :goto_59

    :cond_58
    move-object v1, v10

    .line 190
    :goto_59
    invoke-static {v5, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_92

    .line 192
    :cond_60
    invoke-virtual {v9, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p5

    .line 193
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v4

    const/16 v0, 0x11

    if-ne v4, v0, :cond_77

    .line 194
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_95

    :cond_77
    if-eqz v4, :cond_95

    .line 195
    const-string v0, "_ev"

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const/16 v0, 0x15

    if-ne v4, v0, :cond_87

    move-object v0, v2

    goto :goto_88

    :cond_87
    move-object v0, v3

    .line 197
    :goto_88
    invoke-virtual {v9, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_92
    :goto_92
    move-object/from16 v6, p4

    goto :goto_2b

    .line 199
    :cond_95
    :goto_95
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    add-int/lit8 v14, v14, 0x1

    if-le v14, v11, :cond_92

    .line 200
    const-string v0, "Event can\'t contain more than "

    const-string v1, " params"

    .line 201
    invoke-static {v11, v0, v1}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v1, v0, v4, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 207
    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 208
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_92

    :cond_ca
    return-object v5

    :cond_cb
    return-object v10
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;
    .registers 15

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;)I

    move-result p8

    if-nez p8, :cond_43

    .line 216
    new-instance p8, Landroid/os/Bundle;

    if-eqz p3, :cond_17

    invoke-direct {p8, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_15
    move-object v3, p8

    goto :goto_1b

    :cond_17
    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_15

    .line 217
    :goto_1b
    const-string p3, "_o"

    invoke-virtual {v3, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 219
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p1

    move-object p3, v2

    if-eqz p7, :cond_33

    .line 220
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 221
    :cond_33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 222
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzbf;

    move-wide p6, p5

    move-object p5, p4

    new-instance p4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {p4, p1}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    invoke-direct/range {p2 .. p7}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    return-object p2

    :cond_43
    move-object v0, p0

    move-object p3, p2

    .line 223
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 226
    const-string p3, "Invalid conditional property event name"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;
    .registers 12

    .line 258
    const-string v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version="

    const-string v1, "v"

    :try_start_4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 259
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzg()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string p1, "."

    .line 262
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string p1, "&rdid="

    .line 265
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string p1, "&bundleid="

    .line 267
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string p1, "&retry="

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzag;->zzp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 271
    const-string p2, "&ddl_test=1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :catch_5b
    move-exception p1

    goto :goto_7e

    :catch_5d
    move-exception p1

    goto :goto_7e

    .line 272
    :cond_5f
    :goto_5f
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_78

    const/4 p2, 0x0

    .line 273
    invoke-virtual {p7, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x26

    if-eq p2, p3, :cond_74

    .line 274
    const-string p2, "&"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_74
    invoke-virtual {p1, p7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_78
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_7d} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7d} :catch_5b

    return-object p2

    .line 277
    :goto_7e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 278
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;J)V
    .registers 10

    .line 280
    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1d

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Params already contained engagement"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    add-long/2addr p2, v1

    .line 282
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_29

    .line 301
    :cond_3
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_29
    :goto_29
    return-void
.end method

.method public final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_58

    .line 347
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 348
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 349
    :cond_11
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 350
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 351
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_1d
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 353
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 354
    :cond_2b
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_35

    .line 355
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_35
    if-eqz p2, :cond_58

    if-eqz p3, :cond_42

    .line 356
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    .line 357
    :goto_43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 358
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 360
    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;I)V
    .registers 5

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 377
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 378
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;J)V
    .registers 6

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    const-string v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 381
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 382
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;Landroid/os/Bundle;)V
    .registers 4

    .line 369
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 370
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/lang/String;)V
    .registers 5

    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 386
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/w0;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 367
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 368
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;Z)V
    .registers 5

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 364
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/w0;[B)V
    .registers 5

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 373
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->zza(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 374
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzgs;I)V
    .registers 11

    .line 323
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 324
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_10

    .line 326
    const-string v3, "Event can\'t contain more than "

    const-string v4, " params"

    .line 327
    invoke-static {p2, v3, v4}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 329
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 334
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_10

    :cond_59
    return-void
.end method

.method public final zza([Landroid/os/Parcelable;I)V
    .registers 14

    .line 304
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 305
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_67

    aget-object v3, p1, v2

    .line 306
    check-cast v3, Landroid/os/Bundle;

    .line 307
    new-instance v4, Ljava/util/TreeSet;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 308
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 309
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjk;->zzd:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    add-int/lit8 v5, v5, 0x1

    if-le v5, p2, :cond_1a

    .line 310
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 311
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Param can\'t contain more than "

    const-string v9, " item-scoped custom parameters"

    .line 312
    invoke-static {p2, v8, v9}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 315
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0x1c

    .line 316
    invoke-static {v3, v7}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Landroid/os/Bundle;I)Z

    .line 317
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1a

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_67
    return-void
.end method

.method public final zza(IZ)Z
    .registers 4

    .line 475
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzls;->zzab()Ljava/lang/Boolean;

    move-result-object p2

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzg()I

    move-result v0

    div-int/lit16 p1, p1, 0x3e8

    if-ge v0, p1, :cond_1d

    if-eqz p2, :cond_1b

    .line 477
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Ljava/lang/String;D)Z
    .registers 7

    const/4 v0, 0x0

    .line 487
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v1

    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 488
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 490
    const-string v2, "deeplink"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    const-string p1, "timestamp"

    .line 492
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 493
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception p1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_11

    .line 447
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 448
    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_2d

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    .line 451
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 432
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzn(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 433
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzae()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 434
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 435
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 436
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 437
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    return v1

    .line 438
    :cond_27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 439
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Invalid admob_app_id. Analytics disabled."

    .line 442
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_45
    const/4 p1, 0x1

    return p1

    .line 443
    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzae()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 446
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_5c
    return v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p4, :cond_4

    return v0

    .line 462
    :cond_4
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_54

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_21

    goto :goto_54

    .line 463
    :cond_21
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_30

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_30

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    return v2

    .line 464
    :cond_30
    :goto_30
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 465
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_54

    .line 466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 467
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    .line 468
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 469
    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {p3, v0, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_54
    :goto_54
    return v0
.end method

.method public final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p4, :cond_11

    .line 453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 454
    :cond_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzos;->zza:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_15
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 455
    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 456
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 457
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Name starts with reserved prefix. Type, name"

    .line 458
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_30
    if-eqz p2, :cond_4e

    .line 459
    invoke-static {p4, p2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    if-eqz p3, :cond_40

    .line 460
    invoke-static {p4, p3}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4e

    .line 461
    :cond_40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_4e
    const/4 p1, 0x1

    return p1
.end method

.method public final zzaa()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-nez v5, :cond_27

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    cmp-long v0, v1, v3

    .line 24
    .line 25
    if-nez v0, :cond_27

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "Utils falling back to Random for random id"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final zzb(Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string v0, "user property"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zza:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 p1, 0xf

    return p1

    :cond_15
    const/16 v1, 0x18

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzb()Lb4/a;
    .registers 2

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 5
    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move-object v5, p2

    .line 7
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(ILjava/lang/Object;ZZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    move-object v5, p2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result p1

    :goto_2b
    move v1, p1

    goto :goto_36

    .line 10
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_2b

    :goto_36
    const/4 v4, 0x1

    move-object v2, v5

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(ILjava/lang/Object;ZZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 51
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 53
    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_41

    if-eq v1, v3, :cond_41

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 57
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 58
    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 59
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_49
    if-ge v1, v2, :cond_6b

    .line 60
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_65

    .line 61
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_65

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 64
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 65
    :cond_65
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_49

    :cond_6b
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/String;)J
    .registers 5

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_d
    const/4 v0, 0x0

    .line 5
    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld4/c;->a(Landroid/content/Context;)Ld4/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ld4/b;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 6
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_2c

    .line 7
    :catch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "PackageManager failed to find running app: app_id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 8
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzm(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(ILjava/lang/Object;ZZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    move-object v2, p2

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzm(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzos;->zza(ILjava/lang/Object;ZZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 12
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 14
    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 17
    :cond_3d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 18
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_45
    if-ge v1, v2, :cond_69

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_63

    .line 20
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 23
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 24
    :cond_63
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_45

    :cond_69
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzby:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_17

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzag;->zzo()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/String;)Z
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld4/c;->a(Landroid/content/Context;)Ld4/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld4/b;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzh:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    .line 2
    sget-object v0, Lv3/e;->b:Lv3/e;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Lv3/f;->e:I

    const/4 v0, 0x0

    .line 5
    :try_start_10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1d

    .line 6
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_24

    :catch_1d
    const-string v1, "GooglePlayServicesUtil"

    const-string v2, "Google Play services is missing."

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_24
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzh:Ljava/lang/Integer;

    .line 9
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Ljava/lang/String;)Z
    .registers 6

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    return v1
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .registers 2

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()J
    .registers 8

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzd(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_16

    return-wide v1

    .line 6
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1f

    const-wide/16 v3, 0x4

    goto :goto_40

    .line 7
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/measurement/internal/a;->a()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_29

    const-wide/16 v3, 0x8

    goto :goto_40

    .line 8
    :cond_29
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzc()I

    move-result v0

    .line 9
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzax:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_3f

    const-wide/16 v3, 0x10

    goto :goto_40

    :cond_3f
    move-wide v3, v1

    .line 12
    :goto_40
    const-string v0, "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zze(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    :cond_4b
    cmp-long v0, v3, v1

    if-nez v0, :cond_58

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzy()Z

    move-result v0

    if-nez v0, :cond_58

    const-wide/16 v5, 0x40

    or-long/2addr v3, v5

    :cond_58
    cmp-long v0, v3, v1

    if-nez v0, :cond_5f

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_5f
    return-wide v3
.end method

.method public final zzn()J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 3
    :try_start_f
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzb()Lb4/a;

    move-result-object v4

    check-cast v4, Lb4/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 5
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzos;->zze:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzos;->zze:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_34
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_34

    throw v1

    .line 7
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 8
    :try_start_3a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 10
    monitor-exit v0

    return-wide v1

    :catchall_4b
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public final zzo()Lb1/e;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzf:Lb1/e;

    .line 2
    .line 3
    if-nez v0, :cond_49

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "context"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "AdServicesInfo.version="

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    sget-object v4, Lz0/a;->a:Lz0/a;

    .line 25
    .line 26
    const/16 v5, 0x1e

    .line 27
    .line 28
    if-lt v2, v5, :cond_22

    .line 29
    .line 30
    invoke-virtual {v4}, Lz0/a;->a()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v6, v3

    .line 36
    :goto_23
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v6, "MeasurementManager"

    .line 44
    .line 45
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    if-lt v2, v5, :cond_35

    .line 49
    .line 50
    invoke-virtual {v4}, Lz0/a;->a()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :cond_35
    const/4 v1, 0x5

    .line 55
    const/4 v2, 0x0

    .line 56
    if-lt v3, v1, :cond_3f

    .line 57
    .line 58
    new-instance v1, Lc1/d;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lc1/d;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move-object v1, v2

    .line 65
    :goto_40
    if-eqz v1, :cond_47

    .line 66
    .line 67
    new-instance v2, Lb1/d;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lb1/d;-><init>(Lc1/d;)V

    .line 70
    .line 71
    .line 72
    :cond_47
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzf:Lb1/e;

    .line 73
    .line 74
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzf:Lb1/e;

    .line 75
    .line 76
    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .registers 5

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    new-instance v2, Ljava/math/BigInteger;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 18
    .line 19
    .line 20
    new-array v0, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    const-string v2, "%032x"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
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
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzv()Ljava/security/SecureRandom;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzc:Ljava/security/SecureRandom;

    .line 5
    .line 6
    if-nez v0, :cond_e

    .line 7
    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzc:Ljava/security/SecureRandom;

    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzos;->zzc:Ljava/security/SecureRandom;

    .line 16
    .line 17
    return-object v0
.end method

.method public final zzw()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zzm()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final zzx()Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->zza()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :catch_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method
