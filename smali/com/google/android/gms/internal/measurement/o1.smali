###### Class com.google.android.gms.internal.measurement.o1 (com.google.android.gms.internal.measurement.o1)
.class public final Lcom/google/android/gms/internal/measurement/o1;
.super Lcom/google/android/gms/internal/measurement/g1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/k1;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/o1;->e:I

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o1;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/k1;

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6

    .line 1
    iput p5, p0, Lcom/google/android/gms/internal/measurement/o1;->e:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o1;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/k1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_46

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/k1;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/app/Activity;

    .line 16
    .line 17
    new-instance v2, Le4/b;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Le4/b;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o1;->g:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/g1;->a:J

    .line 27
    .line 28
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/s0;->setCurrentScreen(Le4/a;Ljava/lang/String;Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/k1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o1;->g:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/k1;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o1;->g:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lcom/google/android/gms/internal/measurement/t0;

    .line 65
    .line 66
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/s0;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w0;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method public b()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->i:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/measurement/t0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->zza(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
