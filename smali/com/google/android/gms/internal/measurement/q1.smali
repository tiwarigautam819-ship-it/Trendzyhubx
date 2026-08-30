###### Class com.google.android.gms.internal.measurement.q1 (com.google.android.gms.internal.measurement.q1)
.class public final Lcom/google/android/gms/internal/measurement/q1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/k1;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/measurement/q1;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/q1;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q1;->f:Lcom/google/android/gms/internal/measurement/k1;

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
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q1;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->setSgtmDebugInfo(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q1;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lcom/google/android/gms/internal/measurement/i1;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/x0;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q1;->g:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v0, :cond_3e

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q1;->g:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 58
    .line 59
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->setMeasurementEnabled(ZJ)V

    .line 60
    .line 61
    .line 62
    goto :goto_4a

    .line 63
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q1;->f:Lcom/google/android/gms/internal/measurement/k1;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 71
    .line 72
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s0;->clearMeasurementEnabled(J)V

    .line 73
    .line 74
    .line 75
    :goto_4a
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_14
    .end packed-switch
.end method
