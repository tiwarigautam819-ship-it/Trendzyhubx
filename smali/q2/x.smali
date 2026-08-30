###### Class q2.x (q2.x)
.class public abstract synthetic Lq2/x;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static synthetic a(I)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    packed-switch p0, :pswitch_data_c

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    throw p0

    .line 8
    :pswitch_7
    return v0

    .line 9
    :pswitch_8
    return v1

    .line 10
    :pswitch_9
    return v0

    .line 11
    :pswitch_a
    return v1

    .line 12
    nop

    .line 13
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p0, v0, :cond_17

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p0, v0, :cond_14

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p0, v0, :cond_11

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-ne p0, v0, :cond_10

    .line 13
    .line 14
    const-string p0, "everyone"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    throw v1

    .line 18
    :cond_11
    const-string p0, "friends"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string p0, "only_me"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    return-object v1
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_b

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_9

    .line 6
    .line 7
    const-string p0, "instagram"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    throw p0

    .line 12
    :cond_b
    const-string p0, "facebook"

    .line 13
    .line 14
    return-object p0
.end method

.method public static d(ILjava/lang/String;I)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p1, p0

    .line 6
    mul-int/2addr p1, p2

    .line 7
    return p1
.end method

.method public static e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_12

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/getcapacitor/a;->v(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    instance-of v0, p0, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    if-eqz v0, :cond_1c

    .line 22
    .line 23
    check-cast p0, Landroid/content/res/TypedArray;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    .line 30
    .line 31
    if-eqz v0, :cond_26

    .line 32
    .line 33
    check-cast p0, Landroid/media/MediaMetadataRetriever;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    instance-of v0, p0, Landroid/media/MediaDrm;

    .line 40
    .line 41
    if-eqz v0, :cond_30

    .line 42
    .line 43
    check-cast p0, Landroid/media/MediaDrm;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    instance-of v0, p0, Landroid/drm/DrmManagerClient;

    .line 50
    .line 51
    if-eqz v0, :cond_3a

    .line 52
    .line 53
    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    instance-of v0, p0, Landroid/content/ContentProviderClient;

    .line 60
    .line 61
    if-eqz v0, :cond_44

    .line 62
    .line 63
    check-cast p0, Landroid/content/ContentProviderClient;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic l(I)Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_b

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_9

    .line 6
    .line 7
    const-string p0, "PLAIN"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    throw p0

    .line 12
    :cond_b
    const-string p0, "S256"

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic m(I)Ljava/lang/String;
    .registers 1

    .line 1
    packed-switch p0, :pswitch_data_18

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_5
    const-string p0, "DEVICE_AUTH"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_8
    const-string p0, "DIALOG_ONLY"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_b
    const-string p0, "WEB_ONLY"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_e
    const-string p0, "KATANA_ONLY"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_11
    const-string p0, "NATIVE_ONLY"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_14
    const-string p0, "NATIVE_WITH_FALLBACK"

    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic n(I)Ljava/lang/String;
    .registers 1

    .line 1
    packed-switch p0, :pswitch_data_3a

    .line 2
    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_6
    const-string p0, "UPC_EAN_EXTENSION"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_9
    const-string p0, "UPC_E"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_c
    const-string p0, "UPC_A"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_f
    const-string p0, "RSS_EXPANDED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_12
    const-string p0, "RSS_14"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_15
    const-string p0, "QR_CODE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_18
    const-string p0, "PDF_417"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1b
    const-string p0, "MAXICODE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1e
    const-string p0, "ITF"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_21
    const-string p0, "EAN_13"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_24
    const-string p0, "EAN_8"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_27
    const-string p0, "DATA_MATRIX"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_2a
    const-string p0, "CODE_128"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2d
    const-string p0, "CODE_93"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_30
    const-string p0, "CODE_39"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_33
    const-string p0, "CODABAR"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_36
    const-string p0, "AZTEC"

    .line 56
    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
