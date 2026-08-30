###### Class com.google.android.gms.measurement.internal.zznl (com.google.android.gms.measurement.internal.zznl)
.class final Lcom/google/android/gms/measurement/internal/zznl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final zza:Lb4/a;

.field private zzb:J


# direct methods
.method public constructor <init>(Lb4/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznl;->zza:Lb4/a;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:J

    return-void
.end method

.method public final zza(J)Z
    .registers 7

    .line 2
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    if-nez p1, :cond_a

    return p2

    .line 3
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznl;->zza:Lb4/a;

    check-cast p1, Lb4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_20

    return p2

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->zza:Lb4/a;

    .line 2
    .line 3
    check-cast v0, Lb4/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:J

    .line 13
    .line 14
    return-void
.end method
