###### Class com.google.android.gms.internal.measurement.z1 (com.google.android.gms.internal.measurement.z1)
.class public final Lcom/google/android/gms/internal/measurement/z1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Lcom/google/android/gms/internal/measurement/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 8

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/z1;->e:Ljava/lang/Long;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/z1;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/z1;->g:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/z1;->h:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/z1;->i:Z

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/z1;->j:Z

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z1;->k:Lcom/google/android/gms/internal/measurement/k1;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->e:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 6
    .line 7
    :goto_6
    move-wide v8, v0

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_6

    .line 14
    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->k:Lcom/google/android/gms/internal/measurement/k1;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/z1;->f:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/z1;->g:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/z1;->h:Landroid/os/Bundle;

    .line 26
    .line 27
    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/z1;->i:Z

    .line 28
    .line 29
    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/z1;->j:Z

    .line 30
    .line 31
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/s0;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
