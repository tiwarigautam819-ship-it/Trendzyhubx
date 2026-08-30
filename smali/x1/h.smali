###### Class x1.h (x1.h)
.class public final Lx1/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx1/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final v:Ljava/util/Set;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/util/Map;

.field public final y:Ljava/util/Map;

.field public final z:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx1/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "jti"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/h;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "iss"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/h;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "aud"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/h;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "nonce"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/h;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lx1/h;->e:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lx1/h;->f:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "sub"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/h;->g:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->h:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->i:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->j:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->k:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->l:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->m:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    .line 78
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_7c

    :cond_7b
    move-object v0, v1

    .line 79
    :goto_7c
    iput-object v0, p0, Lx1/h;->v:Ljava/util/Set;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->w:Ljava/lang/String;

    .line 81
    const-class v0, Ld7/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_91

    goto :goto_92

    :cond_91
    move-object v0, v1

    :goto_92
    if-eqz v0, :cond_99

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_9a

    :cond_99
    move-object v0, v1

    .line 83
    :goto_9a
    iput-object v0, p0, Lx1/h;->x:Ljava/util/Map;

    .line 84
    const-class v0, Ld7/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_a9

    goto :goto_aa

    :cond_a9
    move-object v2, v1

    :goto_aa
    if-eqz v2, :cond_b1

    .line 85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_b2

    :cond_b1
    move-object v2, v1

    .line 86
    :goto_b2
    iput-object v2, p0, Lx1/h;->y:Ljava/util/Map;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object v0, v1

    :goto_c0
    if-eqz v0, :cond_c6

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 89
    :cond_c6
    iput-object v1, p0, Lx1/h;->z:Ljava/util/Map;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/h;->A:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx1/h;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "encodedClaims"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "expectedNonce"

    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    .line 4
    const-string v1, "decodedBytes"

    invoke-static {v1, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lk7/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "iss"

    .line 7
    const-string v1, "jti"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1cc

    .line 9
    :try_start_38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1cc

    .line 11
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "facebook.com"

    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www.facebook.com"

    invoke-static {v2, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_65
    .catch Ljava/net/MalformedURLException; {:try_start_38 .. :try_end_65} :catch_1cc

    if-eqz v2, :cond_1cc

    .line 12
    :cond_67
    const-string v2, "aud"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1cc

    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 15
    new-instance v3, Ljava/util/Date;

    const-string v4, "exp"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    mul-long/2addr v5, v7

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 16
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1cc

    .line 17
    const-string v3, "iat"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 18
    new-instance v9, Ljava/util/Date;

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x927c0

    add-long/2addr v5, v7

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 19
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_1cc

    .line 20
    const-string v5, "sub"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {v5, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1cc

    .line 22
    const-string v6, "nonce"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-static {v6, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1cc

    .line 24
    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1cc

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "jsonObj.getString(JSON_KEY_JIT)"

    invoke-static {v1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lx1/h;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObj.getString(JSON_KEY_ISS)"

    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lx1/h;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObj.getString(JSON_KEY_AUD)"

    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lx1/h;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObj.getString(JSON_KEY_NONCE)"

    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lx1/h;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lx1/h;->e:J

    .line 30
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lx1/h;->f:J

    .line 31
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObj.getString(JSON_KEY_SUB)"

    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lx1/h;->g:Ljava/lang/String;

    .line 32
    const-string p2, "name"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->h:Ljava/lang/String;

    .line 33
    const-string p2, "given_name"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->i:Ljava/lang/String;

    .line 34
    const-string p2, "middle_name"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->j:Ljava/lang/String;

    .line 35
    const-string p2, "family_name"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->k:Ljava/lang/String;

    .line 36
    const-string p2, "email"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->l:Ljava/lang/String;

    .line 37
    const-string p2, "picture"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->m:Ljava/lang/String;

    .line 38
    const-string p2, "user_friends"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_157

    move-object p2, v0

    goto :goto_176

    .line 39
    :cond_157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 40
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_161
    if-ge v3, v2, :cond_172

    .line 41
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jsonArray.getString(i)"

    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_161

    .line 42
    :cond_172
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 43
    :goto_176
    iput-object p2, p0, Lx1/h;->v:Ljava/util/Set;

    .line 44
    const-string p2, "user_birthday"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->w:Ljava/lang/String;

    .line 45
    const-string p2, "user_age_range"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_18a

    move-object p2, v0

    goto :goto_192

    .line 46
    :cond_18a
    invoke-static {p2}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    .line 47
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 48
    :goto_192
    iput-object p2, p0, Lx1/h;->x:Ljava/util/Map;

    .line 49
    const-string p2, "user_hometown"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_19e

    move-object p2, v0

    goto :goto_1a6

    .line 50
    :cond_19e
    invoke-static {p2}, Lq2/g0;->i(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 51
    :goto_1a6
    iput-object p2, p0, Lx1/h;->y:Ljava/util/Map;

    .line 52
    const-string p2, "user_location"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1b1

    goto :goto_1b9

    .line 53
    :cond_1b1
    invoke-static {p2}, Lq2/g0;->i(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 54
    :goto_1b9
    iput-object v0, p0, Lx1/h;->z:Ljava/util/Map;

    .line 55
    const-string p2, "user_gender"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lx1/h;->A:Ljava/lang/String;

    .line 56
    const-string p2, "user_link"

    invoke-static {p2, p1}, Li2/t;->g(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx1/h;->B:Ljava/lang/String;

    return-void

    .line 57
    :catch_1cc
    :cond_1cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid claims"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lx1/h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lx1/h;

    .line 12
    .line 13
    iget-object v1, p1, Lx1/h;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lx1/h;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_d1

    .line 22
    .line 23
    iget-object v1, p0, Lx1/h;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lx1/h;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_d1

    .line 32
    .line 33
    iget-object v1, p0, Lx1/h;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lx1/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_d1

    .line 42
    .line 43
    iget-object v1, p0, Lx1/h;->d:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lx1/h;->d:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_d1

    .line 52
    .line 53
    iget-wide v3, p0, Lx1/h;->e:J

    .line 54
    .line 55
    iget-wide v5, p1, Lx1/h;->e:J

    .line 56
    .line 57
    cmp-long v1, v3, v5

    .line 58
    .line 59
    if-nez v1, :cond_d1

    .line 60
    .line 61
    iget-wide v3, p0, Lx1/h;->f:J

    .line 62
    .line 63
    iget-wide v5, p1, Lx1/h;->f:J

    .line 64
    .line 65
    cmp-long v1, v3, v5

    .line 66
    .line 67
    if-nez v1, :cond_d1

    .line 68
    .line 69
    iget-object v1, p0, Lx1/h;->g:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p1, Lx1/h;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_d1

    .line 78
    .line 79
    iget-object v1, p0, Lx1/h;->h:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lx1/h;->h:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_d1

    .line 88
    .line 89
    iget-object v1, p0, Lx1/h;->i:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lx1/h;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_d1

    .line 98
    .line 99
    iget-object v1, p0, Lx1/h;->j:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, p1, Lx1/h;->j:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_d1

    .line 108
    .line 109
    iget-object v1, p0, Lx1/h;->k:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v3, p1, Lx1/h;->k:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_d1

    .line 118
    .line 119
    iget-object v1, p0, Lx1/h;->l:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, p1, Lx1/h;->l:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_d1

    .line 128
    .line 129
    iget-object v1, p0, Lx1/h;->m:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v3, p1, Lx1/h;->m:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_d1

    .line 138
    .line 139
    iget-object v1, p0, Lx1/h;->v:Ljava/util/Set;

    .line 140
    .line 141
    iget-object v3, p1, Lx1/h;->v:Ljava/util/Set;

    .line 142
    .line 143
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_d1

    .line 148
    .line 149
    iget-object v1, p0, Lx1/h;->w:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v3, p1, Lx1/h;->w:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_d1

    .line 158
    .line 159
    iget-object v1, p0, Lx1/h;->x:Ljava/util/Map;

    .line 160
    .line 161
    iget-object v3, p1, Lx1/h;->x:Ljava/util/Map;

    .line 162
    .line 163
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_d1

    .line 168
    .line 169
    iget-object v1, p0, Lx1/h;->y:Ljava/util/Map;

    .line 170
    .line 171
    iget-object v3, p1, Lx1/h;->y:Ljava/util/Map;

    .line 172
    .line 173
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_d1

    .line 178
    .line 179
    iget-object v1, p0, Lx1/h;->z:Ljava/util/Map;

    .line 180
    .line 181
    iget-object v3, p1, Lx1/h;->z:Ljava/util/Map;

    .line 182
    .line 183
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_d1

    .line 188
    .line 189
    iget-object v1, p0, Lx1/h;->A:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lx1/h;->A:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_d1

    .line 198
    .line 199
    iget-object v1, p0, Lx1/h;->B:Ljava/lang/String;

    .line 200
    .line 201
    iget-object p1, p1, Lx1/h;->B:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v1, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_d1

    .line 208
    .line 209
    return v0

    .line 210
    :cond_d1
    return v2
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget-object v1, p0, Lx1/h;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lx1/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lx1/h;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lx1/h;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-wide v3, p0, Lx1/h;->e:J

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    ushr-long v5, v3, v1

    .line 34
    .line 35
    xor-long/2addr v3, v5

    .line 36
    long-to-int v3, v3

    .line 37
    add-int/2addr v0, v3

    .line 38
    mul-int/2addr v0, v2

    .line 39
    iget-wide v3, p0, Lx1/h;->f:J

    .line 40
    .line 41
    ushr-long v5, v3, v1

    .line 42
    .line 43
    xor-long/2addr v3, v5

    .line 44
    long-to-int v1, v3

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/2addr v0, v2

    .line 47
    iget-object v1, p0, Lx1/h;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    iget-object v3, p0, Lx1/h;->h:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v3, :cond_3e

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v3, v1

    .line 64
    :goto_3f
    add-int/2addr v0, v3

    .line 65
    mul-int/2addr v0, v2

    .line 66
    iget-object v3, p0, Lx1/h;->i:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v3, :cond_4a

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v3, v1

    .line 76
    :goto_4b
    add-int/2addr v0, v3

    .line 77
    mul-int/2addr v0, v2

    .line 78
    iget-object v3, p0, Lx1/h;->j:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v3, :cond_56

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v3, v1

    .line 88
    :goto_57
    add-int/2addr v0, v3

    .line 89
    mul-int/2addr v0, v2

    .line 90
    iget-object v3, p0, Lx1/h;->k:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v3, :cond_62

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v3, v1

    .line 100
    :goto_63
    add-int/2addr v0, v3

    .line 101
    mul-int/2addr v0, v2

    .line 102
    iget-object v3, p0, Lx1/h;->l:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v3, :cond_6e

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v3, v1

    .line 112
    :goto_6f
    add-int/2addr v0, v3

    .line 113
    mul-int/2addr v0, v2

    .line 114
    iget-object v3, p0, Lx1/h;->m:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v3, :cond_7a

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move v3, v1

    .line 124
    :goto_7b
    add-int/2addr v0, v3

    .line 125
    mul-int/2addr v0, v2

    .line 126
    iget-object v3, p0, Lx1/h;->v:Ljava/util/Set;

    .line 127
    .line 128
    if-eqz v3, :cond_86

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move v3, v1

    .line 136
    :goto_87
    add-int/2addr v0, v3

    .line 137
    mul-int/2addr v0, v2

    .line 138
    iget-object v3, p0, Lx1/h;->w:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v3, :cond_92

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    move v3, v1

    .line 148
    :goto_93
    add-int/2addr v0, v3

    .line 149
    mul-int/2addr v0, v2

    .line 150
    iget-object v3, p0, Lx1/h;->x:Ljava/util/Map;

    .line 151
    .line 152
    if-eqz v3, :cond_9e

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move v3, v1

    .line 160
    :goto_9f
    add-int/2addr v0, v3

    .line 161
    mul-int/2addr v0, v2

    .line 162
    iget-object v3, p0, Lx1/h;->y:Ljava/util/Map;

    .line 163
    .line 164
    if-eqz v3, :cond_aa

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    move v3, v1

    .line 172
    :goto_ab
    add-int/2addr v0, v3

    .line 173
    mul-int/2addr v0, v2

    .line 174
    iget-object v3, p0, Lx1/h;->z:Ljava/util/Map;

    .line 175
    .line 176
    if-eqz v3, :cond_b6

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    goto :goto_b7

    .line 183
    :cond_b6
    move v3, v1

    .line 184
    :goto_b7
    add-int/2addr v0, v3

    .line 185
    mul-int/2addr v0, v2

    .line 186
    iget-object v3, p0, Lx1/h;->A:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v3, :cond_c2

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    goto :goto_c3

    .line 195
    :cond_c2
    move v3, v1

    .line 196
    :goto_c3
    add-int/2addr v0, v3

    .line 197
    mul-int/2addr v0, v2

    .line 198
    iget-object v2, p0, Lx1/h;->B:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v2, :cond_cd

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    :cond_cd
    add-int/2addr v0, v1

    .line 207
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "jti"

    .line 7
    .line 8
    iget-object v2, p0, Lx1/h;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "iss"

    .line 14
    .line 15
    iget-object v2, p0, Lx1/h;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "aud"

    .line 21
    .line 22
    iget-object v2, p0, Lx1/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "nonce"

    .line 28
    .line 29
    iget-object v2, p0, Lx1/h;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "exp"

    .line 35
    .line 36
    iget-wide v2, p0, Lx1/h;->e:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "iat"

    .line 42
    .line 43
    iget-wide v2, p0, Lx1/h;->f:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lx1/h;->g:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v1, :cond_38

    .line 51
    .line 52
    const-string v2, "sub"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    :cond_38
    iget-object v1, p0, Lx1/h;->h:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_41

    .line 60
    .line 61
    const-string v2, "name"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    :cond_41
    iget-object v1, p0, Lx1/h;->i:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_4a

    .line 69
    .line 70
    const-string v2, "given_name"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    :cond_4a
    iget-object v1, p0, Lx1/h;->j:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v1, :cond_53

    .line 78
    .line 79
    const-string v2, "middle_name"

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    :cond_53
    iget-object v1, p0, Lx1/h;->k:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v1, :cond_5c

    .line 87
    .line 88
    const-string v2, "family_name"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    :cond_5c
    iget-object v1, p0, Lx1/h;->l:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_65

    .line 96
    .line 97
    const-string v2, "email"

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    :cond_65
    iget-object v1, p0, Lx1/h;->m:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_6e

    .line 105
    .line 106
    const-string v2, "picture"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    :cond_6e
    iget-object v1, p0, Lx1/h;->v:Ljava/util/Set;

    .line 112
    .line 113
    if-eqz v1, :cond_7e

    .line 114
    .line 115
    new-instance v2, Lorg/json/JSONArray;

    .line 116
    .line 117
    check-cast v1, Ljava/util/Collection;

    .line 118
    .line 119
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "user_friends"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    :cond_7e
    iget-object v1, p0, Lx1/h;->w:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_87

    .line 130
    .line 131
    const-string v2, "user_birthday"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    :cond_87
    iget-object v1, p0, Lx1/h;->x:Ljava/util/Map;

    .line 137
    .line 138
    if-eqz v1, :cond_95

    .line 139
    .line 140
    new-instance v2, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    const-string v1, "user_age_range"

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    :cond_95
    iget-object v1, p0, Lx1/h;->y:Ljava/util/Map;

    .line 151
    .line 152
    if-eqz v1, :cond_a3

    .line 153
    .line 154
    new-instance v2, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    const-string v1, "user_hometown"

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    :cond_a3
    iget-object v1, p0, Lx1/h;->z:Ljava/util/Map;

    .line 165
    .line 166
    if-eqz v1, :cond_b1

    .line 167
    .line 168
    new-instance v2, Lorg/json/JSONObject;

    .line 169
    .line 170
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    const-string v1, "user_location"

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    :cond_b1
    iget-object v1, p0, Lx1/h;->A:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v1, :cond_ba

    .line 181
    .line 182
    const-string v2, "user_gender"

    .line 183
    .line 184
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    :cond_ba
    iget-object v1, p0, Lx1/h;->B:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v1, :cond_c3

    .line 190
    .line 191
    const-string v2, "user_link"

    .line 192
    .line 193
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    :cond_c3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, "claimsJsonObject.toString()"

    .line 201
    .line 202
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lx1/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lx1/h;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lx1/h;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lx1/h;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lx1/h;->e:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lx1/h;->f:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lx1/h;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lx1/h;->h:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lx1/h;->i:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lx1/h;->j:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lx1/h;->k:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lx1/h;->l:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lx1/h;->m:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lx1/h;->v:Ljava/util/Set;

    .line 72
    .line 73
    if-nez p2, :cond_4f

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    goto :goto_59

    .line 80
    :cond_4f
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    check-cast p2, Ljava/util/Collection;

    .line 83
    .line 84
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    :goto_59
    iget-object p2, p0, Lx1/h;->w:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lx1/h;->x:Ljava/util/Map;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lx1/h;->y:Ljava/util/Map;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lx1/h;->z:Ljava/util/Map;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lx1/h;->A:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lx1/h;->B:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
