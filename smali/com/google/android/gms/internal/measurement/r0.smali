###### Class com.google.android.gms.internal.measurement.r0 (com.google.android.gms.internal.measurement.r0)
.class public Lcom/google/android/gms/internal/measurement/r0;
.super Landroid/os/Handler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .registers 3

    .line 1
    packed-switch p2, :pswitch_data_18

    .line 2
    .line 3
    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_a
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method
