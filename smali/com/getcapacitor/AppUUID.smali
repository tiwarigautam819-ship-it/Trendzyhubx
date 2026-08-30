###### Class com.getcapacitor.AppUUID (com.getcapacitor.AppUUID)
.class public final Lcom/getcapacitor/AppUUID;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final KEY:Ljava/lang/String; = "CapacitorAppUUID"


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

.method private static assertAppUUID(Lg/m;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->readUUID(Lg/m;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->regenerateAppUUID(Lg/m;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, p0

    .line 10
    mul-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    array-length v3, p0

    .line 16
    if-ge v2, v3, :cond_28

    .line 17
    .line 18
    aget-byte v3, p0, v2

    .line 19
    .line 20
    and-int/lit16 v4, v3, 0xff

    .line 21
    .line 22
    mul-int/lit8 v5, v2, 0x2

    .line 23
    .line 24
    ushr-int/lit8 v4, v4, 0x4

    .line 25
    .line 26
    aget-byte v4, v0, v4

    .line 27
    .line 28
    aput-byte v4, v1, v5

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    and-int/lit8 v3, v3, 0xf

    .line 33
    .line 34
    aget-byte v3, v0, v3

    .line 35
    .line 36
    aput-byte v3, v1, v5

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_e

    .line 41
    :cond_28
    new-instance p0, Ljava/lang/String;

    .line 42
    .line 43
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method private static generateUUID()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/getcapacitor/AppUUID;->bytesToHex([B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static getAppUUID(Lg/m;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->assertAppUUID(Lg/m;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/getcapacitor/AppUUID;->readUUID(Lg/m;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static readUUID(Lg/m;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v0, "CapacitorAppUUID"

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static regenerateAppUUID(Lg/m;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/getcapacitor/AppUUID;->generateUUID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/getcapacitor/AppUUID;->writeUUID(Lg/m;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_8
    new-instance p0, Ljava/lang/Exception;

    .line 10
    .line 11
    const-string v0, "Capacitor App UUID could not be generated."

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method private static writeUUID(Lg/m;Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "CapacitorAppUUID"

    .line 11
    .line 12
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
