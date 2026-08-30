###### Class q2.g0 (q2.g0)
.class public abstract Lq2/g0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:I = 0x0

.field public static b:J = -0x1L

.field public static c:J = -0x1L

.field public static d:J = -0x1L

.field public static e:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = ""

.field public static g:Ljava/lang/String; = "NoCarrier"

.field public static h:Ljava/lang/String; = ""

.field public static i:Ljava/util/Locale;


# direct methods
.method public static A(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v2, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 10
    .line 11
    const-string v4, "isGooglePlayServicesAvailable"

    .line 12
    .line 13
    invoke-static {v2, v4, v1}, Lq2/g0;->u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_2b

    .line 20
    :cond_13
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object p0, v2, v3

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-static {p0, v1, v2}, Lq2/g0;->w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v1, :cond_2b

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2b

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2b
    :goto_2b
    return v3
.end method

.method public static final B(Ljava/lang/String;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_9

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_b
    :goto_b
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static final C(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    if-eqz p0, :cond_28

    .line 2
    .line 3
    const-string v0, "http"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_26

    .line 14
    .line 15
    const-string v0, "https"

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_26

    .line 26
    .line 27
    const-string v0, "fbstaging"

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_28

    .line 38
    .line 39
    :cond_26
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_28
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static final D(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_16

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_a

    .line 23
    :cond_16
    return-object v0
.end method

.method public static final E(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    new-instance p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_38

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "key"

    .line 40
    .line 41
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "jsonObject.getString(key)"

    .line 49
    .line 50
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_39

    .line 54
    .line 55
    .line 56
    goto :goto_1a

    .line 57
    :cond_38
    return-object v0

    .line 58
    :catch_39
    new-instance p0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public static final F(Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "map"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_37

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    goto :goto_1b

    .line 56
    :cond_37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    const-string p0, "{\n      try {\n        va\u2026\n        \"\"\n      }\n    }"

    .line 61
    .line 62
    invoke-static {p0, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public static final G(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_70

    .line 11
    .line 12
    if-eqz p0, :cond_68

    .line 13
    .line 14
    const-string v1, "&"

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x6

    .line 22
    invoke-static {p0, v1, v2, v3}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/Collection;

    .line 27
    .line 28
    new-array v1, v2, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, [Ljava/lang/String;

    .line 35
    .line 36
    array-length v1, p0

    .line 37
    move v4, v2

    .line 38
    :goto_25
    if-ge v4, v1, :cond_70

    .line 39
    .line 40
    aget-object v5, p0, v4

    .line 41
    .line 42
    const-string v6, "="

    .line 43
    .line 44
    filled-new-array {v6}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v5, v6, v2, v3}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/util/Collection;

    .line 53
    .line 54
    new-array v6, v2, [Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, [Ljava/lang/String;

    .line 61
    .line 62
    :try_start_3d
    array-length v6, v5
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_3e} :catch_63

    .line 63
    const/4 v7, 0x2

    .line 64
    const/4 v8, 0x1

    .line 65
    const-string v9, "UTF-8"

    .line 66
    .line 67
    if-ne v6, v7, :cond_54

    .line 68
    .line 69
    :try_start_44
    aget-object v6, v5, v2

    .line 70
    .line 71
    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    aget-object v5, v5, v8

    .line 76
    .line 77
    invoke-static {v5, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_65

    .line 85
    :cond_54
    array-length v6, v5

    .line 86
    if-ne v6, v8, :cond_65

    .line 87
    .line 88
    aget-object v5, v5, v2

    .line 89
    .line 90
    invoke-static {v5, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, ""

    .line 95
    .line 96
    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_62} :catch_63

    .line 97
    .line 98
    .line 99
    goto :goto_65

    .line 100
    :catch_63
    sget-object v5, Lx1/r;->a:Lx1/r;

    .line 101
    .line 102
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_25

    .line 105
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v0, "Required value was null."

    .line 108
    .line 109
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_70
    return-object v0
.end method

.method public static final H(Landroid/os/Bundle;Lorg/json/JSONArray;)V
    .registers 4

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "media"

    .line 7
    .line 8
    instance-of v1, p1, [Z

    .line 9
    .line 10
    if-eqz v1, :cond_11

    .line 11
    .line 12
    check-cast p1, [Z

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_36

    .line 18
    :cond_11
    instance-of v1, p1, [D

    .line 19
    .line 20
    if-eqz v1, :cond_1b

    .line 21
    .line 22
    check-cast p1, [D

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 25
    .line 26
    .line 27
    goto :goto_36

    .line 28
    :cond_1b
    instance-of v1, p1, [I

    .line 29
    .line 30
    if-eqz v1, :cond_25

    .line 31
    .line 32
    check-cast p1, [I

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 35
    .line 36
    .line 37
    goto :goto_36

    .line 38
    :cond_25
    instance-of v1, p1, [J

    .line 39
    .line 40
    if-eqz v1, :cond_2f

    .line 41
    .line 42
    check-cast p1, [J

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 45
    .line 46
    .line 47
    goto :goto_36

    .line 48
    :cond_2f
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    return-void
.end method

.method public static final I(Landroid/os/Parcel;)Ljava/util/HashMap;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v0, :cond_22

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v3, :cond_1f

    .line 26
    .line 27
    if-eqz v4, :cond_1f

    .line 28
    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_e

    .line 35
    :cond_22
    return-object v1
.end method

.method public static final J(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_37

    .line 5
    .line 6
    .line 7
    :try_start_6
    new-instance p0, Ljava/io/InputStreamReader;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    .line 10
    .line 11
    .line 12
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x800

    .line 18
    .line 19
    new-array v2, v2, [C

    .line 20
    .line 21
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_22

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_14

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_3b

    .line 35
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "{\n      bufferedInputStr\u2026gBuilder.toString()\n    }"

    .line 40
    .line 41
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_20

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    move-object v5, v0

    .line 53
    move-object v0, p0

    .line 54
    move-object p0, v5

    .line 55
    goto :goto_3b

    .line 56
    :catchall_37
    move-exception p0

    .line 57
    move-object v1, v0

    .line 58
    move-object v0, p0

    .line 59
    move-object p0, v1

    .line 60
    :goto_3b
    invoke-static {v1}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public static final K(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    .line 6
    .line 7
    .line 8
    :catch_7
    return-void
.end method

.method public static final L(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 13

    .line 1
    const-string v0, "mounted"

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "a2"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    sget-wide v2, Lq2/g0;->b:J

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_23

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    sget-wide v6, Lq2/g0;->b:J

    .line 27
    .line 28
    sub-long/2addr v4, v6

    .line 29
    const-wide/32 v6, 0x1b7740

    .line 30
    .line 31
    .line 32
    cmp-long v2, v4, v6

    .line 33
    .line 34
    if-ltz v2, :cond_cc

    .line 35
    .line 36
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    sput-wide v4, Lq2/g0;->b:J

    .line 41
    .line 42
    :try_start_29
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v4, Ljava/util/Date;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v2, v4, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "tz.getDisplayName(tz.inD\u2026(Date()), TimeZone.SHORT)"

    .line 60
    .line 61
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sput-object v4, Lq2/g0;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "tz.id"

    .line 71
    .line 72
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sput-object v2, Lq2/g0;->f:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/AssertionError; {:try_start_29 .. :try_end_4c} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4c} :catch_4c

    .line 76
    .line 77
    :catch_4c
    sget-object v2, Lq2/g0;->g:Ljava/lang/String;

    .line 78
    .line 79
    const-string v4, "NoCarrier"

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_6e

    .line 86
    .line 87
    :try_start_56
    const-string v2, "phone"

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v4, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 94
    .line 95
    invoke-static {v4, v2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v4, "telephonyManager.networkOperatorName"

    .line 105
    .line 106
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sput-object v2, Lq2/g0;->g:Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_6e

    .line 110
    .line 111
    :catch_6e
    :cond_6e
    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    .line 112
    .line 113
    :try_start_70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_94

    .line 122
    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v6, Landroid/os/StatFs;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v6, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    int-to-long v7, v2

    .line 141
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    int-to-long v9, v2

    .line 146
    mul-long/2addr v7, v9

    .line 147
    sput-wide v7, Lq2/g0;->c:J

    .line 148
    .line 149
    :cond_94
    sget-wide v6, Lq2/g0;->c:J

    .line 150
    .line 151
    long-to-double v6, v6

    .line 152
    div-double/2addr v6, v4

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    sput-wide v6, Lq2/g0;->c:J
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9e} :catch_9e

    .line 158
    .line 159
    :catch_9e
    :try_start_9e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_c2

    .line 168
    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v2, Landroid/os/StatFs;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    int-to-long v6, v0

    .line 187
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    int-to-long v8, v0

    .line 192
    mul-long/2addr v6, v8

    .line 193
    sput-wide v6, Lq2/g0;->d:J

    .line 194
    .line 195
    :cond_c2
    sget-wide v6, Lq2/g0;->d:J

    .line 196
    .line 197
    long-to-double v6, v6

    .line 198
    div-double/2addr v6, v4

    .line 199
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 200
    .line 201
    .line 202
    move-result-wide v4

    .line 203
    sput-wide v4, Lq2/g0;->d:J
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_cc} :catch_cc

    .line 204
    .line 205
    :catch_cc
    :cond_cc
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/4 v2, -0x1

    .line 210
    :try_start_d1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    if-nez v4, :cond_dc

    .line 219
    .line 220
    return-void

    .line 221
    :cond_dc
    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 222
    .line 223
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 224
    .line 225
    sput-object v4, Lq2/g0;->h:Ljava/lang/String;
    :try_end_e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_e2} :catch_e2

    .line 226
    .line 227
    :catch_e2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 231
    .line 232
    .line 233
    sget-object v0, Lq2/g0;->h:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    .line 237
    .line 238
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 241
    .line 242
    .line 243
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    .line 247
    .line 248
    :try_start_f7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_101} :catch_102

    .line 257
    .line 258
    goto :goto_106

    .line 259
    :catch_102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :goto_106
    sput-object v0, Lq2/g0;->i:Ljava/util/Locale;

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    sget-object v2, Lq2/g0;->i:Ljava/util/Locale;

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    if-eqz v2, :cond_117

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    goto :goto_118

    .line 280
    :cond_117
    move-object v2, v4

    .line 281
    :goto_118
    const-string v5, ""

    .line 282
    .line 283
    if-nez v2, :cond_11d

    .line 284
    .line 285
    move-object v2, v5

    .line 286
    :cond_11d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const/16 v2, 0x5f

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    sget-object v2, Lq2/g0;->i:Ljava/util/Locale;

    .line 295
    .line 296
    if-eqz v2, :cond_12e

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    goto :goto_12f

    .line 303
    :cond_12e
    move-object v2, v4

    .line 304
    :goto_12f
    if-nez v2, :cond_132

    .line 305
    .line 306
    goto :goto_133

    .line 307
    :cond_132
    move-object v5, v2

    .line 308
    :goto_133
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 316
    .line 317
    .line 318
    sget-object v0, Lq2/g0;->e:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 321
    .line 322
    .line 323
    sget-object v0, Lq2/g0;->g:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 326
    .line 327
    .line 328
    const-wide/16 v5, 0x0

    .line 329
    .line 330
    :try_start_149
    const-string v0, "display"

    .line 331
    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    instance-of v0, p0, Landroid/hardware/display/DisplayManager;

    .line 337
    .line 338
    if-eqz v0, :cond_156

    .line 339
    .line 340
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 341
    .line 342
    goto :goto_157

    .line 343
    :cond_156
    move-object p0, v4

    .line 344
    :goto_157
    if-eqz p0, :cond_15d

    .line 345
    .line 346
    invoke-virtual {p0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    :cond_15d
    if-eqz v4, :cond_171

    .line 351
    .line 352
    new-instance p0, Landroid/util/DisplayMetrics;

    .line 353
    .line 354
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 358
    .line 359
    .line 360
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_169} :catch_171

    .line 361
    .line 362
    :try_start_169
    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 363
    .line 364
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16d} :catch_16e

    .line 365
    .line 366
    float-to-double v5, p0

    .line 367
    :catch_16e
    move p0, v3

    .line 368
    move v3, v0

    .line 369
    goto :goto_172

    .line 370
    :catch_171
    :cond_171
    move p0, v3

    .line 371
    :goto_172
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 375
    .line 376
    .line 377
    new-instance p0, Ljava/text/DecimalFormat;

    .line 378
    .line 379
    const-string v0, "#.##"

    .line 380
    .line 381
    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 389
    .line 390
    .line 391
    sget p0, Lq2/g0;->a:I

    .line 392
    .line 393
    if-lez p0, :cond_18b

    .line 394
    .line 395
    goto :goto_1b6

    .line 396
    :cond_18b
    :try_start_18b
    new-instance p0, Ljava/io/File;

    .line 397
    .line 398
    const-string v0, "/sys/devices/system/cpu/"

    .line 399
    .line 400
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    new-instance v0, Lm1/g;

    .line 404
    .line 405
    const/4 v2, 0x1

    .line 406
    invoke-direct {v0, v2}, Lm1/g;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    if-eqz p0, :cond_1a1

    .line 414
    .line 415
    array-length p0, p0

    .line 416
    sput p0, Lq2/g0;->a:I
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1a1} :catch_1a1

    .line 417
    .line 418
    :catch_1a1
    :cond_1a1
    sget p0, Lq2/g0;->a:I

    .line 419
    .line 420
    if-gtz p0, :cond_1b4

    .line 421
    .line 422
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 427
    .line 428
    .line 429
    move-result p0

    .line 430
    const/4 v0, 0x1

    .line 431
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 432
    .line 433
    .line 434
    move-result p0

    .line 435
    sput p0, Lq2/g0;->a:I

    .line 436
    .line 437
    :cond_1b4
    sget p0, Lq2/g0;->a:I

    .line 438
    .line 439
    :goto_1b6
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 440
    .line 441
    .line 442
    sget-wide v2, Lq2/g0;->c:J

    .line 443
    .line 444
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 445
    .line 446
    .line 447
    sget-wide v2, Lq2/g0;->d:J

    .line 448
    .line 449
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 450
    .line 451
    .line 452
    sget-object p0, Lq2/g0;->f:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 455
    .line 456
    .line 457
    const-string p0, "extinfo"

    .line 458
    .line 459
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    .line 465
    .line 466
    return-void
.end method

.method public static final M(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    const-string v1, "SHA-256"

    .line 6
    .line 7
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 14
    .line 15
    invoke-static {v2, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :try_start_11
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_15} :catch_52

    .line 22
    const-string v1, "hash"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "digest"

    .line 40
    .line 41
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    array-length v1, p0

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_2d
    if-ge v2, v1, :cond_48

    .line 47
    .line 48
    aget-byte v3, p0, v2

    .line 49
    .line 50
    shr-int/lit8 v4, v3, 0x4

    .line 51
    .line 52
    and-int/lit8 v4, v4, 0xf

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    and-int/lit8 v3, v3, 0xf

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_2d

    .line 73
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v0, "builder.toString()"

    .line 78
    .line 79
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :catch_52
    return-object v0
.end method

.method public static final N(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 4

    .line 1
    if-nez p1, :cond_7

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_35

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_16

    .line 54
    :cond_35
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 6

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_34

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_34

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v2, v1, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_1a

    .line 46
    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    goto :goto_1a

    .line 53
    :cond_34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "builder.build()"

    .line 58
    .line 59
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    .line 1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const-string v1, ";"

    .line 20
    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x6

    .line 27
    invoke-static {v0, v1, v2, v3}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Collection;

    .line 32
    .line 33
    new-array v1, v2, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, [Ljava/lang/String;

    .line 40
    .line 41
    array-length v1, v0

    .line 42
    move v4, v2

    .line 43
    :goto_2a
    if-ge v4, v1, :cond_95

    .line 44
    .line 45
    aget-object v5, v0, v4

    .line 46
    .line 47
    const-string v6, "="

    .line 48
    .line 49
    filled-new-array {v6}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v5, v6, v2, v3}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/util/Collection;

    .line 58
    .line 59
    new-array v6, v2, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, [Ljava/lang/String;

    .line 66
    .line 67
    array-length v6, v5

    .line 68
    if-lez v6, :cond_92

    .line 69
    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    aget-object v5, v5, v2

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const/4 v8, 0x1

    .line 82
    sub-int/2addr v7, v8

    .line 83
    move v9, v2

    .line 84
    move v10, v9

    .line 85
    :goto_54
    if-gt v9, v7, :cond_79

    .line 86
    .line 87
    if-nez v10, :cond_5a

    .line 88
    .line 89
    move v11, v9

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move v11, v7

    .line 92
    :goto_5b
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const/16 v12, 0x20

    .line 97
    .line 98
    invoke-static {v11, v12}, Ld7/g;->g(II)I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-gtz v11, :cond_69

    .line 103
    .line 104
    move v11, v8

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v11, v2

    .line 107
    :goto_6a
    if-nez v10, :cond_73

    .line 108
    .line 109
    if-nez v11, :cond_70

    .line 110
    .line 111
    move v10, v8

    .line 112
    goto :goto_54

    .line 113
    :cond_70
    add-int/lit8 v9, v9, 0x1

    .line 114
    .line 115
    goto :goto_54

    .line 116
    :cond_73
    if-nez v11, :cond_76

    .line 117
    .line 118
    goto :goto_79

    .line 119
    :cond_76
    add-int/lit8 v7, v7, -0x1

    .line 120
    .line 121
    goto :goto_54

    .line 122
    :cond_79
    :goto_79
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v5, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    .line 136
    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {p0, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_92
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_2a

    .line 150
    :cond_95
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public static final c(Landroid/content/Context;)V
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "facebook.com"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lq2/g0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ".facebook.com"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lq2/g0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "https://facebook.com"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lq2/g0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "https://.facebook.com"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lq2/g0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    .line 19
    .line 20
    .line 21
    :catch_14
    return-void
.end method

.method public static final d(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 4
    .line 5
    .line 6
    :catch_5
    :cond_5
    return-void
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    :cond_8
    return-object p0
.end method

.method public static final f(Lorg/json/JSONArray;)Ljava/util/HashSet;
    .registers 6

    .line 1
    if-eqz p0, :cond_25

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_25

    .line 10
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v1, :cond_24

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "jsonArray.getString(i)"

    .line 27
    .line 28
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_13

    .line 37
    :cond_24
    return-object v0

    .line 38
    :cond_25
    :goto_25
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static final g(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_1b

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "jsonArray.getString(i)"

    .line 18
    .line 19
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1c

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_a

    .line 28
    :cond_1b
    return-object v0

    .line 29
    :catch_1c
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public static final h(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 8

    .line 1
    const-string v0, "jsonObject"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_3a

    .line 18
    :cond_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_16
    if-ge v3, v2, :cond_3a

    .line 24
    .line 25
    :try_start_18
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "keys.getString(i)"

    .line 30
    .line 31
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    instance-of v6, v5, Lorg/json/JSONObject;

    .line 39
    .line 40
    if-eqz v6, :cond_2f

    .line 41
    .line 42
    check-cast v5, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-static {v5}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_2f
    const-string v6, "value"

    .line 49
    .line 50
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_37} :catch_37

    .line 54
    .line 55
    .line 56
    :catch_37
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_16

    .line 59
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static final i(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_24

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_9

    .line 27
    .line 28
    const-string v4, "key"

    .line 29
    .line 30
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_9

    .line 37
    :cond_24
    return-object v0
.end method

.method public static final j(Ljava/io/InputStream;Ljava/io/FilterOutputStream;)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x2000

    .line 8
    .line 9
    :try_start_8
    new-array v0, v0, [B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    if-eq v4, v5, :cond_1b

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    .line 21
    .line 22
    .line 23
    add-int/2addr v3, v4

    .line 24
    goto :goto_c

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    move-object v0, v1

    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 29
    .line 30
    .line 31
    if-eqz p0, :cond_23

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 34
    .line 35
    .line 36
    :cond_23
    return v3

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    :goto_25
    if-eqz v0, :cond_2a

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 41
    .line 42
    .line 43
    :cond_2a
    if-eqz p0, :cond_2f

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 46
    .line 47
    .line 48
    :cond_2f
    throw p1
.end method

.method public static final k(Ljava/net/HttpURLConnection;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4
    .line 5
    .line 6
    :cond_5
    return-void
.end method

.method public static final l(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p0, v0, :cond_e

    .line 11
    .line 12
    const-string p0, "unknown"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 2
    .line 3
    invoke-static {}, Lq2/g;->k()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lx1/r;->e:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 16
    .line 17
    if-nez v1, :cond_19

    .line 18
    .line 19
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "context.getString(stringId)"

    .line 31
    .line 32
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_23
    const-string p0, ""

    .line 37
    .line 38
    return-object p0
.end method

.method public static final n(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 8

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_3b

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    instance-of p1, p0, Ljava/lang/Long;

    .line 9
    .line 10
    if-eqz p1, :cond_12

    .line 11
    .line 12
    check-cast p0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    goto :goto_1c

    .line 19
    :cond_12
    instance-of p1, p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_3b

    .line 22
    .line 23
    :try_start_16
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_3b

    .line 29
    :goto_1c
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    cmp-long v0, p0, v0

    .line 32
    .line 33
    if-nez v0, :cond_2d

    .line 34
    .line 35
    new-instance p0, Ljava/util/Date;

    .line 36
    .line 37
    const-wide p1, 0x7fffffffffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2d
    new-instance v0, Ljava/util/Date;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x3e8

    .line 53
    .line 54
    mul-long/2addr p0, v3

    .line 55
    add-long/2addr p0, v1

    .line 56
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catch_3b
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public static final o()Lorg/json/JSONObject;
    .registers 5

    .line 1
    const-class v0, Lq2/g0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "com.facebook.sdk.DataProcessingOptions"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "data_processing_options"

    .line 23
    .line 24
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_23

    .line 28
    if-eqz v1, :cond_25

    .line 29
    .line 30
    :try_start_1d
    new-instance v3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_22} :catch_25
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    goto :goto_26

    .line 38
    :catch_25
    :cond_25
    return-object v2

    .line 39
    :goto_26
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object v2
.end method

.method public static final p()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Lx1/r;->q:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "m.%s"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static final q(Ljava/lang/String;Lq2/f0;)V
    .registers 10

    .line 1
    const-string v0, "accessToken"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lq2/c0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    sget-object v0, Lq2/c0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    if-eqz v0, :cond_15

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lq2/f0;->a(Lorg/json/JSONObject;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Lq2/e0;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lq2/e0;-><init>(Ljava/lang/String;Lq2/f0;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lx1/a;->l:Ljava/util/Date;

    .line 33
    .line 34
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2c

    .line 39
    .line 40
    iget-object v1, v1, Lx1/a;->k:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_2c

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const-string v1, "facebook"

    .line 46
    .line 47
    :goto_2e
    const-string v2, "instagram"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_39

    .line 54
    .line 55
    const-string v1, "id,name,profile_picture"

    .line 56
    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const-string v1, "id,name,first_name,middle_name,last_name"

    .line 59
    .line 60
    :goto_3b
    const-string v2, "fields"

    .line 61
    .line 62
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "access_token"

    .line 66
    .line 67
    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v7, La2/b;

    .line 71
    .line 72
    const/4 p0, 0x2

    .line 73
    invoke-direct {v7, p0}, La2/b;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lx1/z;

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    const-string v4, "me"

    .line 82
    .line 83
    invoke-direct/range {v2 .. v7}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, v2, Lx1/z;->d:Landroid/os/Bundle;

    .line 87
    .line 88
    sget-object p0, Lx1/d0;->a:Lx1/d0;

    .line 89
    .line 90
    iput-object p0, v2, Lx1/z;->h:Lx1/d0;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Lx1/z;->j(Lx1/v;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lx1/z;->d()Lx1/a0;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static final r()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Lx1/r;->p:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "m.%s"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static s(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lq2/d;->a()Lq2/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_f

    .line 11
    .line 12
    invoke-static {}, Lq2/d;->a()Lq2/d;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Lq2/d;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lq2/d;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const-class p0, Lq2/d;

    .line 22
    .line 23
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 28
    .line 29
    goto :goto_45

    .line 30
    :cond_1d
    :try_start_1d
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_41

    .line 34
    if-eqz v1, :cond_24

    .line 35
    .line 36
    goto :goto_45

    .line 37
    :cond_24
    :try_start_24
    iget-object v1, v0, Lq2/d;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v1}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "getInstance(applicationContext)"

    .line 46
    .line 47
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v3, "com.parse.bolts.measurement_event"

    .line 53
    .line 54
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Ly0/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3c

    .line 58
    .line 59
    .line 60
    goto :goto_45

    .line 61
    :catchall_3c
    move-exception v1

    .line 62
    :try_start_3d
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception v1

    .line 67
    invoke-static {v1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_45
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4c

    .line 75
    .line 76
    goto :goto_53

    .line 77
    :cond_4c
    :try_start_4c
    sput-object v0, Lq2/d;->c:Lq2/d;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_4f

    .line 78
    .line 79
    goto :goto_53

    .line 80
    :catchall_4f
    move-exception v0

    .line 81
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_53
    invoke-static {}, Lq2/d;->a()Lq2/d;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static final varargs t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    .line 1
    const-string v0, "parameterTypes"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    array-length v0, p2

    .line 7
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, [Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_10} :catch_11

    .line 17
    return-object p0

    .line 18
    :catch_11
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static final varargs u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p2

    .line 6
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Lq2/g0;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 16
    return-object p0

    .line 17
    :catch_10
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_15

    .line 6
    .line 7
    instance-of p1, p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p1, :cond_15

    .line 10
    .line 11
    new-instance p1, Lorg/json/JSONTokener;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_15
    if-eqz p0, :cond_32

    .line 23
    .line 24
    instance-of p1, p0, Lorg/json/JSONObject;

    .line 25
    .line 26
    if-nez p1, :cond_32

    .line 27
    .line 28
    instance-of p1, p0, Lorg/json/JSONArray;

    .line 29
    .line 30
    if-nez p1, :cond_32

    .line 31
    .line 32
    if-eqz p2, :cond_2a

    .line 33
    .line 34
    new-instance p1, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2a
    new-instance p0, Lx1/l;

    .line 44
    .line 45
    const-string p1, "Got an unexpected non-JSON object."

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_32
    return-object p0
.end method

.method public static final varargs w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    :try_start_0
    array-length v0, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    .line 10
    return-object p0

    .line 11
    :catch_a
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public static final x()Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v2, "android.intent.action.VIEW"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "fb%s://applinks"

    .line 10
    .line 11
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x1

    .line 16
    new-array v5, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object v3, v5, v0

    .line 19
    .line 20
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/high16 v5, 0x10000

    .line 48
    .line 49
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "packageManager.queryInte\u2026nager.MATCH_DEFAULT_ONLY)"

    .line 54
    .line 55
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_54

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 73
    .line 74
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    .line 76
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v2, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_54

    .line 82
    if-eqz v3, :cond_3d

    .line 83
    .line 84
    return v4

    .line 85
    :catch_54
    :cond_54
    return v0
.end method

.method public static final y(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1b

    .line 9
    .line 10
    if-lt v0, v1, :cond_16

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "android.hardware.type.pc"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p0, :cond_36

    .line 26
    .line 27
    const-string v0, "DEVICE"

    .line 28
    .line 29
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v0, ".+_cheets|cheets_.+"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "compile(...)"

    .line 39
    .line 40
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_36

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static final z()Z
    .registers 7

    .line 1
    const-class v0, Lq2/g0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_3f

    .line 11
    :cond_a
    :try_start_a
    invoke-static {}, Lq2/g0;->o()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_3d

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_3f

    .line 18
    :cond_11
    :try_start_11
    const-string v3, "data_processing_options"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    move v4, v2

    .line 29
    :goto_1c
    if-ge v4, v3, :cond_3f

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "options.getString(i)"

    .line 36
    .line 37
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "this as java.lang.String).toLowerCase()"

    .line 45
    .line 46
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v6, "ldu"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_3f
    .catchall {:try_start_11 .. :try_end_36} :catchall_3d

    .line 55
    if-eqz v5, :cond_3a

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    return v0

    .line 59
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_1c

    .line 62
    :catchall_3d
    move-exception v1

    .line 63
    goto :goto_40

    .line 64
    :catch_3f
    :cond_3f
    :goto_3f
    return v2

    .line 65
    :goto_40
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v2
.end method

###### Class q2.e0 (q2.e0)
.class public final synthetic Lq2/e0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:Lq2/f0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lq2/f0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lq2/e0;->a:Lq2/f0;

    .line 5
    .line 6
    iput-object p1, p0, Lq2/e0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 5

    .line 1
    const-string v0, "$accessToken"

    .line 2
    .line 3
    iget-object v1, p0, Lq2/e0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 9
    .line 10
    iget-object p1, p1, Lx1/c0;->c:Lx1/o;

    .line 11
    .line 12
    iget-object v2, p0, Lq2/e0;->a:Lq2/f0;

    .line 13
    .line 14
    if-eqz p1, :cond_15

    .line 15
    .line 16
    iget-object p1, p1, Lx1/o;->i:Lx1/l;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Lq2/f0;->f(Lx1/l;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    if-eqz v0, :cond_20

    .line 23
    .line 24
    sget-object p1, Lq2/c0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v0}, Lq2/f0;->a(Lorg/json/JSONObject;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "Required value was null."

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
