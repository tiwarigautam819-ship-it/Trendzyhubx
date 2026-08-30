###### Class com.google.android.gms.internal.measurement.u1 (com.google.android.gms.internal.measurement.u1)
.class public final Lcom/google/android/gms/internal/measurement/u1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/t0;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/t0;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/measurement/u1;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

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
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/u1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_60

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getSessionId(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->generateEventId(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getGmpAppId(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_53
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/w0;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_53
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
        :pswitch_12
    .end packed-switch
.end method

.method public final b()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/u1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->f:Lcom/google/android/gms/internal/measurement/t0;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
