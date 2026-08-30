###### Class com.google.android.gms.internal.measurement.x3 (com.google.android.gms.internal.measurement.x3)
.class public final Lcom/google/android/gms/internal/measurement/x3;
.super Lcom/google/android/gms/internal/measurement/z5;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/x3;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/j6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/j6;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/x3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/x3;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/y6;->e:Lcom/google/android/gms/internal/measurement/y6;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzg:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzh:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static o(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/w3;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->j()Lcom/google/android/gms/internal/measurement/y5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->a:Lcom/google/android/gms/internal/measurement/z5;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/measurement/z5;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    goto :goto_1f

    .line 16
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z5;->m()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1a

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->f()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/y5;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_1f
    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    .line 33
    .line 34
    return-object v0
.end method

.method public static q(Lcom/google/android/gms/internal/measurement/x3;Lcom/google/android/gms/internal/measurement/z3;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 21
    .line 22
    :cond_15
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/measurement/x3;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzg:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static s(Lcom/google/android/gms/internal/measurement/x3;Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 21
    .line 22
    :cond_15
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 23
    .line 24
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/i5;->b(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static t(Lcom/google/android/gms/internal/measurement/x3;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/y6;->e:Lcom/google/android/gms/internal/measurement/y6;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 4
    .line 5
    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/x3;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x3;->zzh:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/w3;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->j()Lcom/google/android/gms/internal/measurement/y5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/w3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

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
    packed-switch p1, :pswitch_data_70

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/x3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 25
    .line 26
    if-nez p1, :cond_30

    .line 27
    .line 28
    const-class v1, Lcom/google/android/gms/internal/measurement/x3;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_1e
    sget-object p1, Lcom/google/android/gms/internal/measurement/x3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sput-object p1, Lcom/google/android/gms/internal/measurement/x3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    const/4 p1, 0x7

    .line 54
    new-array p1, p1, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v2, "zze"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v2, p1, v3

    .line 60
    .line 61
    const-string v2, "zzf"

    .line 62
    .line 63
    aput-object v2, p1, v1

    .line 64
    .line 65
    const-class v1, Lcom/google/android/gms/internal/measurement/z3;

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    aput-object v1, p1, v2

    .line 69
    .line 70
    const-string v1, "zzg"

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    aput-object v1, p1, v2

    .line 74
    .line 75
    const-string v1, "zzh"

    .line 76
    .line 77
    const/4 v2, 0x4

    .line 78
    aput-object v1, p1, v2

    .line 79
    .line 80
    const-string v1, "zzi"

    .line 81
    .line 82
    const/4 v2, 0x5

    .line 83
    aput-object v1, p1, v2

    .line 84
    .line 85
    sget-object v1, Lcom/google/android/gms/internal/measurement/o2;->g:Lcom/google/android/gms/internal/measurement/o2;

    .line 86
    .line 87
    aput-object v1, p1, v0

    .line 88
    .line 89
    const-string v0, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007\u1008\u0000\u0008\u1008\u0001\t\u180c\u0002"

    .line 90
    .line 91
    sget-object v1, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 92
    .line 93
    new-instance v2, Lcom/google/android/gms/internal/measurement/a7;

    .line 94
    .line 95
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/a7;-><init>(Lcom/google/android/gms/internal/measurement/i5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_62
    new-instance p1, Lcom/google/android/gms/internal/measurement/w3;

    .line 100
    .line 101
    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzc:Lcom/google/android/gms/internal/measurement/x3;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lcom/google/android/gms/internal/measurement/z5;)V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :pswitch_6a
    new-instance p1, Lcom/google/android/gms/internal/measurement/x3;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/x3;-><init>()V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_62
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

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

.method public final p()Lcom/google/android/gms/internal/measurement/z3;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    .line 9
    .line 10
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zzf:Lcom/google/android/gms/internal/measurement/j6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/x3;->zze:I

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
