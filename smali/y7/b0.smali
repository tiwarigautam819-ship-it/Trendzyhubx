###### Class y7.b0 (y7.b0)
.class public final Ly7/b0;
.super Ljava/io/IOException;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    packed-switch p1, :pswitch_data_40

    .line 7
    .line 8
    .line 9
    const-string v0, "null"

    .line 10
    .line 11
    goto :goto_34

    .line 12
    :pswitch_b
    const-string v0, "HTTP_1_1_REQUIRED"

    .line 13
    .line 14
    goto :goto_34

    .line 15
    :pswitch_e
    const-string v0, "INADEQUATE_SECURITY"

    .line 16
    .line 17
    goto :goto_34

    .line 18
    :pswitch_11
    const-string v0, "ENHANCE_YOUR_CALM"

    .line 19
    .line 20
    goto :goto_34

    .line 21
    :pswitch_14
    const-string v0, "CONNECT_ERROR"

    .line 22
    .line 23
    goto :goto_34

    .line 24
    :pswitch_17
    const-string v0, "COMPRESSION_ERROR"

    .line 25
    .line 26
    goto :goto_34

    .line 27
    :pswitch_1a
    const-string v0, "CANCEL"

    .line 28
    .line 29
    goto :goto_34

    .line 30
    :pswitch_1d
    const-string v0, "REFUSED_STREAM"

    .line 31
    .line 32
    goto :goto_34

    .line 33
    :pswitch_20
    const-string v0, "FRAME_SIZE_ERROR"

    .line 34
    .line 35
    goto :goto_34

    .line 36
    :pswitch_23
    const-string v0, "STREAM_CLOSED"

    .line 37
    .line 38
    goto :goto_34

    .line 39
    :pswitch_26
    const-string v0, "SETTINGS_TIMEOUT"

    .line 40
    .line 41
    goto :goto_34

    .line 42
    :pswitch_29
    const-string v0, "FLOW_CONTROL_ERROR"

    .line 43
    .line 44
    goto :goto_34

    .line 45
    :pswitch_2c
    const-string v0, "INTERNAL_ERROR"

    .line 46
    .line 47
    goto :goto_34

    .line 48
    :pswitch_2f
    const-string v0, "PROTOCOL_ERROR"

    .line 49
    .line 50
    goto :goto_34

    .line 51
    :pswitch_32
    const-string v0, "NO_ERROR"

    .line 52
    .line 53
    :goto_34
    const-string v1, "stream was reset: "

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput p1, p0, Ly7/b0;->a:I

    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method
