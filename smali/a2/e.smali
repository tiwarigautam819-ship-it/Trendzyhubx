###### Class a2.e (a2.e)
.class public final La2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    const-string v0, "section"

    .line 2
    .line 3
    invoke-static {p1, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, La2/e;->a:I

    .line 10
    .line 11
    iput p2, p0, La2/e;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_3

    .line 2
    .line 3
    goto :goto_19

    .line 4
    :cond_3
    instance-of v0, p1, La2/e;

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_17

    .line 9
    :cond_8
    check-cast p1, La2/e;

    .line 10
    .line 11
    iget v0, p0, La2/e;->a:I

    .line 12
    .line 13
    iget v1, p1, La2/e;->a:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_11

    .line 16
    .line 17
    goto :goto_17

    .line 18
    :cond_11
    iget v0, p0, La2/e;->b:I

    .line 19
    .line 20
    iget p1, p1, La2/e;->b:I

    .line 21
    .line 22
    if-eq v0, p1, :cond_19

    .line 23
    .line 24
    :goto_17
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_19
    :goto_19
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, La2/e;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/fragment/app/m1;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, La2/e;->b:I

    .line 10
    .line 11
    if-nez v1, :cond_e

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_12
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SectionFieldMapping(section="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, La2/e;->a:I

    .line 9
    .line 10
    invoke-static {v1}, La1/a;->p(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", field="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, La2/e;->b:I

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_5c

    .line 25
    .line 26
    .line 27
    const-string v1, "null"

    .line 28
    .line 29
    goto :goto_4f

    .line 30
    :pswitch_1d
    const-string v1, "URL_SCHEMES"

    .line 31
    .line 32
    goto :goto_4f

    .line 33
    :pswitch_20
    const-string v1, "RECEIPT_DATA"

    .line 34
    .line 35
    goto :goto_4f

    .line 36
    :pswitch_23
    const-string v1, "INSTALLER_PACKAGE"

    .line 37
    .line 38
    goto :goto_4f

    .line 39
    :pswitch_26
    const-string v1, "INSTALL_REFERRER"

    .line 40
    .line 41
    goto :goto_4f

    .line 42
    :pswitch_29
    const-string v1, "INCLUDE_VIDEO_DATA"

    .line 43
    .line 44
    goto :goto_4f

    .line 45
    :pswitch_2c
    const-string v1, "INCLUDE_DWELL_DATA"

    .line 46
    .line 47
    goto :goto_4f

    .line 48
    :pswitch_2f
    const-string v1, "EXT_INFO"

    .line 49
    .line 50
    goto :goto_4f

    .line 51
    :pswitch_32
    const-string v1, "DEVICE_TOKEN"

    .line 52
    .line 53
    goto :goto_4f

    .line 54
    :pswitch_35
    const-string v1, "CONSIDER_VIEWS"

    .line 55
    .line 56
    goto :goto_4f

    .line 57
    :pswitch_38
    const-string v1, "APP_TE"

    .line 58
    .line 59
    goto :goto_4f

    .line 60
    :pswitch_3b
    const-string v1, "ADV_TE"

    .line 61
    .line 62
    goto :goto_4f

    .line 63
    :pswitch_3e
    const-string v1, "USER_DATA"

    .line 64
    .line 65
    goto :goto_4f

    .line 66
    :pswitch_41
    const-string v1, "PAGE_SCOPED_USER_ID"

    .line 67
    .line 68
    goto :goto_4f

    .line 69
    :pswitch_44
    const-string v1, "PAGE_ID"

    .line 70
    .line 71
    goto :goto_4f

    .line 72
    :pswitch_47
    const-string v1, "MAD_ID"

    .line 73
    .line 74
    goto :goto_4f

    .line 75
    :pswitch_4a
    const-string v1, "FB_LOGIN_ID"

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :pswitch_4d
    const-string v1, "ANON_ID"

    .line 79
    .line 80
    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v1, 0x29

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method
