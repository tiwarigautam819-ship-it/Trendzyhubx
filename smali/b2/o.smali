###### Class b2.o (b2.o)
.class public final Lb2/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public a:Lb2/d;


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    const-string p2, "sensor"

    .line 9
    .line 10
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_3c

    .line 8
    :cond_7
    :try_start_7
    const-string v0, "event"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb2/o;->a:Lb2/d;

    .line 14
    .line 15
    if-eqz v0, :cond_3c

    .line 16
    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget v1, p1, v1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget v2, p1, v2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aget p1, p1, v3

    .line 27
    .line 28
    const v3, 0x411ce80a

    .line 29
    .line 30
    .line 31
    div-float/2addr v1, v3

    .line 32
    float-to-double v4, v1

    .line 33
    div-float/2addr v2, v3

    .line 34
    float-to-double v1, v2

    .line 35
    div-float/2addr p1, v3

    .line 36
    float-to-double v6, p1

    .line 37
    mul-double/2addr v4, v4

    .line 38
    mul-double/2addr v1, v1

    .line 39
    add-double/2addr v1, v4

    .line 40
    mul-double/2addr v6, v6

    .line 41
    add-double/2addr v6, v1

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    const-wide v3, 0x4002666666666666L    # 2.3

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpl-double p1, v1, v3

    .line 52
    .line 53
    if-lez p1, :cond_3c

    .line 54
    .line 55
    invoke-virtual {v0}, Lb2/d;->d()V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3a

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :goto_3d
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
