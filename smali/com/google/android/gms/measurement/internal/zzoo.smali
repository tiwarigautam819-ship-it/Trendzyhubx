###### Class com.google.android.gms.measurement.internal.zzoo (com.google.android.gms.measurement.internal.zzoo)
.class public final Lcom/google/android/gms/measurement/internal/zzoo;
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

.method public static zza(Lcom/google/android/gms/internal/measurement/y3;Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_3

    goto :goto_24

    :cond_3
    const/4 v0, 0x0

    .line 16
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->t1()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/z3;->d0(I)Lcom/google/android/gms/internal/measurement/h4;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    :goto_24
    const/4 p0, -0x1

    return p0
.end method

.method public static zza(Ljava/util/List;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/u3;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9

    .line 33
    :cond_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->G()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->u()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_9

    .line 35
    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 37
    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9

    :cond_51
    return-object v0
.end method

.method private final zza(Ljava/util/Map;Z)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 55
    :cond_24
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_32

    .line 56
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    .line 57
    :cond_32
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_40

    .line 58
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_d

    .line 59
    :cond_40
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_71

    if-eqz p2, :cond_d

    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_53
    if-ge v7, v5, :cond_65

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/util/Map;

    .line 63
    invoke-direct {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 64
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 65
    :cond_65
    new-array v3, v6, [Landroid/os/Parcelable;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d

    .line 67
    :cond_71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_79
    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BuilderT::",
            "Lcom/google/android/gms/internal/measurement/s6;",
            ">(TBuilderT;[B)TBuilderT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t5;->a:Lcom/google/android/gms/internal/measurement/t5;

    if-eqz v0, :cond_5

    goto :goto_19

    .line 2
    :cond_5
    const-class v0, Lcom/google/android/gms/internal/measurement/t5;

    monitor-enter v0

    .line 3
    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/t5;->a:Lcom/google/android/gms/internal/measurement/t5;

    if-eqz v1, :cond_11

    .line 4
    monitor-exit v0

    :goto_d
    move-object v0, v1

    goto :goto_19

    :catchall_f
    move-exception p0

    goto :goto_31

    .line 5
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w5;->h()Lcom/google/android/gms/internal/measurement/t5;

    move-result-object v1

    .line 6
    sput-object v1, Lcom/google/android/gms/internal/measurement/t5;->a:Lcom/google/android/gms/internal/measurement/t5;

    .line 7
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_f

    goto :goto_d

    :goto_19
    if-eqz v0, :cond_25

    .line 8
    check-cast p0, Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    array-length v1, p1

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/y5;->g([BILcom/google/android/gms/internal/measurement/t5;)V

    return-object p0

    .line 11
    :cond_25
    check-cast p0, Lcom/google/android/gms/internal/measurement/y5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    array-length v0, p1

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/measurement/t5;->b:Lcom/google/android/gms/internal/measurement/t5;

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/y5;->g([BILcom/google/android/gms/internal/measurement/t5;)V

    return-object p0

    .line 15
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_f

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/u3;
    .registers 4

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 220
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    :cond_7
    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .registers 4

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    .line 418
    const-string p0, "Dynamic "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    .line 419
    const-string p0, "Sequence "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    .line 420
    const-string p0, "Session-Scoped "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_37

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_15
    if-ge v7, v1, :cond_2d

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v7

    .line 454
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_2d

    .line 455
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2a

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 456
    :cond_2d
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_37
    return-object v2
.end method

.method private static zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 597
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_10

    .line 598
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_10
    :goto_10
    return-void
.end method

.method private static zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 490
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 491
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 492
    aget-object v3, v2, v0

    .line 493
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    .line 494
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 495
    invoke-static {p0, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p3;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 474
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    .line 476
    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/t3;->i(Ljava/lang/String;)V

    .line 477
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_35

    .line 478
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t3;->h(J)V

    goto :goto_53

    .line 479
    :cond_35
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3f

    .line 480
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/t3;->j(Ljava/lang/String;)V

    goto :goto_53

    .line 481
    :cond_3f
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_53

    .line 482
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 483
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 484
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v2, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/u3;->o(Lcom/google/android/gms/internal/measurement/u3;D)V

    :cond_53
    :goto_53
    if-ltz v1, :cond_66

    .line 485
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 486
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p0, Lcom/google/android/gms/internal/measurement/q3;

    .line 487
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/u3;

    .line 488
    invoke-static {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/q3;->s(Lcom/google/android/gms/internal/measurement/q3;ILcom/google/android/gms/internal/measurement/u3;)V

    return-void

    .line 489
    :cond_66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/p3;->h(Lcom/google/android/gms/internal/measurement/t3;)V

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 581
    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/h2;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 549
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 550
    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->t()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 552
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 553
    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->v()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 554
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 556
    :cond_35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->w()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_c2

    add-int/lit8 v0, p2, 0x1

    .line 557
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->q()Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 558
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 559
    const-string v3, "string_filter"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v3, " {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->v()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 562
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->o()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->u()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 564
    const-string v3, "expression"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->t()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 566
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->s()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 567
    :cond_87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->n()I

    move-result v3

    if-lez v3, :cond_bc

    add-int/lit8 v3, p2, 0x2

    .line 568
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 569
    const-string v3, "expression_list {\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n2;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    .line 571
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 572
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 574
    :cond_b9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_bc
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 576
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_c2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->u()Z

    move-result v0

    if-eqz v0, :cond_d3

    add-int/lit8 v0, p2, 0x1

    .line 578
    const-string v2, "number_filter"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object p3

    invoke-static {p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)V

    .line 579
    :cond_d3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 580
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/d4;)V
    .registers 13

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    .line 496
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 497
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->q()I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p2, :cond_47

    .line 500
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 501
    const-string p2, "results: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->C()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_3f

    .line 503
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_3f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2c

    .line 505
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->w()I

    move-result p2

    if-eqz p2, :cond_79

    .line 507
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 508
    const-string p2, "status: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->E()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_71

    .line 510
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_71
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_5e

    .line 512
    :cond_76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->n()I

    move-result p2

    const-string v0, "}\n"

    const/4 v4, 0x0

    if-eqz p2, :cond_d6

    .line 514
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 515
    const-string p2, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->B()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v3

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/o3;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_a6

    .line 517
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_a6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/o3;->t()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/o3;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b6

    :cond_b5
    move-object v5, v4

    :goto_b6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 519
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/o3;->s()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/o3;->q()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_ce

    :cond_cd
    move-object v5, v4

    :goto_ce
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_93

    .line 521
    :cond_d3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_d6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->t()I

    move-result p2

    if-eqz p2, :cond_147

    .line 523
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 524
    const-string p2, "sequence_filter_timestamps: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/d4;->D()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v3

    :goto_ed
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_144

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/f4;

    add-int/lit8 v5, p3, 0x1

    if-eqz p3, :cond_100

    .line 526
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_100
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f4;->u()Z

    move-result p3

    if-eqz p3, :cond_10f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f4;->r()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_110

    :cond_10f
    move-object p3, v4

    :goto_110
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": ["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/f4;->t()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v3

    :goto_121
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    if-eqz v1, :cond_138

    .line 529
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_138
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v8

    goto :goto_121

    .line 531
    :cond_13d
    const-string p3, "]"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v5

    goto :goto_ed

    .line 532
    :cond_144
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_147
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    .line 582
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 583
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string p2, " {\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->t()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 586
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_35

    const/4 v0, 0x2

    if-eq p2, v0, :cond_32

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2f

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2c

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2a

    const-string p2, "BETWEEN"

    goto :goto_37

    :cond_2a
    const/4 p0, 0x0

    throw p0

    :cond_2c
    const-string p2, "EQUAL"

    goto :goto_37

    :cond_2f
    const-string p2, "GREATER_THAN"

    goto :goto_37

    :cond_32
    const-string p2, "LESS_THAN"

    goto :goto_37

    :cond_35
    const-string p2, "UNKNOWN_COMPARISON_TYPE"

    :goto_37
    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 587
    :cond_3c
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->v()Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 588
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->s()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 589
    :cond_4f
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->u()Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 590
    const-string p2, "comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 591
    :cond_5e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->x()Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 592
    const-string p2, "min_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 593
    :cond_6d
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->w()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 594
    const-string p2, "max_comparison_value"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/j2;->q()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 595
    :cond_7c
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 596
    const-string p1, "}\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 599
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 600
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 603
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/u3;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_4

    goto/16 :goto_89

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 535
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    if-eqz v0, :cond_a

    .line 536
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 537
    const-string v1, "param {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->I()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v2

    .line 539
    :goto_35
    const-string v3, "name"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_45
    move-object v1, v2

    .line 541
    :goto_46
    const-string v3, "string_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5b

    :cond_5a
    move-object v1, v2

    :goto_5b
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 544
    :cond_6e
    const-string v1, "double_value"

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 545
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->x()I

    move-result v1

    if-lez v1, :cond_80

    .line 546
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u3;->E()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 547
    :cond_80
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 548
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_89
    :goto_89
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Z
    .registers 2

    .line 665
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 666
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 667
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 668
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    .line 669
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/u3;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 7
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->x()I

    move-result p1

    if-lez p1, :cond_3e

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u3;->E()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 11
    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/u3;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    if-eqz v1, :cond_9

    .line 24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/u3;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/u3;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 28
    :cond_42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_24

    .line 30
    :cond_54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_24

    .line 32
    :cond_66
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 34
    :cond_70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic g_()Lcom/google/android/gms/measurement/internal/zzoo;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zza(Ljava/lang/String;)J
    .registers 4

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    .line 20
    :cond_9
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zza([B)J
    .registers 4

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzt()V

    .line 23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzu()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_20

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_20
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 68
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 69
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Ly3/b; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 72
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_2d

    .line 73
    :catch_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_1a

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 75
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 76
    throw p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/q3;
    .registers 7

    .line 201
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->A()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 203
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/q3;->q(JLcom/google/android/gms/internal/measurement/q3;)V

    .line 204
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/t3;->i(Ljava/lang/String;)V

    .line 206
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/t3;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/p3;->h(Lcom/google/android/gms/internal/measurement/t3;)V

    goto :goto_16

    .line 210
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzdi:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 211
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v2, "_o"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 212
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/t3;->i(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/t3;->j(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/u3;

    .line 216
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/p3;->i(Lcom/google/android/gms/internal/measurement/u3;)V

    .line 217
    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/q3;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/c;)Lcom/google/android/gms/measurement/internal/zzbf;
    .registers 10

    .line 39
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    const-string v1, "_o"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    move-object v5, v1

    goto :goto_1e

    .line 44
    :cond_1b
    const-string v1, "app"

    goto :goto_19

    .line 45
    :goto_1e
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/c;->a:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/c;->a:Ljava/lang/String;

    :cond_28
    move-object v3, v1

    .line 48
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    .line 49
    iget-wide v6, p1, Lcom/google/android/gms/internal/measurement/c;->b:J

    .line 50
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    return-object v2
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/y3;Lcom/google/android/gms/internal/measurement/p3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzno;
    .registers 15

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_37
    if-ge v6, v4, :cond_5b

    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "duplicate element: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznu;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznu;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzaz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "."

    if-nez v7, :cond_a5

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznu;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_b2

    .line 89
    :cond_a5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznu;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    :goto_b2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznu;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 92
    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->L()Ljava/lang/String;

    move-result-object v3

    .line 93
    const-string v4, "gmp_app_id"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 94
    const-string v3, "gmp_version"

    .line 95
    const-string v4, "106000"

    .line 96
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 97
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->C()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzck:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 100
    const-string v3, ""

    .line 101
    :cond_f3
    const-string v4, "app_instance_id"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 102
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->P()Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v4, "rdid"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 104
    const-string v3, "bundle_id"

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y3;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 105
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/p3;->n()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11d

    move-object v3, v4

    .line 108
    :cond_11d
    const-string v4, "app_event_name"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 109
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->c0()I

    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v4, "app_version"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 112
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->N()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_160

    .line 116
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_160

    .line 117
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 118
    :cond_160
    const-string v4, "os_version"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 119
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/p3;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string v4, "timestamp"

    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 121
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->X()Z

    move-result v3

    .line 122
    const-string v4, "1"

    if-eqz v3, :cond_183

    .line 123
    const-string v3, "lat"

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 124
    :cond_183
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v3, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/z3;->n()I

    move-result v3

    .line 125
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v5, "privacy_sandbox_version"

    invoke-static {v6, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 127
    const-string v3, "trigger_uri_source"

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 128
    const-string v3, "trigger_uri_timestamp"

    .line 129
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {v6, v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 131
    const-string v3, "request_uuid"

    invoke-static {v6, v3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 132
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/p3;->o()Ljava/util/List;

    move-result-object p3

    .line 133
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 134
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1b4
    :goto_1b4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_208

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/u3;

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v7

    if-eqz v7, :cond_1d6

    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    .line 138
    :cond_1d6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->G()Z

    move-result v7

    if-eqz v7, :cond_1e8

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->u()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    .line 140
    :cond_1e8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v7

    if-eqz v7, :cond_1f6

    .line 141
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    .line 142
    :cond_1f6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v7

    if-eqz v7, :cond_1b4

    .line 143
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    .line 144
    :cond_208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "\\|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 145
    invoke-static {v6, p3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 146
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y3;->n()Ljava/util/List;

    move-result-object p3

    .line 147
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 148
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_228
    :goto_228
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/h4;

    .line 149
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->C()Z

    move-result v8

    if-eqz v8, :cond_24a

    .line 151
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->n()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_228

    .line 152
    :cond_24a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->D()Z

    move-result v8

    if-eqz v8, :cond_25c

    .line 153
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->s()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_228

    .line 154
    :cond_25c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->G()Z

    move-result v8

    if-eqz v8, :cond_26a

    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_228

    .line 156
    :cond_26a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->E()Z

    move-result v8

    if-eqz v8, :cond_228

    .line 157
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/h4;->w()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_228

    .line 158
    :cond_27c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbe:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {v6, p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 160
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->W()Z

    move-result p1

    if-eqz p1, :cond_298

    goto :goto_29a

    .line 161
    :cond_298
    const-string v4, "0"

    .line 162
    :goto_29a
    const-string p1, "dma"

    invoke-static {v6, p1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 163
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->H()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2ba

    .line 165
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->H()Ljava/lang/String;

    move-result-object p1

    .line 166
    const-string p3, "dma_cps"

    invoke-static {v6, p3, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 167
    :cond_2ba
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcm:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_376

    .line 168
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->Z()Z

    move-result p1

    if-eqz p1, :cond_376

    .line 169
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->a2()Lcom/google/android/gms/internal/measurement/h3;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->H()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2eb

    .line 171
    const-string p2, "dl_gclid"

    .line 172
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->H()Ljava/lang/String;

    move-result-object p3

    .line 173
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 174
    :cond_2eb
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->G()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2fe

    .line 175
    const-string p2, "dl_gbraid"

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->G()Ljava/lang/String;

    move-result-object p3

    .line 177
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 178
    :cond_2fe
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->D()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_311

    .line 179
    const-string p2, "dl_gs"

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->D()Ljava/lang/String;

    move-result-object p3

    .line 181
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 182
    :cond_311
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->n()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-lez p2, :cond_328

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->n()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 184
    const-string p3, "dl_ss_ts"

    invoke-static {v6, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 185
    :cond_328
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->K()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_33b

    .line 186
    const-string p2, "mr_gclid"

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->K()Ljava/lang/String;

    move-result-object p3

    .line 188
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 189
    :cond_33b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->J()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_34e

    .line 190
    const-string p2, "mr_gbraid"

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->J()Ljava/lang/String;

    move-result-object p3

    .line 192
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 193
    :cond_34e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->I()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_361

    .line 194
    const-string p2, "mr_gs"

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->I()Ljava/lang/String;

    move-result-object p3

    .line 196
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 197
    :cond_361
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->r()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-lez p2, :cond_376

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/h3;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 199
    const-string p2, "mr_click_ts"

    invoke-static {v6, p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 200
    :cond_376
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzno;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzno;-><init>(Ljava/lang/String;JI)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/f2;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 397
    const-string p1, "null"

    return-object p1

    .line 398
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string v1, "\nevent_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 401
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->w()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->x()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->y()Z

    move-result v4

    .line 405
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 407
    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 408
    :cond_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5f

    .line 409
    const-string v1, "event_count_filter"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->t()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)V

    .line 410
    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->n()I

    move-result v1

    if-lez v1, :cond_83

    .line 411
    const-string v1, "  filters {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f2;->v()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h2;

    const/4 v3, 0x2

    .line 413
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/h2;)V

    goto :goto_72

    .line 414
    :cond_83
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 415
    const-string p1, "}\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/l2;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 422
    const-string p1, "null"

    return-object p1

    .line 423
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 426
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 427
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    const-string v3, "property_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->s()Z

    move-result v1

    .line 430
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->t()Z

    move-result v3

    .line 431
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->u()Z

    move-result v4

    .line 432
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 434
    const-string v3, "filter_type"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    const/4 v1, 0x1

    .line 435
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l2;->p()Lcom/google/android/gms/internal/measurement/h2;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/h2;)V

    .line 436
    const-string p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/x3;)Ljava/lang/String;
    .registers 14

    if-nez p1, :cond_5

    .line 221
    const-string p1, ""

    return-object p1

    .line 222
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    const-string v1, "\nbatch {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 226
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->n()I

    move-result v1

    if-lez v1, :cond_54

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->p()Lcom/google/android/gms/internal/measurement/z3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->A()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 229
    const-string v1, "upload_subdomain"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->z()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 231
    const-string v1, "sgtm_join_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/x3;->y()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5c
    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_581

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/z3;

    if-eqz v1, :cond_5c

    const/4 v2, 0x1

    .line 233
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 234
    const-string v3, "bundle {\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->z0()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "protocol_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_86
    sget-object v3, Lcom/google/android/gms/internal/measurement/y9;->b:Lcom/google/android/gms/internal/measurement/y9;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y9;->get()Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 239
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->C0()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 240
    const-string v3, "session_stitching_token"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 241
    :cond_aa
    const-string v3, "platform"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->O()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->u0()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->N1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_c6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->H0()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->Z1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uploading_gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    :cond_d9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->s0()Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->G1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dynamite_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_ec
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->l0()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->y1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "config_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    :cond_ff
    const-string v3, "gmp_app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->L()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v3, "admob_app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->d2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v3, "app_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 253
    const-string v3, "app_version"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a0()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 255
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->c0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "app_version_major"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_136
    const-string v3, "firebase_instance_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->K()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->q0()Z

    move-result v3

    if-eqz v3, :cond_152

    .line 258
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->C1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dev_cert_hash"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_152
    const-string v3, "app_store"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->G0()Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->X1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "upload_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 262
    :cond_16e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->D0()Z

    move-result v3

    if-eqz v3, :cond_181

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->T1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "start_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 264
    :cond_181
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->t0()Z

    move-result v3

    if-eqz v3, :cond_194

    .line 265
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "end_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 266
    :cond_194
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->y0()Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->R1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 268
    const-string v4, "previous_bundle_start_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 269
    :cond_1a7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->x0()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->P1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 271
    const-string v4, "previous_bundle_end_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_1ba
    const-string v3, "app_instance_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string v3, "resettable_device_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v3, "ds_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->J()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->w0()Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 276
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->X()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "limited_ad_tracking"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    :cond_1e8
    const-string v3, "os_version"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->N()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v3, "device_model"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v3, "user_default_language"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->R()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->F0()Z

    move-result v3

    if-eqz v3, :cond_216

    .line 281
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->o1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time_zone_offset_minutes"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_216
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->k0()Z

    move-result v3

    if-eqz v3, :cond_229

    .line 283
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->I0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bundle_sequential_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    :cond_229
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 287
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->p0()Z

    move-result v3

    if-eqz v3, :cond_258

    .line 288
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->R0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "delivery_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    :cond_258
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->B0()Z

    move-result v3

    if-eqz v3, :cond_26b

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->Y()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "service_upload"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 291
    :cond_26b
    const-string v3, "health_monitor"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->M()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->A0()Z

    move-result v3

    if-eqz v3, :cond_287

    .line 293
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->j1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "retry_counter"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    :cond_287
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->n0()Z

    move-result v3

    if-eqz v3, :cond_296

    .line 295
    const-string v3, "consent_signals"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_296
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->v0()Z

    move-result v3

    if-eqz v3, :cond_2a9

    .line 297
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->W()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_dma_region"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 298
    :cond_2a9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->o0()Z

    move-result v3

    if-eqz v3, :cond_2b8

    .line 299
    const-string v3, "core_platform_services"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->H()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 300
    :cond_2b8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->m0()Z

    move-result v3

    if-eqz v3, :cond_2c7

    .line 301
    const-string v3, "consent_diagnostics"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 302
    :cond_2c7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->E0()Z

    move-result v3

    if-eqz v3, :cond_2da

    .line 303
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->V1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "target_os_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    :cond_2da
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    const-string v4, "}\n"

    const/4 v5, 0x2

    if-eqz v3, :cond_372

    .line 306
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "ad_services_version"

    invoke-static {v0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->b0()Z

    move-result v3

    if-eqz v3, :cond_372

    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->b2()Lcom/google/android/gms/internal/measurement/k3;

    move-result-object v3

    if-eqz v3, :cond_372

    .line 309
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 310
    const-string v6, "attribution_eligibility_status {\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->x()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "eligible"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->A()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 313
    const-string v7, "no_access_adservices_attribution_permission"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->B()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "pre_r"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->C()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "r_extensions_too_old"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->v()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 317
    const-string v7, "adservices_extension_too_old"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->t()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "ad_storage_not_allowed"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/k3;->z()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 320
    const-string v6, "measurement_manager_disabled"

    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_372
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_419

    .line 324
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->Z()Z

    move-result v3

    if-eqz v3, :cond_419

    .line 325
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a2()Lcom/google/android/gms/internal/measurement/h3;

    move-result-object v3

    .line 326
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 327
    const-string v6, "ad_campaign_info {\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->N()Z

    move-result v6

    if-eqz v6, :cond_3a2

    .line 329
    const-string v6, "deep_link_gclid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->H()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 330
    :cond_3a2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->M()Z

    move-result v6

    if-eqz v6, :cond_3b1

    .line 331
    const-string v6, "deep_link_gbraid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->G()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 332
    :cond_3b1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->L()Z

    move-result v6

    if-eqz v6, :cond_3c0

    .line 333
    const-string v6, "deep_link_gad_source"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    :cond_3c0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->O()Z

    move-result v6

    if-eqz v6, :cond_3d3

    .line 335
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->n()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 336
    const-string v7, "deep_link_session_millis"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_3d3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->S()Z

    move-result v6

    if-eqz v6, :cond_3e2

    .line 338
    const-string v6, "market_referrer_gclid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->K()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 339
    :cond_3e2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->R()Z

    move-result v6

    if-eqz v6, :cond_3f1

    .line 340
    const-string v6, "market_referrer_gbraid"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->J()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_3f1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->Q()Z

    move-result v6

    if-eqz v6, :cond_400

    .line 342
    const-string v6, "market_referrer_gad_source"

    .line 343
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->I()Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 345
    :cond_400
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->P()Z

    move-result v6

    if-eqz v6, :cond_413

    .line 346
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/h3;->r()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 347
    const-string v6, "market_referrer_click_millis"

    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 348
    :cond_413
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 349
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_419
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->U()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v3

    .line 351
    const-string v6, "name"

    if-eqz v3, :cond_498

    .line 352
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_425
    :goto_425
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_498

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/h4;

    if-eqz v7, :cond_425

    .line 353
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 354
    const-string v8, "user_property {\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->F()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_44b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->y()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_44c

    :cond_44b
    move-object v8, v9

    .line 356
    :goto_44c
    const-string v10, "set_timestamp_millis"

    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-static {v0, v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v8, "string_value"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->B()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->E()Z

    move-result v8

    if-eqz v8, :cond_478

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->w()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_479

    :cond_478
    move-object v8, v9

    :goto_479
    const-string v10, "int_value"

    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->C()Z

    move-result v8

    if-eqz v8, :cond_48c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h4;->n()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 362
    :cond_48c
    const-string v7, "double_value"

    invoke-static {v0, v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_425

    .line 365
    :cond_498
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->S()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v3

    if-eqz v3, :cond_4fd

    .line 366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a2
    :goto_4a2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/m3;

    if-eqz v7, :cond_4a2

    .line 367
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 368
    const-string v8, "audience_membership {\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->w()Z

    move-result v8

    if-eqz v8, :cond_4cb

    .line 370
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->n()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "audience_id"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 371
    :cond_4cb
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->x()Z

    move-result v8

    if-eqz v8, :cond_4de

    .line 372
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->v()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "new_audience"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 373
    :cond_4de
    const-string v8, "current_data"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->t()Lcom/google/android/gms/internal/measurement/d4;

    move-result-object v9

    invoke-static {v0, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/d4;)V

    .line 374
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->y()Z

    move-result v8

    if-eqz v8, :cond_4f6

    .line 375
    const-string v8, "previous_data"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m3;->u()Lcom/google/android/gms/internal/measurement/d4;

    move-result-object v7

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/d4;)V

    .line 376
    :cond_4f6
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a2

    .line 378
    :cond_4fd
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->T()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v1

    if-eqz v1, :cond_579

    .line 379
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_507
    :goto_507
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_579

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/q3;

    if-eqz v3, :cond_507

    .line 380
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 381
    const-string v7, "event {\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->F()Z

    move-result v7

    if-eqz v7, :cond_53f

    .line 384
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->z()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    :cond_53f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->E()Z

    move-result v7

    if-eqz v7, :cond_552

    .line 386
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->y()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_552
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->D()Z

    move-result v7

    if-eqz v7, :cond_565

    .line 388
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->n()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_565
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->w()I

    move-result v7

    if-eqz v7, :cond_572

    .line 390
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 391
    :cond_572
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_507

    .line 393
    :cond_579
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 394
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5c

    .line 395
    :cond_581
    const-string p1, "} // End-of-batch\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 439
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 440
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_29

    .line 441
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 442
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 443
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4b

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 447
    :cond_4b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 448
    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_72
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_8a

    .line 450
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_8a

    add-int/lit8 p2, p1, -0x1

    goto :goto_72

    :cond_8a
    const/4 p1, 0x0

    .line 451
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;Z)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 458
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 460
    instance-of v4, v3, [Landroid/os/Parcelable;

    if-nez v4, :cond_30

    instance-of v5, v3, Ljava/util/ArrayList;

    if-nez v5, :cond_30

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2a

    goto :goto_30

    :cond_2a
    if-eqz v3, :cond_d

    .line 461
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_30
    :goto_30
    if-eqz p2, :cond_d

    .line 462
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    if-eqz v4, :cond_52

    .line 463
    check-cast v3, [Landroid/os/Parcelable;

    array-length v4, v3

    move v7, v6

    :goto_3e
    if-ge v7, v4, :cond_80

    aget-object v8, v3, v7

    .line 464
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_4f

    .line 465
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 466
    :cond_52
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_73

    .line 467
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :cond_5d
    :goto_5d
    if-ge v7, v4, :cond_80

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 468
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_5d

    .line 469
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 470
    :cond_73
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_80

    .line 471
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_80
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_84
    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/g4;Ljava/lang/Object;)V
    .registers 5

    .line 645
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 646
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 647
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h4;->x(Lcom/google/android/gms/internal/measurement/h4;)V

    .line 648
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 649
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h4;->t(Lcom/google/android/gms/internal/measurement/h4;)V

    .line 650
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 651
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/h4;->r(Lcom/google/android/gms/internal/measurement/h4;)V

    .line 652
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 653
    check-cast p2, Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 655
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/h4;->v(Lcom/google/android/gms/internal/measurement/h4;Ljava/lang/String;)V

    return-void

    .line 656
    :cond_32
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_47

    .line 657
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 658
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 659
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/h4;->p(Lcom/google/android/gms/internal/measurement/h4;J)V

    return-void

    .line 660
    :cond_47
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5c

    .line 661
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 662
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 663
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/h4;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/h4;->o(Lcom/google/android/gms/internal/measurement/h4;D)V

    return-void

    .line 664
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/t3;Ljava/lang/Object;)V
    .registers 13

    .line 604
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 606
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/u3;->A(Lcom/google/android/gms/internal/measurement/u3;)V

    .line 607
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 608
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/u3;->v(Lcom/google/android/gms/internal/measurement/u3;)V

    .line 609
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 610
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/u3;->t(Lcom/google/android/gms/internal/measurement/u3;)V

    .line 611
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 612
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/u3;->y(Lcom/google/android/gms/internal/measurement/u3;)V

    .line 613
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 614
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/t3;->j(Ljava/lang/String;)V

    return-void

    .line 615
    :cond_35
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_43

    .line 616
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/t3;->h(J)V

    return-void

    .line 617
    :cond_43
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_58

    .line 618
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 619
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 620
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/u3;->o(Lcom/google/android/gms/internal/measurement/u3;D)V

    return-void

    .line 621
    :cond_58
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_ec

    .line 622
    check-cast p2, [Landroid/os/Bundle;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    array-length v1, p2

    const/4 v2, 0x0

    :goto_65
    if-ge v2, v1, :cond_e1

    aget-object v3, p2, v2

    if-eqz v3, :cond_de

    .line 625
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v4

    .line 626
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_77
    :goto_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 627
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u3;->B()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/t3;->i(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 629
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_9c

    .line 630
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/t3;->h(J)V

    goto :goto_ba

    .line 631
    :cond_9c
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_a6

    .line 632
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/t3;->j(Ljava/lang/String;)V

    goto :goto_ba

    .line 633
    :cond_a6
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_77

    .line 634
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 635
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 636
    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/u3;->o(Lcom/google/android/gms/internal/measurement/u3;D)V

    .line 637
    :goto_ba
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 638
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v6, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/u3;->q(Lcom/google/android/gms/internal/measurement/u3;Lcom/google/android/gms/internal/measurement/u3;)V

    goto :goto_77

    .line 639
    :cond_cb
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 640
    check-cast v3, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u3;->x()I

    move-result v3

    if-lez v3, :cond_de

    .line 641
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 642
    :cond_e1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 643
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/u3;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/u3;->s(Lcom/google/android/gms/internal/measurement/u3;Ljava/util/ArrayList;)V

    return-void

    .line 644
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_23

    cmp-long v0, p3, v0

    if-lez v0, :cond_23

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzb()Lb4/a;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    return-object v0
.end method

.method public final zzb([B)[B
    .registers 4

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    throw p1
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc([B)[B
    .registers 7

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 5
    new-array v2, v2, [B

    .line 6
    :goto_13
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_20

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :catch_1e
    move-exception p1

    goto :goto_2b

    .line 8
    :cond_20
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_1e

    return-object p1

    .line 11
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    throw p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzg()Lcom/google/android/gms/measurement/internal/zzt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzal;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

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

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzhl;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzmw;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zznu;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

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

.method public final zzu()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbh;->zza(Landroid/content/Context;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_8e

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_15

    .line 19
    .line 20
    goto/16 :goto_8e

    .line 21
    .line 22
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzar:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_86

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/lang/String;

    .line 64
    .line 65
    const-string v6, "measurement.id."

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2e

    .line 72
    .line 73
    :try_start_48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2e

    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-lt v4, v3, :cond_2e

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_76} :catch_77

    .line 117
    .line 118
    .line 119
    goto :goto_86

    .line 120
    :catch_77
    move-exception v4

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const-string v6, "Experiment ID NumberFormatException"

    .line 130
    .line 131
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2e

    .line 135
    :cond_86
    :goto_86
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8d

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_8d
    return-object v2

    .line 143
    :cond_8e
    :goto_8e
    return-object v1
.end method
