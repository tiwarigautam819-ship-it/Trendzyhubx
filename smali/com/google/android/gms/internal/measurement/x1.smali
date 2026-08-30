###### Class com.google.android.gms.internal.measurement.x1 (com.google.android.gms.internal.measurement.x1)
.class public final Lcom/google/android/gms/internal/measurement/x1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/measurement/t0;

.field public final synthetic f:I

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/t0;I)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/x1;->e:Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/measurement/x1;->f:I

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/x1;->e:Lcom/google/android/gms/internal/measurement/t0;

    .line 9
    .line 10
    iget v2, p0, Lcom/google/android/gms/internal/measurement/x1;->f:I

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s0;->getTestFlag(Lcom/google/android/gms/internal/measurement/w0;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/x1;->e:Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
