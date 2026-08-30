###### Class com.google.android.gms.internal.measurement.b4 (com.google.android.gms.internal.measurement.b4)
.class public final Lcom/google/android/gms/internal/measurement/b4;
.super Lcom/google/android/gms/internal/measurement/z5;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/b4;

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

.field private zzg:Lcom/google/android/gms/internal/measurement/j6;
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
    new-instance v0, Lcom/google/android/gms/internal/measurement/b4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/b4;->zzc:Lcom/google/android/gms/internal/measurement/b4;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/b4;

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
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/b4;->zzf:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/y6;->e:Lcom/google/android/gms/internal/measurement/y6;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b4;->zzg:Lcom/google/android/gms/internal/measurement/j6;

    .line 10
    .line 11
    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/measurement/b4;Lcom/google/android/gms/internal/measurement/s3;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b4;->zzg:Lcom/google/android/gms/internal/measurement/j6;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/j5;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_15

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    shl-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/j6;->zza(I)Lcom/google/android/gms/internal/measurement/j6;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b4;->zzg:Lcom/google/android/gms/internal/measurement/j6;

    .line 21
    .line 22
    :cond_15
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b4;->zzg:Lcom/google/android/gms/internal/measurement/j6;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/measurement/a4;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b4;->zzc:Lcom/google/android/gms/internal/measurement/b4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->j()Lcom/google/android/gms/internal/measurement/y5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f3;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr p1, v1

    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_68

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :pswitch_f
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_11
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/b4;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 24
    .line 25
    if-nez p1, :cond_30

    .line 26
    .line 27
    const-class v0, Lcom/google/android/gms/internal/measurement/b4;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/b4;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 31
    .line 32
    if-nez p1, :cond_2c

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/measurement/a6;

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object p1, Lcom/google/android/gms/internal/measurement/b4;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    monitor-exit v0

    .line 46
    return-object p1

    .line 47
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2a

    .line 48
    throw p1

    .line 49
    :cond_30
    return-object p1

    .line 50
    :pswitch_31
    sget-object p1, Lcom/google/android/gms/internal/measurement/b4;->zzc:Lcom/google/android/gms/internal/measurement/b4;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    const/4 p1, 0x5

    .line 54
    new-array p1, p1, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v0, "zze"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    aput-object v0, p1, v2

    .line 60
    .line 61
    const-string v0, "zzf"

    .line 62
    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/gms/internal/measurement/o2;->h:Lcom/google/android/gms/internal/measurement/o2;

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    aput-object v0, p1, v1

    .line 69
    .line 70
    const-string v0, "zzg"

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    aput-object v0, p1, v1

    .line 74
    .line 75
    const-class v0, Lcom/google/android/gms/internal/measurement/s3;

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    aput-object v0, p1, v1

    .line 79
    .line 80
    const-string v0, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    .line 81
    .line 82
    sget-object v1, Lcom/google/android/gms/internal/measurement/b4;->zzc:Lcom/google/android/gms/internal/measurement/b4;

    .line 83
    .line 84
    new-instance v2, Lcom/google/android/gms/internal/measurement/a7;

    .line 85
    .line 86
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/a7;-><init>(Lcom/google/android/gms/internal/measurement/i5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :pswitch_59
    new-instance p1, Lcom/google/android/gms/internal/measurement/a4;

    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/measurement/b4;->zzc:Lcom/google/android/gms/internal/measurement/b4;

    .line 93
    .line 94
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lcom/google/android/gms/internal/measurement/z5;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_61
    new-instance p1, Lcom/google/android/gms/internal/measurement/b4;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b4;-><init>()V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    nop

    .line 105
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61
        :pswitch_59
        :pswitch_34
        :pswitch_31
        :pswitch_16
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method
