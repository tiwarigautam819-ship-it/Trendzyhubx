###### Class com.engagelab.privates.common.utils.StringUtil (com.engagelab.privates.common.utils.StringUtil)
.class public Lcom/engagelab/privates/common/utils/StringUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final HMAC_SHA_256:Ljava/lang/String;

.field public static final MD5:Ljava/lang/String;

.field public static final sha1:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_26

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->MD5:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [B

    .line 15
    .line 16
    fill-array-data v0, :array_2c

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->sha1:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [B

    .line 28
    .line 29
    fill-array-data v0, :array_32

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->HMAC_SHA_256:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :array_26
    .array-data 1
        0x5bt
        0x55t
        0x5t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_2c
    .array-data 1
        0x42t
        0x78t
        0x61t
        0x28t
    .end array-data

    :array_32
    .array-data 1
        0x59t
        0x5dt
        0x41t
        0x7at
        0x5bt
        0x5et
        0x50t
        0x2t
        0x15t
        0x2ft
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

.method public static HMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->HMAC_SHA_256:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    sget-object v3, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->toHex([B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    .line 39
    return-object p0

    .line 40
    :catchall_27
    const-string p0, ""

    .line 41
    .line 42
    return-object p0
.end method

.method public static decodeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catchall_11
    const-string p0, ""

    .line 19
    .line 20
    return-object p0
.end method

.method public static encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 12
    return-object p0

    .line 13
    :catchall_c
    const-string p0, ""

    .line 14
    .line 15
    return-object p0
.end method

.method public static filterSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_9
    const-string v0, "[^\\w#$@\\-\u4e00-\u9fa5]+"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static get16MD5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static get32MD5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->MD5:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    array-length v1, p0

    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    array-length v4, p0

    .line 17
    if-ge v3, v4, :cond_1a

    .line 18
    .line 19
    aget-char v4, p0, v3

    .line 20
    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, v1, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_23
    array-length v1, p0

    .line 37
    if-ge v2, v1, :cond_3d

    .line 38
    .line 39
    aget-byte v1, p0, v2

    .line 40
    .line 41
    and-int/lit16 v1, v1, 0xff

    .line 42
    .line 43
    const/16 v3, 0x10

    .line 44
    .line 45
    if-ge v1, v3, :cond_33

    .line 46
    .line 47
    const-string v3, "0"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    :cond_33
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_23

    .line 62
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    .line 66
    return-object p0

    .line 67
    :catchall_42
    const-string p0, ""

    .line 68
    .line 69
    return-object p0
.end method

.method public static getBytesMD5([B)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->MD5:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    array-length v1, p0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_2a

    .line 19
    .line 20
    aget-byte v3, p0, v2

    .line 21
    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    const/16 v4, 0x10

    .line 25
    .line 26
    if-ge v3, v4, :cond_20

    .line 27
    .line 28
    const-string v4, "0"

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_20
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_11

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    .line 47
    return-object p0

    .line 48
    :catchall_2f
    const-string p0, ""

    .line 49
    .line 50
    return-object p0
.end method

.method public static getBytesSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    .line 9
    :cond_7
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/engagelab/privates/common/utils/StringUtil;->getBytesSHA1([B)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    :goto_11
    return-object p0
.end method

.method public static getBytesSHA1([B)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->sha1:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2a

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_20

    const-string v4, "0"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_20
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 7
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    const-string p0, ""

    return-object p0
.end method

.method public static getMD5Utf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/StringUtil;->MD5:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_17
    if-ge v2, v1, :cond_30

    .line 25
    .line 26
    aget-byte v3, p0, v2

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    const/16 v4, 0x10

    .line 31
    .line 32
    if-ge v3, v4, :cond_26

    .line 33
    .line 34
    const-string v4, "0"

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_17

    .line 49
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    .line 53
    return-object p0

    .line 54
    :catchall_35
    const-string p0, ""

    .line 55
    .line 56
    return-object p0
.end method

.method public static getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_16
    return-object v0
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    new-array p0, v0, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 17
    return-object p0

    .line 18
    :catchall_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 7

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    if-ge v2, v1, :cond_2c

    .line 17
    .line 18
    aget-byte v3, p0, v2

    .line 19
    .line 20
    shr-int/lit8 v4, v3, 0x4

    .line 21
    .line 22
    and-int/lit8 v4, v4, 0xf

    .line 23
    .line 24
    const-string v5, "0123456789ABCDEF"

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v3, v3, 0xf

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_f

    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static toMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    sget-object v1, Lcom/engagelab/privates/common/utils/StringUtil;->MD5:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->toHex([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    .line 30
    return-object p0

    .line 31
    :catchall_1e
    return-object v0
.end method
