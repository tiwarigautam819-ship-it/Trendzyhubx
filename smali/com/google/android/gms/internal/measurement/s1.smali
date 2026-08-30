###### Class com.google.android.gms.internal.measurement.s1 (com.google.android.gms.internal.measurement.s1)
.class public final Lcom/google/android/gms/internal/measurement/s1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/k1;J)V
    .registers 4

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/s1;->e:J

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/s1;->e:J

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s0;->setSessionTimeoutDuration(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
