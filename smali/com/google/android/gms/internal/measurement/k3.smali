###### Class com.google.android.gms.internal.measurement.k3 (com.google.android.gms.internal.measurement.k3)
.class public final Lcom/google/android/gms/internal/measurement/k3;
.super Lcom/google/android/gms/internal/measurement/z5;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/k3;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/k3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/z5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/k3;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/z5;->g(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/z5;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/measurement/j3;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->j()Lcom/google/android/gms/internal/measurement/y5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/j3;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzk:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzj:Z

    .line 8
    .line 9
    return-void
.end method

.method public static q()Lcom/google/android/gms/internal/measurement/k3;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzf:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzl:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzg:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzh:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/measurement/k3;Z)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zze:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/k3;->zzi:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final B()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final C()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzi:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .registers 6

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
    const/4 v0, 0x6

    .line 8
    packed-switch p1, :pswitch_data_76

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/k3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 25
    .line 26
    if-nez p1, :cond_30

    .line 27
    .line 28
    const-class v1, Lcom/google/android/gms/internal/measurement/k3;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_1e
    sget-object p1, Lcom/google/android/gms/internal/measurement/k3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sput-object p1, Lcom/google/android/gms/internal/measurement/k3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    const/16 p1, 0x8

    .line 54
    .line 55
    new-array p1, p1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v2, "zze"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v2, p1, v3

    .line 61
    .line 62
    const-string v2, "zzf"

    .line 63
    .line 64
    aput-object v2, p1, v1

    .line 65
    .line 66
    const-string v1, "zzg"

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    aput-object v1, p1, v2

    .line 70
    .line 71
    const-string v1, "zzh"

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    aput-object v1, p1, v2

    .line 75
    .line 76
    const-string v1, "zzi"

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    aput-object v1, p1, v2

    .line 80
    .line 81
    const-string v1, "zzj"

    .line 82
    .line 83
    const/4 v2, 0x5

    .line 84
    aput-object v1, p1, v2

    .line 85
    .line 86
    const-string v1, "zzk"

    .line 87
    .line 88
    aput-object v1, p1, v0

    .line 89
    .line 90
    const-string v0, "zzl"

    .line 91
    .line 92
    const/4 v1, 0x7

    .line 93
    aput-object v0, p1, v1

    .line 94
    .line 95
    const-string v0, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    .line 96
    .line 97
    sget-object v1, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 98
    .line 99
    new-instance v2, Lcom/google/android/gms/internal/measurement/a7;

    .line 100
    .line 101
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/a7;-><init>(Lcom/google/android/gms/internal/measurement/i5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :pswitch_68
    new-instance p1, Lcom/google/android/gms/internal/measurement/j3;

    .line 106
    .line 107
    sget-object v0, Lcom/google/android/gms/internal/measurement/k3;->zzc:Lcom/google/android/gms/internal/measurement/k3;

    .line 108
    .line 109
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lcom/google/android/gms/internal/measurement/z5;)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_70
    new-instance p1, Lcom/google/android/gms/internal/measurement/k3;

    .line 114
    .line 115
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/z5;-><init>()V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_68
        :pswitch_34
        :pswitch_31
        :pswitch_17
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method public final t()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzk:Z

    .line 2
    .line 3
    return v0
.end method

.method public final v()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzj:Z

    .line 2
    .line 3
    return v0
.end method

.method public final x()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzf:Z

    .line 2
    .line 3
    return v0
.end method

.method public final z()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k3;->zzl:Z

    .line 2
    .line 3
    return v0
.end method
