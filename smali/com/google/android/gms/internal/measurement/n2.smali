###### Class com.google.android.gms.internal.measurement.n2 (com.google.android.gms.internal.measurement.n2)
.class public final Lcom/google/android/gms/internal/measurement/n2;
.super Lcom/google/android/gms/internal/measurement/z5;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/n2;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/measurement/j6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/j6;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/n2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/n2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/n2;->zzc:Lcom/google/android/gms/internal/measurement/n2;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/n2;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/z5;->g(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/z5;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/z5;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzg:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/y6;->e:Lcom/google/android/gms/internal/measurement/y6;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzi:Lcom/google/android/gms/internal/measurement/j6;

    .line 11
    .line 12
    return-void
.end method

.method public static p()Lcom/google/android/gms/internal/measurement/n2;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n2;->zzc:Lcom/google/android/gms/internal/measurement/n2;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr p1, v1

    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    packed-switch p1, :pswitch_data_6c

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_10
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :pswitch_12
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_17
    sget-object p1, Lcom/google/android/gms/internal/measurement/n2;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 25
    .line 26
    if-nez p1, :cond_30

    .line 27
    .line 28
    const-class v1, Lcom/google/android/gms/internal/measurement/n2;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_1e
    sget-object p1, Lcom/google/android/gms/internal/measurement/n2;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 32
    .line 33
    if-nez p1, :cond_2c

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/measurement/a6;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object p1, Lcom/google/android/gms/internal/measurement/n2;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    :goto_2c
    monitor-exit v1

    .line 46
    return-object p1

    .line 47
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_2a

    .line 48
    throw p1

    .line 49
    :cond_30
    return-object p1

    .line 50
    :pswitch_31
    sget-object p1, Lcom/google/android/gms/internal/measurement/n2;->zzc:Lcom/google/android/gms/internal/measurement/n2;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    new-array p1, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v0, "zze"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    aput-object v0, p1, v2

    .line 59
    .line 60
    const-string v0, "zzf"

    .line 61
    .line 62
    aput-object v0, p1, v1

    .line 63
    .line 64
    sget-object v0, Lcom/google/android/gms/internal/measurement/o2;->c:Lcom/google/android/gms/internal/measurement/o2;

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    aput-object v0, p1, v1

    .line 68
    .line 69
    const-string v0, "zzg"

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    aput-object v0, p1, v1

    .line 73
    .line 74
    const-string v0, "zzh"

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    aput-object v0, p1, v1

    .line 78
    .line 79
    const-string v0, "zzi"

    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    aput-object v0, p1, v1

    .line 83
    .line 84
    const-string v0, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    .line 85
    .line 86
    sget-object v1, Lcom/google/android/gms/internal/measurement/n2;->zzc:Lcom/google/android/gms/internal/measurement/n2;

    .line 87
    .line 88
    new-instance v2, Lcom/google/android/gms/internal/measurement/a7;

    .line 89
    .line 90
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/a7;-><init>(Lcom/google/android/gms/internal/measurement/i5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/i2;

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/gms/internal/measurement/n2;->zzc:Lcom/google/android/gms/internal/measurement/n2;

    .line 97
    .line 98
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lcom/google/android/gms/internal/measurement/z5;)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :pswitch_65
    new-instance p1, Lcom/google/android/gms/internal/measurement/n2;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/n2;-><init>()V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    nop

    .line 109
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5d
        :pswitch_34
        :pswitch_31
        :pswitch_17
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method public final n()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzi:Lcom/google/android/gms/internal/measurement/j6;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/m2;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzf:I

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/m2;->b:Lcom/google/android/gms/internal/measurement/m2;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_20

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_1c

    .line 10
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->h:Lcom/google/android/gms/internal/measurement/m2;

    .line 11
    .line 12
    goto :goto_1c

    .line 13
    :pswitch_c
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->g:Lcom/google/android/gms/internal/measurement/m2;

    .line 14
    .line 15
    goto :goto_1c

    .line 16
    :pswitch_f
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->f:Lcom/google/android/gms/internal/measurement/m2;

    .line 17
    .line 18
    goto :goto_1c

    .line 19
    :pswitch_12
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->e:Lcom/google/android/gms/internal/measurement/m2;

    .line 20
    .line 21
    goto :goto_1c

    .line 22
    :pswitch_15
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->d:Lcom/google/android/gms/internal/measurement/m2;

    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :pswitch_18
    sget-object v0, Lcom/google/android/gms/internal/measurement/m2;->c:Lcom/google/android/gms/internal/measurement/m2;

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :pswitch_1b
    move-object v0, v1

    .line 29
    :goto_1c
    if-nez v0, :cond_1f

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1f
    return-object v0

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzi:Lcom/google/android/gms/internal/measurement/j6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zzh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final v()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/n2;->zze:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return v1

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method
