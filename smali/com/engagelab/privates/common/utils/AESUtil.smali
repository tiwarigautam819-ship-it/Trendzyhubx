###### Class com.engagelab.privates.common.utils.AESUtil (com.engagelab.privates.common.utils.AESUtil)
.class public Lcom/engagelab/privates/common/utils/AESUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static generateKeyBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    div-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length p1, v1

    .line 37
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    array-length p1, v1

    .line 41
    array-length v1, p0

    .line 42
    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static generateSeed()I
    .registers 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const v1, 0xffffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public static get16Md5AesKey(J)Ljava/lang/String;
    .registers 6

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    rem-long v0, p0, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    packed-switch v0, :pswitch_data_62

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x8

    .line 10
    .line 11
    mul-long/2addr v0, p0

    .line 12
    const-wide/16 v2, 0x4a

    .line 13
    .line 14
    rem-long/2addr p0, v2

    .line 15
    :goto_e
    add-long/2addr p0, v0

    .line 16
    goto :goto_4f

    .line 17
    :pswitch_10
    const-wide/16 v0, 0x25

    .line 18
    .line 19
    mul-long/2addr v0, p0

    .line 20
    const-wide/16 v2, 0x5b

    .line 21
    .line 22
    rem-long/2addr p0, v2

    .line 23
    goto :goto_e

    .line 24
    :pswitch_17
    const-wide/16 v0, 0x1d

    .line 25
    .line 26
    mul-long/2addr v0, p0

    .line 27
    const-wide/16 v2, 0x29

    .line 28
    .line 29
    rem-long/2addr p0, v2

    .line 30
    goto :goto_e

    .line 31
    :pswitch_1e
    const-wide/16 v0, 0x1f

    .line 32
    .line 33
    mul-long/2addr v0, p0

    .line 34
    const-wide/16 v2, 0x27

    .line 35
    .line 36
    rem-long/2addr p0, v2

    .line 37
    goto :goto_e

    .line 38
    :pswitch_25
    const-wide/16 v0, 0x7

    .line 39
    .line 40
    mul-long/2addr v0, p0

    .line 41
    const-wide/16 v2, 0x44

    .line 42
    .line 43
    rem-long/2addr p0, v2

    .line 44
    goto :goto_e

    .line 45
    :pswitch_2c
    const-wide/16 v0, 0x11

    .line 46
    .line 47
    mul-long/2addr v0, p0

    .line 48
    const-wide/16 v2, 0x31

    .line 49
    .line 50
    rem-long/2addr p0, v2

    .line 51
    goto :goto_e

    .line 52
    :pswitch_33
    const-wide/16 v0, 0xd

    .line 53
    .line 54
    mul-long/2addr v0, p0

    .line 55
    const-wide/16 v2, 0x60

    .line 56
    .line 57
    rem-long/2addr p0, v2

    .line 58
    goto :goto_e

    .line 59
    :pswitch_3a
    const-wide/16 v0, 0x3

    .line 60
    .line 61
    mul-long/2addr v0, p0

    .line 62
    const-wide/16 v2, 0x49

    .line 63
    .line 64
    rem-long/2addr p0, v2

    .line 65
    goto :goto_e

    .line 66
    :pswitch_41
    const-wide/16 v0, 0x17

    .line 67
    .line 68
    mul-long/2addr v0, p0

    .line 69
    const-wide/16 v2, 0xf

    .line 70
    .line 71
    rem-long/2addr p0, v2

    .line 72
    goto :goto_e

    .line 73
    :pswitch_48
    const-wide/16 v0, 0x5

    .line 74
    .line 75
    mul-long/2addr v0, p0

    .line 76
    const-wide/16 v2, 0x58

    .line 77
    .line 78
    rem-long/2addr p0, v2

    .line 79
    goto :goto_e

    .line 80
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "JCKP"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->get16MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_48
        :pswitch_41
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

.method public static getIv(Ljava/lang/String;C)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_c
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_18

    .line 15
    .line 16
    aget-byte v2, p0, v1

    .line 17
    .line 18
    xor-int/2addr v2, p1

    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, p0, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_c

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    array-length v1, p0

    .line 28
    invoke-direct {p1, p0, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public static getMd5AesKey(J)Ljava/lang/String;
    .registers 6

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    rem-long v0, p0, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    packed-switch v0, :pswitch_data_62

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x8

    .line 10
    .line 11
    mul-long/2addr v0, p0

    .line 12
    const-wide/16 v2, 0x4a

    .line 13
    .line 14
    rem-long/2addr p0, v2

    .line 15
    :goto_e
    add-long/2addr p0, v0

    .line 16
    goto :goto_4f

    .line 17
    :pswitch_10
    const-wide/16 v0, 0x25

    .line 18
    .line 19
    mul-long/2addr v0, p0

    .line 20
    const-wide/16 v2, 0x5b

    .line 21
    .line 22
    rem-long/2addr p0, v2

    .line 23
    goto :goto_e

    .line 24
    :pswitch_17
    const-wide/16 v0, 0x1d

    .line 25
    .line 26
    mul-long/2addr v0, p0

    .line 27
    const-wide/16 v2, 0x29

    .line 28
    .line 29
    rem-long/2addr p0, v2

    .line 30
    goto :goto_e

    .line 31
    :pswitch_1e
    const-wide/16 v0, 0x1f

    .line 32
    .line 33
    mul-long/2addr v0, p0

    .line 34
    const-wide/16 v2, 0x27

    .line 35
    .line 36
    rem-long/2addr p0, v2

    .line 37
    goto :goto_e

    .line 38
    :pswitch_25
    const-wide/16 v0, 0x7

    .line 39
    .line 40
    mul-long/2addr v0, p0

    .line 41
    const-wide/16 v2, 0x44

    .line 42
    .line 43
    rem-long/2addr p0, v2

    .line 44
    goto :goto_e

    .line 45
    :pswitch_2c
    const-wide/16 v0, 0x11

    .line 46
    .line 47
    mul-long/2addr v0, p0

    .line 48
    const-wide/16 v2, 0x31

    .line 49
    .line 50
    rem-long/2addr p0, v2

    .line 51
    goto :goto_e

    .line 52
    :pswitch_33
    const-wide/16 v0, 0xd

    .line 53
    .line 54
    mul-long/2addr v0, p0

    .line 55
    const-wide/16 v2, 0x60

    .line 56
    .line 57
    rem-long/2addr p0, v2

    .line 58
    goto :goto_e

    .line 59
    :pswitch_3a
    const-wide/16 v0, 0x3

    .line 60
    .line 61
    mul-long/2addr v0, p0

    .line 62
    const-wide/16 v2, 0x49

    .line 63
    .line 64
    rem-long/2addr p0, v2

    .line 65
    goto :goto_e

    .line 66
    :pswitch_41
    const-wide/16 v0, 0x17

    .line 67
    .line 68
    mul-long/2addr v0, p0

    .line 69
    const-wide/16 v2, 0xf

    .line 70
    .line 71
    rem-long/2addr p0, v2

    .line 72
    goto :goto_e

    .line 73
    :pswitch_48
    const-wide/16 v0, 0x5

    .line 74
    .line 75
    mul-long/2addr v0, p0

    .line 76
    const-wide/16 v2, 0x58

    .line 77
    .line 78
    rem-long/2addr p0, v2

    .line 79
    goto :goto_e

    .line 80
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "JCKP"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_48
        :pswitch_41
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

.method private static reflectGetIv([B)Ljavax/crypto/spec/IvParameterSpec;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, [B

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    aput-object p0, v0, v2

    .line 12
    .line 13
    const-class p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/utils/ReflectUtil;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 20
    .line 21
    return-object p0
.end method
