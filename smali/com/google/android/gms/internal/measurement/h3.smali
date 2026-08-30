###### Class com.google.android.gms.internal.measurement.h3 (com.google.android.gms.internal.measurement.h3)
.class public final Lcom/google/android/gms/internal/measurement/h3;
.super Lcom/google/android/gms/internal/measurement/z5;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/h3;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/w6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w6;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/h3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/h3;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzh:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzj:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzk:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzl:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/measurement/h3;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic B(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzk:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzk:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzk:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic E(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzj:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic F(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzj:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzh:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzh:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/measurement/h3;J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzi:J

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzh:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/measurement/h3;J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzm:J

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static x()Lcom/google/android/gms/internal/measurement/g3;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->j()Lcom/google/android/gms/internal/measurement/y5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/g3;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/measurement/h3;)V
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->zzl:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzl:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/measurement/h3;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h3;->zzl:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

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

.method public final M()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

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

.method public final N()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

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

.method public final O()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

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

.method public final P()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

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

.method public final Q()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

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

.method public final R()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

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

.method public final S()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zze:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

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
    packed-switch p1, :pswitch_data_7c

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/h3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

    .line 25
    .line 26
    if-nez p1, :cond_30

    .line 27
    .line 28
    const-class v1, Lcom/google/android/gms/internal/measurement/h3;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_1e
    sget-object p1, Lcom/google/android/gms/internal/measurement/h3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sput-object p1, Lcom/google/android/gms/internal/measurement/h3;->zzd:Lcom/google/android/gms/internal/measurement/w6;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    const/16 p1, 0x9

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
    const-string v0, "zzm"

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    aput-object v0, p1, v1

    .line 100
    .line 101
    const-string v0, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007"

    .line 102
    .line 103
    sget-object v1, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 104
    .line 105
    new-instance v2, Lcom/google/android/gms/internal/measurement/a7;

    .line 106
    .line 107
    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/a7;-><init>(Lcom/google/android/gms/internal/measurement/i5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object v2

    .line 111
    :pswitch_6e
    new-instance p1, Lcom/google/android/gms/internal/measurement/g3;

    .line 112
    .line 113
    sget-object v0, Lcom/google/android/gms/internal/measurement/h3;->zzc:Lcom/google/android/gms/internal/measurement/h3;

    .line 114
    .line 115
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y5;-><init>(Lcom/google/android/gms/internal/measurement/z5;)V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :pswitch_76
    new-instance p1, Lcom/google/android/gms/internal/measurement/h3;

    .line 120
    .line 121
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/h3;-><init>()V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_6e
        :pswitch_34
        :pswitch_31
        :pswitch_17
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method public final n()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzi:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final r()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h3;->zzm:J

    .line 2
    .line 3
    return-wide v0
.end method
