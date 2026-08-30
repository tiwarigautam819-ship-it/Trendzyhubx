###### Class com.engagelab.privates.common.utils.SM4Util (com.engagelab.privates.common.utils.SM4Util)
.class public Lcom/engagelab/privates/common/utils/SM4Util;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final A:Ljava/lang/String;

.field private static final BLOCK:I = 0x10

.field private static CK:[I = null

.field private static final ROUND:I = 0x20

.field private static Sbox:[B = null

.field private static final TAG:Ljava/lang/String; = "SM4"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x58

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v1, v0, v2

    .line 8
    .line 9
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/engagelab/privates/common/utils/SM4Util;->A:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    fill-array-data v0, :array_22

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/engagelab/privates/common/utils/SM4Util;->Sbox:[B

    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    fill-array-data v0, :array_a6

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/engagelab/privates/common/utils/SM4Util;->CK:[I

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_22
    .array-data 1
        -0x2at
        -0x70t
        -0x17t
        -0x2t
        -0x34t
        -0x1ft
        0x3dt
        -0x49t
        0x16t
        -0x4at
        0x14t
        -0x3et
        0x28t
        -0x5t
        0x2ct
        0x5t
        0x2bt
        0x67t
        -0x66t
        0x76t
        0x2at
        -0x42t
        0x4t
        -0x3dt
        -0x56t
        0x44t
        0x13t
        0x26t
        0x49t
        -0x7at
        0x6t
        -0x67t
        -0x64t
        0x42t
        0x50t
        -0xct
        -0x6ft
        -0x11t
        -0x68t
        0x7at
        0x33t
        0x54t
        0xbt
        0x43t
        -0x13t
        -0x31t
        -0x54t
        0x62t
        -0x1ct
        -0x4dt
        0x1ct
        -0x57t
        -0x37t
        0x8t
        -0x18t
        -0x6bt
        -0x80t
        -0x21t
        -0x6ct
        -0x6t
        0x75t
        -0x71t
        0x3ft
        -0x5at
        0x47t
        0x7t
        -0x59t
        -0x4t
        -0xdt
        0x73t
        0x17t
        -0x46t
        -0x7dt
        0x59t
        0x3ct
        0x19t
        -0x1at
        -0x7bt
        0x4ft
        -0x58t
        0x68t
        0x6bt
        -0x7ft
        -0x4et
        0x71t
        0x64t
        -0x26t
        -0x75t
        -0x8t
        -0x15t
        0xft
        0x4bt
        0x70t
        0x56t
        -0x63t
        0x35t
        0x1et
        0x24t
        0xet
        0x5et
        0x63t
        0x58t
        -0x2ft
        -0x5et
        0x25t
        0x22t
        0x7ct
        0x3bt
        0x1t
        0x21t
        0x78t
        -0x79t
        -0x2ct
        0x0t
        0x46t
        0x57t
        -0x61t
        -0x2dt
        0x27t
        0x52t
        0x4ct
        0x36t
        0x2t
        -0x19t
        -0x60t
        -0x3ct
        -0x38t
        -0x62t
        -0x16t
        -0x41t
        -0x76t
        -0x2et
        0x40t
        -0x39t
        0x38t
        -0x4bt
        -0x5dt
        -0x9t
        -0xet
        -0x32t
        -0x7t
        0x61t
        0x15t
        -0x5ft
        -0x20t
        -0x52t
        0x5dt
        -0x5ct
        -0x65t
        0x34t
        0x1at
        0x55t
        -0x53t
        -0x6dt
        0x32t
        0x30t
        -0xbt
        -0x74t
        -0x4ft
        -0x1dt
        0x1dt
        -0xat
        -0x1et
        0x2et
        -0x7et
        0x66t
        -0x36t
        0x60t
        -0x40t
        0x29t
        0x23t
        -0x55t
        0xdt
        0x53t
        0x4et
        0x6ft
        -0x2bt
        -0x25t
        0x37t
        0x45t
        -0x22t
        -0x3t
        -0x72t
        0x2ft
        0x3t
        -0x1t
        0x6at
        0x72t
        0x6dt
        0x6ct
        0x5bt
        0x51t
        -0x73t
        0x1bt
        -0x51t
        -0x6et
        -0x45t
        -0x23t
        -0x44t
        0x7ft
        0x11t
        -0x27t
        0x5ct
        0x41t
        0x1ft
        0x10t
        0x5at
        -0x28t
        0xat
        -0x3ft
        0x31t
        -0x78t
        -0x5bt
        -0x33t
        0x7bt
        -0x43t
        0x2dt
        0x74t
        -0x30t
        0x12t
        -0x48t
        -0x1bt
        -0x4ct
        -0x50t
        -0x77t
        0x69t
        -0x69t
        0x4at
        0xct
        -0x6at
        0x77t
        0x7et
        0x65t
        -0x47t
        -0xft
        0x9t
        -0x3bt
        0x6et
        -0x3at
        -0x7ct
        0x18t
        -0x10t
        0x7dt
        -0x14t
        0x3at
        -0x24t
        0x4dt
        0x20t
        0x79t
        -0x12t
        0x5ft
        0x3et
        -0x29t
        -0x35t
        0x39t
        0x48t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_a6
    .array-data 4
        0x70e15
        0x1c232a31
        0x383f464d
        0x545b6269
        0x70777e85    # 3.06383E29f
        -0x736c655f    # -2.2742E-31f
        -0x57504943
        -0x3b342d27
        -0x1f18110b
        -0x3fcf5ef
        0x181f262d
        0x343b4249
        0x50575e65
        0x6c737a81
        -0x77706963
        -0x5b544d47
        -0x3f38312b
        -0x231c150f
        -0x700f9f3
        0x141b2229
        0x30373e45
        0x4c535a61    # 5.5404932E7f
        0x686f767d
        -0x7b746d67
        -0x5f58514b
        -0x433c352f
        -0x27201913
        -0xb04fdf7
        0x10171e25
        0x2c333a41
        0x484f565d
        0x646b7279
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static ByteSub(I)I
    .registers 4

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/SM4Util;->Sbox:[B

    .line 2
    .line 3
    ushr-int/lit8 v1, p0, 0x18

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    aget-byte v1, v0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x18

    .line 12
    .line 13
    ushr-int/lit8 v2, p0, 0x10

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    shl-int/lit8 v2, v2, 0x10

    .line 22
    .line 23
    or-int/2addr v1, v2

    .line 24
    ushr-int/lit8 v2, p0, 0x8

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    aget-byte v2, v0, v2

    .line 29
    .line 30
    and-int/lit16 v2, v2, 0xff

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x8

    .line 33
    .line 34
    or-int/2addr v1, v2

    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    .line 37
    aget-byte p0, v0, p0

    .line 38
    .line 39
    and-int/lit16 p0, p0, 0xff

    .line 40
    .line 41
    or-int/2addr p0, v1

    .line 42
    return p0
.end method

.method private static L1(I)I
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    xor-int/2addr v0, p0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    const/16 v1, 0x12

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    const/16 v1, 0x18

    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    xor-int/2addr p0, v0

    .line 28
    return p0
.end method

.method private static L2(I)I
    .registers 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/2addr v0, p0

    .line 8
    const/16 v1, 0x17

    .line 9
    .line 10
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/utils/SM4Util;->Rotl(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    xor-int/2addr p0, v0

    .line 15
    return p0
.end method

.method private static L3([B)[I
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_2c

    .line 6
    .line 7
    mul-int/lit8 v3, v2, 0x4

    .line 8
    .line 9
    aget-byte v4, p0, v3

    .line 10
    .line 11
    and-int/lit16 v4, v4, 0xff

    .line 12
    .line 13
    shl-int/lit8 v4, v4, 0x18

    .line 14
    .line 15
    add-int/lit8 v5, v3, 0x1

    .line 16
    .line 17
    aget-byte v5, p0, v5

    .line 18
    .line 19
    and-int/lit16 v5, v5, 0xff

    .line 20
    .line 21
    shl-int/lit8 v5, v5, 0x10

    .line 22
    .line 23
    or-int/2addr v4, v5

    .line 24
    add-int/lit8 v5, v3, 0x2

    .line 25
    .line 26
    aget-byte v5, p0, v5

    .line 27
    .line 28
    and-int/lit16 v5, v5, 0xff

    .line 29
    .line 30
    shl-int/lit8 v5, v5, 0x8

    .line 31
    .line 32
    or-int/2addr v4, v5

    .line 33
    add-int/lit8 v3, v3, 0x3

    .line 34
    .line 35
    aget-byte v3, p0, v3

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    or-int/2addr v3, v4

    .line 40
    aput v3, v1, v2

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_2c
    return-object v1
.end method

.method private static Rotl(II)I
    .registers 3

    .line 1
    shl-int v0, p0, p1

    .line 2
    .line 3
    rsub-int/lit8 p1, p1, 0x20

    .line 4
    .line 5
    ushr-int/2addr p0, p1

    .line 6
    or-int/2addr p0, v0

    .line 7
    return p0
.end method

.method private static cbcXor([B[B)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_f

    .line 4
    .line 5
    aget-byte v1, p0, v0

    .line 6
    .line 7
    aget-byte v2, p1, v0

    .line 8
    .line 9
    xor-int/2addr v1, v2

    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_f
    return-void
.end method

.method public static decode([B[B[B)[B
    .registers 11

    .line 1
    if-eqz p0, :cond_49

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_49

    .line 7
    :cond_6
    if-eqz p1, :cond_41

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    if-ne v0, v1, :cond_41

    .line 13
    .line 14
    if-eqz p2, :cond_13

    .line 15
    .line 16
    array-length v0, p2

    .line 17
    if-eq v0, v1, :cond_13

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :cond_13
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->sm4KeyExt([BZ)[I

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-array v0, v1, [B

    .line 26
    .line 27
    new-array v2, v1, [B

    .line 28
    .line 29
    array-length v3, p0

    .line 30
    new-array v3, v3, [B

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    :goto_21
    add-int/lit8 v6, v5, 0x10

    .line 35
    .line 36
    array-length v7, p0

    .line 37
    if-gt v6, v7, :cond_3c

    .line 38
    .line 39
    invoke-static {p0, v5, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2, p1}, Lcom/engagelab/privates/common/utils/SM4Util;->sm4Crypt([B[B[I)V

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_32

    .line 46
    .line 47
    invoke-static {v2, p2}, Lcom/engagelab/privates/common/utils/SM4Util;->cbcXor([B[B)V

    .line 48
    .line 49
    .line 50
    goto :goto_34

    .line 51
    :cond_32
    new-array p2, v1, [B

    .line 52
    .line 53
    :goto_34
    invoke-static {p0, v5, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    move v5, v6

    .line 60
    goto :goto_21

    .line 61
    :cond_3c
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/SM4Util;->revertPkcs7Padding([B)[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p1, "key\'s length should be 16"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_49
    :goto_49
    return-object p0
.end method

.method public static decodeMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/SM4Util;->A:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v1, v2}, Lcom/engagelab/privates/common/utils/SM4Util;->decryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "dM e:"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "SM4"

    .line 69
    .line 70
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "dM :"

    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public static decryptBytes([BLjava/lang/String;)[B
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SM4Util;->hexStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "utf-8"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/engagelab/privates/common/utils/SM4Util;->decode([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBytes([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SM4Util;->hexStringToByte(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "utf-8"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/utils/SM4Util;->decode([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B[B[B)[B
    .registers 10

    .line 1
    if-eqz p0, :cond_44

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_44

    .line 7
    :cond_6
    if-eqz p1, :cond_3c

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    if-ne v0, v1, :cond_3c

    .line 13
    .line 14
    if-eqz p2, :cond_13

    .line 15
    .line 16
    array-length v0, p2

    .line 17
    if-eq v0, v1, :cond_13

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :cond_13
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SM4Util;->pkcs7padding([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->sm4KeyExt([BZ)[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-array v2, v1, [B

    .line 30
    .line 31
    array-length v3, p0

    .line 32
    new-array v3, v3, [B

    .line 33
    .line 34
    move v4, v0

    .line 35
    :goto_22
    add-int/lit8 v5, v4, 0x10

    .line 36
    .line 37
    array-length v6, p0

    .line 38
    if-gt v5, v6, :cond_3b

    .line 39
    .line 40
    invoke-static {p0, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_30

    .line 44
    .line 45
    invoke-static {v2, p2}, Lcom/engagelab/privates/common/utils/SM4Util;->cbcXor([B[B)V

    .line 46
    .line 47
    .line 48
    goto :goto_32

    .line 49
    :cond_30
    new-array p2, v1, [B

    .line 50
    .line 51
    :goto_32
    invoke-static {v2, p2, p1}, Lcom/engagelab/privates/common/utils/SM4Util;->sm4Crypt([B[B[I)V

    .line 52
    .line 53
    .line 54
    array-length v6, p2

    .line 55
    invoke-static {p2, v0, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    move v4, v5

    .line 59
    goto :goto_22

    .line 60
    :cond_3b
    return-object v3

    .line 61
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p1, "key\'s length should be 16"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_44
    :goto_44
    return-object p0
.end method

.method public static encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SM4Util;->hexStringToByte(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "utf-8"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/utils/SM4Util;->encode([B[B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static hexStringToByte(Ljava/lang/String;)[B
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v0, :cond_2c

    .line 19
    .line 20
    mul-int/lit8 v3, v2, 0x2

    .line 21
    .line 22
    aget-char v4, p0, v3

    .line 23
    .line 24
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/SM4Util;->toByte(C)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    shl-int/lit8 v4, v4, 0x4

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    aget-char v3, p0, v3

    .line 33
    .line 34
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/SM4Util;->toByte(C)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    or-int/2addr v3, v4

    .line 39
    int-to-byte v3, v3

    .line 40
    aput-byte v3, v1, v2

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_11

    .line 45
    :cond_2c
    return-object v1
.end method

.method private static pkcs7padding([B)[B
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    rem-int/lit8 v0, v0, 0x10

    .line 3
    .line 4
    rsub-int/lit8 v0, v0, 0x10

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v0, :cond_16

    .line 14
    .line 15
    array-length v3, p0

    .line 16
    add-int/2addr v3, v2

    .line 17
    int-to-byte v4, v0

    .line 18
    aput-byte v4, v1, v3

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_c

    .line 23
    :cond_16
    return-object v1
.end method

.method private static revertPkcs7Padding([B)[B
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    sub-int/2addr v1, v0

    .line 8
    new-array v0, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static sm4Crypt([B[B[I)V
    .registers 12

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SM4Util;->L3([B)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_6
    const/16 v2, 0x20

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ge v1, v2, :cond_70

    .line 11
    .line 12
    aget v2, p0, v0

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aget v5, p0, v4

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    aget v7, p0, v6

    .line 19
    .line 20
    xor-int/2addr v5, v7

    .line 21
    aget v7, p0, v3

    .line 22
    .line 23
    xor-int/2addr v5, v7

    .line 24
    aget v7, p2, v1

    .line 25
    .line 26
    xor-int/2addr v5, v7

    .line 27
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/SM4Util;->L1(I)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    xor-int/2addr v2, v5

    .line 36
    aput v2, p0, v0

    .line 37
    .line 38
    aget v5, p0, v4

    .line 39
    .line 40
    aget v7, p0, v6

    .line 41
    .line 42
    aget v8, p0, v3

    .line 43
    .line 44
    xor-int/2addr v7, v8

    .line 45
    xor-int/2addr v2, v7

    .line 46
    add-int/lit8 v7, v1, 0x1

    .line 47
    .line 48
    aget v7, p2, v7

    .line 49
    .line 50
    xor-int/2addr v2, v7

    .line 51
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->L1(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    xor-int/2addr v2, v5

    .line 60
    aput v2, p0, v4

    .line 61
    .line 62
    aget v5, p0, v6

    .line 63
    .line 64
    aget v7, p0, v3

    .line 65
    .line 66
    aget v8, p0, v0

    .line 67
    .line 68
    xor-int/2addr v7, v8

    .line 69
    xor-int/2addr v2, v7

    .line 70
    add-int/lit8 v7, v1, 0x2

    .line 71
    .line 72
    aget v7, p2, v7

    .line 73
    .line 74
    xor-int/2addr v2, v7

    .line 75
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->L1(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    xor-int/2addr v2, v5

    .line 84
    aput v2, p0, v6

    .line 85
    .line 86
    aget v5, p0, v3

    .line 87
    .line 88
    aget v6, p0, v0

    .line 89
    .line 90
    aget v4, p0, v4

    .line 91
    .line 92
    xor-int/2addr v4, v6

    .line 93
    xor-int/2addr v2, v4

    .line 94
    add-int/lit8 v4, v1, 0x3

    .line 95
    .line 96
    aget v4, p2, v4

    .line 97
    .line 98
    xor-int/2addr v2, v4

    .line 99
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SM4Util;->L1(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    xor-int/2addr v2, v5

    .line 108
    aput v2, p0, v3

    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x4

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_70
    :goto_70
    const/16 p2, 0x10

    .line 114
    .line 115
    if-ge v0, p2, :cond_9d

    .line 116
    .line 117
    div-int/lit8 p2, v0, 0x4

    .line 118
    .line 119
    rsub-int/lit8 p2, p2, 0x3

    .line 120
    .line 121
    aget p2, p0, p2

    .line 122
    .line 123
    ushr-int/lit8 v1, p2, 0x18

    .line 124
    .line 125
    and-int/lit16 v1, v1, 0xff

    .line 126
    .line 127
    int-to-byte v1, v1

    .line 128
    aput-byte v1, p1, v0

    .line 129
    .line 130
    add-int/lit8 v1, v0, 0x1

    .line 131
    .line 132
    ushr-int/lit8 v2, p2, 0x10

    .line 133
    .line 134
    and-int/lit16 v2, v2, 0xff

    .line 135
    .line 136
    int-to-byte v2, v2

    .line 137
    aput-byte v2, p1, v1

    .line 138
    .line 139
    add-int/lit8 v1, v0, 0x2

    .line 140
    .line 141
    ushr-int/lit8 v2, p2, 0x8

    .line 142
    .line 143
    and-int/lit16 v2, v2, 0xff

    .line 144
    .line 145
    int-to-byte v2, v2

    .line 146
    aput-byte v2, p1, v1

    .line 147
    .line 148
    add-int/lit8 v1, v0, 0x3

    .line 149
    .line 150
    and-int/lit16 p2, p2, 0xff

    .line 151
    .line 152
    int-to-byte p2, p2

    .line 153
    aput-byte p2, p1, v1

    .line 154
    .line 155
    add-int/lit8 v0, v0, 0x4

    .line 156
    .line 157
    goto :goto_70

    .line 158
    :cond_9d
    return-void
.end method

.method public static sm4KeyExt([BZ)[I
    .registers 13

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SM4Util;->L3([B)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    aget v1, p0, v0

    .line 7
    .line 8
    const v2, -0x5c4e453a

    .line 9
    .line 10
    .line 11
    xor-int/2addr v1, v2

    .line 12
    aput v1, p0, v0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget v2, p0, v1

    .line 16
    .line 17
    const v3, 0x56aa3350

    .line 18
    .line 19
    .line 20
    xor-int/2addr v2, v3

    .line 21
    aput v2, p0, v1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    aget v3, p0, v2

    .line 25
    .line 26
    const v4, 0x677d9197

    .line 27
    .line 28
    .line 29
    xor-int/2addr v3, v4

    .line 30
    aput v3, p0, v2

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    aget v4, p0, v3

    .line 34
    .line 35
    const v5, -0x4d8fdd24

    .line 36
    .line 37
    .line 38
    xor-int/2addr v4, v5

    .line 39
    aput v4, p0, v3

    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    new-array v5, v4, [I

    .line 44
    .line 45
    move v6, v0

    .line 46
    :goto_2d
    if-ge v6, v4, :cond_a8

    .line 47
    .line 48
    aget v7, p0, v0

    .line 49
    .line 50
    aget v8, p0, v1

    .line 51
    .line 52
    aget v9, p0, v2

    .line 53
    .line 54
    xor-int/2addr v8, v9

    .line 55
    aget v9, p0, v3

    .line 56
    .line 57
    xor-int/2addr v8, v9

    .line 58
    sget-object v9, Lcom/engagelab/privates/common/utils/SM4Util;->CK:[I

    .line 59
    .line 60
    aget v9, v9, v6

    .line 61
    .line 62
    xor-int/2addr v8, v9

    .line 63
    invoke-static {v8}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-static {v8}, Lcom/engagelab/privates/common/utils/SM4Util;->L2(I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    xor-int/2addr v7, v8

    .line 72
    aput v7, p0, v0

    .line 73
    .line 74
    aput v7, v5, v6

    .line 75
    .line 76
    add-int/lit8 v7, v6, 0x1

    .line 77
    .line 78
    aget v8, p0, v1

    .line 79
    .line 80
    aget v9, p0, v2

    .line 81
    .line 82
    aget v10, p0, v3

    .line 83
    .line 84
    xor-int/2addr v9, v10

    .line 85
    aget v10, p0, v0

    .line 86
    .line 87
    xor-int/2addr v9, v10

    .line 88
    sget-object v10, Lcom/engagelab/privates/common/utils/SM4Util;->CK:[I

    .line 89
    .line 90
    aget v10, v10, v7

    .line 91
    .line 92
    xor-int/2addr v9, v10

    .line 93
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->L2(I)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    xor-int/2addr v8, v9

    .line 102
    aput v8, p0, v1

    .line 103
    .line 104
    aput v8, v5, v7

    .line 105
    .line 106
    add-int/lit8 v7, v6, 0x2

    .line 107
    .line 108
    aget v8, p0, v2

    .line 109
    .line 110
    aget v9, p0, v3

    .line 111
    .line 112
    aget v10, p0, v0

    .line 113
    .line 114
    xor-int/2addr v9, v10

    .line 115
    aget v10, p0, v1

    .line 116
    .line 117
    xor-int/2addr v9, v10

    .line 118
    sget-object v10, Lcom/engagelab/privates/common/utils/SM4Util;->CK:[I

    .line 119
    .line 120
    aget v10, v10, v7

    .line 121
    .line 122
    xor-int/2addr v9, v10

    .line 123
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->L2(I)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    xor-int/2addr v8, v9

    .line 132
    aput v8, p0, v2

    .line 133
    .line 134
    aput v8, v5, v7

    .line 135
    .line 136
    add-int/lit8 v7, v6, 0x3

    .line 137
    .line 138
    aget v8, p0, v3

    .line 139
    .line 140
    aget v9, p0, v0

    .line 141
    .line 142
    aget v10, p0, v1

    .line 143
    .line 144
    xor-int/2addr v9, v10

    .line 145
    aget v10, p0, v2

    .line 146
    .line 147
    xor-int/2addr v9, v10

    .line 148
    sget-object v10, Lcom/engagelab/privates/common/utils/SM4Util;->CK:[I

    .line 149
    .line 150
    aget v10, v10, v7

    .line 151
    .line 152
    xor-int/2addr v9, v10

    .line 153
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->ByteSub(I)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/SM4Util;->L2(I)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    xor-int/2addr v8, v9

    .line 162
    aput v8, p0, v3

    .line 163
    .line 164
    aput v8, v5, v7

    .line 165
    .line 166
    add-int/lit8 v6, v6, 0x4

    .line 167
    .line 168
    goto :goto_2d

    .line 169
    :cond_a8
    if-eqz p1, :cond_bb

    .line 170
    .line 171
    :goto_aa
    const/16 p0, 0x10

    .line 172
    .line 173
    if-ge v0, p0, :cond_bb

    .line 174
    .line 175
    aget p0, v5, v0

    .line 176
    .line 177
    rsub-int/lit8 p1, v0, 0x1f

    .line 178
    .line 179
    aget v1, v5, p1

    .line 180
    .line 181
    aput v1, v5, v0

    .line 182
    .line 183
    aput p0, v5, p1

    .line 184
    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    goto :goto_aa

    .line 188
    :cond_bb
    return-object v5
.end method

.method private static toByte(C)I
    .registers 2

    .line 1
    const-string v0, "0123456789abcdef"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-byte p0, p0

    .line 8
    return p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 6

    .line 1
    if-eqz p0, :cond_2f

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt v0, v1, :cond_2f

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_26

    .line 15
    .line 16
    aget-byte v3, p0, v2

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    const/16 v4, 0x10

    .line 21
    .line 22
    if-ge v3, v4, :cond_1c

    .line 23
    .line 24
    const-string v4, "0"

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_1c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_d

    .line 39
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "this byteArray must not be null or empty"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
