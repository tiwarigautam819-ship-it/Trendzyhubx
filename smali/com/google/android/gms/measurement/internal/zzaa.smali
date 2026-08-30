###### Class com.google.android.gms.measurement.internal.zzaa (com.google.android.gms.measurement.internal.zzaa)
.class abstract Lcom/google/android/gms/measurement/internal/zzaa;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field zza:Ljava/lang/String;

.field zzb:I

.field zzc:Ljava/lang/Boolean;

.field zzd:Ljava/lang/Boolean;

.field zze:Ljava/lang/Long;

.field zzf:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:I

    .line 7
    .line 8
    return-void
.end method

.method public static zza(DLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;
    .registers 4

    .line 57
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/j2;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(JLcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;
    .registers 4

    .line 58
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/j2;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/j2;)Ljava/lang/Boolean;
    .registers 6

    .line 59
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 60
    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/j2;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    return-object v1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m2;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/m2;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzgo;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 43
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/m2;->h:Lcom/google/android/gms/internal/measurement/m2;

    if-ne p1, v1, :cond_11

    if-eqz p4, :cond_10

    .line 44
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_10
    return-object v0

    :cond_11
    if-nez p3, :cond_14

    return-object v0

    :cond_14
    if-nez p2, :cond_21

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/measurement/m2;->c:Lcom/google/android/gms/internal/measurement/m2;

    if-ne p1, v1, :cond_1b

    goto :goto_21

    .line 46
    :cond_1b
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 47
    :cond_21
    :goto_21
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_84

    return-object v0

    :pswitch_2d
    if-nez p4, :cond_30

    return-object v0

    .line 48
    :cond_30
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_39
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 50
    :pswitch_42
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 51
    :pswitch_4b
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 52
    :pswitch_54
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5d
    if-nez p5, :cond_60

    return-object v0

    :cond_60
    if-eqz p2, :cond_64

    const/4 p1, 0x0

    goto :goto_66

    :cond_64
    const/16 p1, 0x42

    .line 53
    :goto_66
    :try_start_66
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_76
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_66 .. :try_end_76} :catch_77

    return-object p0

    :catch_77
    if-eqz p6, :cond_82

    .line 55
    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    .line 56
    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_82
    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n2;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;
    .registers 13

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p0, :cond_8

    goto/16 :goto_97

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->v()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->o()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/m2;->b:Lcom/google/android/gms/internal/measurement/m2;

    if-ne v1, v2, :cond_18

    goto/16 :goto_97

    .line 28
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->o()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/m2;->h:Lcom/google/android/gms/internal/measurement/m2;

    if-ne v1, v2, :cond_28

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->n()I

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_97

    .line 30
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->u()Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_97

    .line 31
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->o()Lcom/google/android/gms/internal/measurement/m2;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->s()Z

    move-result v5

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/measurement/m2;->c:Lcom/google/android/gms/internal/measurement/m2;

    if-nez v5, :cond_4d

    if-eq v4, v1, :cond_4d

    if-ne v4, v2, :cond_41

    goto :goto_4d

    .line 34
    :cond_41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->q()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_4b
    move-object v6, v2

    goto :goto_52

    .line 35
    :cond_4d
    :goto_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 36
    :goto_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->n()I

    move-result v2

    if-nez v2, :cond_5a

    move-object v7, v0

    goto :goto_8a

    .line 37
    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n2;->r()Ljava/util/List;

    move-result-object p1

    if-eqz v5, :cond_62

    :goto_60
    move-object v7, p1

    goto :goto_8a

    .line 38
    :cond_62
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 41
    :cond_85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_60

    :goto_8a
    if-ne v4, v1, :cond_90

    move-object v8, v6

    :goto_8d
    move-object v3, p0

    move-object v9, p2

    goto :goto_92

    :cond_90
    move-object v8, v0

    goto :goto_8d

    .line 42
    :goto_92
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m2;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_97
    :goto_97
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/j2;D)Ljava/lang/Boolean;
    .registers 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11b

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto/16 :goto_11b

    .line 4
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_28

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->x()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->w()Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_11b

    .line 6
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->u()Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_11b

    .line 7
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    move-result v4

    if-ne v4, v3, :cond_65

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_50

    goto/16 :goto_11b

    .line 11
    :cond_50
    :try_start_50
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->r()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_62} :catch_11b

    move-object p1, v4

    move-object v4, v1

    goto :goto_7c

    .line 13
    :cond_65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_71

    goto/16 :goto_11b

    .line 14
    :cond_71
    :try_start_71
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/j2;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_7a} :catch_11b

    move-object p1, v1

    move-object v5, p1

    :goto_7c
    if-ne v0, v3, :cond_82

    if-nez p1, :cond_84

    goto/16 :goto_11b

    :cond_82
    if-eqz v4, :cond_11b

    .line 15
    :cond_84
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    invoke-static {v0}, Landroidx/fragment/app/m1;->e(I)I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10c

    const/4 v6, 0x2

    if-eq v0, v6, :cond_fd

    const/4 v7, 0x3

    if-eq v0, v7, :cond_b1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_9a

    goto/16 :goto_11b

    :cond_9a
    if-nez p1, :cond_9e

    goto/16 :goto_11b

    .line 16
    :cond_9e
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_ab

    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_ab

    goto :goto_ac

    :cond_ab
    move v2, v3

    :goto_ac
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b1
    if-eqz v4, :cond_11b

    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_f0

    .line 17
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 18
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_ea

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 20
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_ea

    goto :goto_eb

    :cond_ea
    move v2, v3

    .line 22
    :goto_eb
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 23
    :cond_f0
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f7

    goto :goto_f8

    :cond_f7
    move v2, v3

    :goto_f8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_fd
    if-eqz v4, :cond_11b

    .line 24
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_106

    goto :goto_107

    :cond_106
    move v2, v3

    :goto_107
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10c
    if-eqz v4, :cond_11b

    .line 25
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_115

    goto :goto_116

    :cond_115
    move v2, v3

    :goto_116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_11b
    :cond_11b
    :goto_11b
    return-object v1
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Z
.end method

.method public abstract zzc()Z
.end method
