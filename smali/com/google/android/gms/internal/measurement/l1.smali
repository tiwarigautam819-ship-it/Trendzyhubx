###### Class com.google.android.gms.internal.measurement.l1 (com.google.android.gms.internal.measurement.l1)
.class public final Lcom/google/android/gms/internal/measurement/l1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Landroid/os/Bundle;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/measurement/l1;->e:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/k1;

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_40

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/s0;->setDefaultEventParameters(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Landroid/os/Bundle;

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 29
    .line 30
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->setConsentThirdParty(Landroid/os/Bundle;J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Landroid/os/Bundle;

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 44
    .line 45
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->setConsent(Landroid/os/Bundle;J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/k1;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Landroid/os/Bundle;

    .line 57
    .line 58
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 59
    .line 60
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_30
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method
