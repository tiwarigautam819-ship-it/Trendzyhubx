###### Class com.engagelab.privates.common.utils.RsaUitl (com.engagelab.privates.common.utils.RsaUitl)
.class public Lcom/engagelab/privates/common/utils/RsaUitl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final RSA_MODE:Ljava/lang/String;

.field private static final RSA_PUBLIC_KEY_HEX_STRING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RsaUitl"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_1c

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/engagelab/privates/common/utils/RsaUitl;->RSA_PUBLIC_KEY_HEX_STRING:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x15

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_60

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/engagelab/privates/common/utils/RsaUitl;->RSA_MODE:Ljava/lang/String;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 1
        0x45t
        0x50t
        0x66t
        0x47t
        0x64t
        0x48t
        0x51t
        0x5ct
        0x5at
        0x5ft
        0x7at
        0x50t
        0x60t
        0x60t
        0x72t
        0x7et
        0x61t
        0x48t
        0x4dt
        0x54t
        0x53t
        0x61t
        0x61t
        0x5dt
        0x5bt
        0x61t
        0x50t
        0x47t
        0x73t
        0x58t
        0x42t
        0x54t
        0x50t
        0x7ct
        0x10t
        0x6bt
        0x62t
        0x61t
        0x67t
        0x0t
        0x4dt
        0x5ft
        0x7bt
        0x59t
        0x28t
        0x63t
        0x70t
        0x40t
        0x5at
        0x2ft
        0x59t
        0x5at
        0x14t
        0x5ft
        0x5et
        0x2ft
        0x4bt
        0x7dt
        0x74t
        0x78t
        0x39t
        0x52t
        0x29t
        0x41t
        0x44t
        0x7dt
        0x59t
        0x5dt
        0x67t
        0x46t
        0x4ft
        0x77t
        0x3at
        0x54t
        0x5ct
        0x68t
        0x4et
        0x5at
        0x65t
        0x64t
        0x65t
        0x0t
        0x6ct
        0x43t
        0x6dt
        0x63t
        0x55t
        0x4t
        0x18t
        0x43t
        0x6ft
        0x7dt
        0x50t
        0x4at
        0x46t
        0x4ft
        0x71t
        0x64t
        0x53t
        0x61t
        0x4et
        0x41t
        0x7bt
        0x72t
        0x7at
        0x5ct
        0x4ct
        0x7bt
        0x38t
        0x54t
        0x7at
        0x72t
        0x41t
        0x56t
        0x47t
        0x20t
        0x76t
        0x7bt
        0x6dt
        0x5at
        0x49t
        0x61t
        0x54t
        0x71t
        0x61t
        0x48t
        0x35t
        0x2bt
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_60
    .array-data 1
        0x44t
        0x42t
        0x71t
        0xft
        0x57t
        0x67t
        0x78t
        0x74t
        0x1ft
        0x70t
        0x52t
        0x4bt
        0x45t
        0x20t
        0x60t
        0x41t
        0x7dt
        0x6ct
        0x7ft
        0x7ft
        0x57t
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

.method public static deRsa(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

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
    :try_start_9
    invoke-static {}, Lcom/engagelab/privates/common/utils/RsaUitl;->decodeRsaPubKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lcom/engagelab/privates/common/utils/RsaUitl;->RSA_MODE:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0, v0, v2}, Lcom/engagelab/privates/common/utils/RsaUitl;->rsaDecryptString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 20
    return-object p0

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "deRsa "

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "RsaUitl"

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method private static decodeRsaPubKey()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/RsaUitl;->RSA_PUBLIC_KEY_HEX_STRING:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    .line 2
    .line 3
    return-object v0

    .line 4
    :catchall_3
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "decodeRsaPubKey "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "RsaUitl"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    return-object v0
.end method

.method private static loadRSAKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "RSA"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    .line 22
    .line 23
    return-object p0

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "rsa loadRSAKey e="

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "RsaUitl"

    .line 40
    .line 41
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static declared-synchronized rsaDecrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B
    .registers 5

    .line 1
    const-class v0, Lcom/engagelab/privates/common/utils/RsaUitl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x2

    .line 5
    :try_start_4
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_19

    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw p0
.end method

.method private static rsaDecryptString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/RsaUitl;->loadRSAKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/utils/RsaUitl;->rsaDecrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    invoke-static {p0, p2}, Landroid/util/Base64;->encode([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p2, "UTF-8"

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method private static declared-synchronized rsaEncrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B
    .registers 5

    .line 1
    const-class v0, Lcom/engagelab/privates/common/utils/RsaUitl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .line 24
    throw p0
.end method

.method public static rsaEncryptString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/RsaUitl;->loadRSAKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/utils/RsaUitl;->rsaEncrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    invoke-static {p0, p2}, Landroid/util/Base64;->encode([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p2, "UTF-8"

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method
