###### Class x1.z (x1.z)
.class public final Lx1/z;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/util/regex/Pattern;

.field public static volatile l:Ljava/lang/String;


# instance fields
.field public final a:Lx1/a;

.field public final b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Lx1/v;

.field public h:Lx1/d0;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "this as java.lang.String).toCharArray()"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/security/SecureRandom;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v3, 0xb

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/lit8 v3, v3, 0x1e

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_1e
    if-ge v4, v3, :cond_2d

    .line 32
    .line 33
    array-length v5, v0

    .line 34
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aget-char v5, v0, v5

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_1e

    .line 46
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "buffer.toString()"

    .line 51
    .line 52
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lx1/z;->k:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/z;->a:Lx1/a;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/z;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lx1/z;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p5}, Lx1/z;->j(Lx1/v;)V

    .line 12
    .line 13
    .line 14
    if-nez p4, :cond_11

    .line 15
    .line 16
    sget-object p4, Lx1/d0;->a:Lx1/d0;

    .line 17
    .line 18
    :cond_11
    iput-object p4, p0, Lx1/z;->h:Lx1/d0;

    .line 19
    .line 20
    if-eqz p3, :cond_1d

    .line 21
    .line 22
    new-instance p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 28
    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    new-instance p1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 36
    .line 37
    :goto_24
    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lx1/z;->f:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lq2/g;->k()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lx1/r;->f:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_2e

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_2c

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lez v2, :cond_2c

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x7c

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    return-object v0

    .line 47
    :cond_2e
    new-instance v0, Lx1/l;

    .line 48
    .line 49
    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    iget-object v1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {p0}, Lx1/z;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_12

    .line 11
    .line 12
    const-string v4, "|"

    .line 13
    .line 14
    invoke-static {v2, v4}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v4, v3

    .line 20
    :goto_13
    if-eqz v2, :cond_26

    .line 21
    .line 22
    const-string v5, "IG"

    .line 23
    .line 24
    invoke-static {v2, v5, v3}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_26

    .line 29
    .line 30
    if-nez v4, :cond_26

    .line 31
    .line 32
    invoke-virtual {p0}, Lx1/z;->i()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_26

    .line 37
    .line 38
    goto :goto_3d

    .line 39
    :cond_26
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "instagram.com"

    .line 44
    .line 45
    invoke-static {v2, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-nez v2, :cond_34

    .line 51
    .line 52
    goto :goto_39

    .line 53
    :cond_34
    invoke-virtual {p0}, Lx1/z;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    xor-int/2addr v3, v2

    .line 58
    :goto_39
    if-nez v3, :cond_45

    .line 59
    .line 60
    if-nez v4, :cond_45

    .line 61
    .line 62
    :goto_3d
    invoke-static {}, Lx1/z;->f()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4e

    .line 70
    :cond_45
    invoke-virtual {p0}, Lx1/z;->e()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_4e

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_73

    .line 84
    .line 85
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 86
    .line 87
    invoke-static {}, Lq2/g;->k()V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lx1/r;->f:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v0, :cond_6b

    .line 93
    .line 94
    invoke-static {v0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_73

    .line 99
    .line 100
    const-string v0, "z"

    .line 101
    .line 102
    const-string v2, "Starting with v13 of the SDK, a client token must be embedded in your client code before making Graph API calls. Visit https://developers.facebook.com/docs/android/getting-started#client-token to learn how to implement this change."

    .line 103
    .line 104
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_73

    .line 108
    :cond_6b
    new-instance v0, Lx1/l;

    .line 109
    .line 110
    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_73
    :goto_73
    const-string v0, "sdk"

    .line 117
    .line 118
    const-string v2, "android"

    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v0, "format"

    .line 124
    .line 125
    const-string v2, "json"

    .line 126
    .line 127
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v0, Lx1/r;->b:Ljava/util/HashSet;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    monitor-exit v0

    .line 134
    sget-object v0, Lx1/e0;->f:Lx1/e0;

    .line 135
    .line 136
    invoke-static {v0}, Lx1/r;->h(Lx1/e0;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 1
    if-nez p2, :cond_9

    .line 2
    .line 3
    iget-object p2, p0, Lx1/z;->h:Lx1/d0;

    .line 4
    .line 5
    sget-object v0, Lx1/d0;->b:Lx1/d0;

    .line 6
    .line 7
    if-ne p2, v0, :cond_9

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6a

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_31

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    :cond_31
    invoke-static {v1}, Lx1/w;->t(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_43

    .line 55
    .line 56
    invoke-static {v1}, Lx1/w;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    .line 66
    .line 67
    goto :goto_1b

    .line 68
    :cond_43
    iget-object v0, p0, Lx1/z;->h:Lx1/d0;

    .line 69
    .line 70
    sget-object v2, Lx1/d0;->a:Lx1/d0;

    .line 71
    .line 72
    if-ne v0, v2, :cond_4a

    .line 73
    .line 74
    goto :goto_1b

    .line 75
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x1

    .line 88
    new-array v2, v1, [Ljava/lang/Object;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    aput-object v0, v2, v3

    .line 92
    .line 93
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "Unsupported parameter type for GET request: %s"

    .line 98
    .line 99
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_6a
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "uriBuilder.toString()"

    .line 112
    .line 113
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object p1
.end method

.method public final c()Lx1/c0;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lx1/z;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    invoke-static {v1}, Ls6/f;->r([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    new-instance v3, Lx1/b0;

    .line 14
    .line 15
    invoke-direct {v3, v1}, Lx1/b0;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lx1/w;->l(Lx1/b0;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v3, v0, :cond_22

    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lx1/c0;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_22
    new-instance v0, Lx1/l;

    .line 36
    .line 37
    const-string v1, "invalid state: expected a single response"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final d()Lx1/a0;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lx1/z;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    invoke-static {v0}, Ls6/f;->r([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    new-instance v2, Lx1/b0;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lx1/b0;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lq2/g;->i(Lx1/b0;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lx1/a0;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Lx1/a0;-><init>(Lx1/b0;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-array v1, v1, [Ljava/lang/Void;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    iget-object v1, p0, Lx1/z;->a:Lx1/a;

    .line 4
    .line 5
    if-eqz v1, :cond_16

    .line 6
    .line 7
    iget-object v2, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_23

    .line 14
    .line 15
    iget-object v0, v1, Lx1/a;->e:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lq2/z;->c:Lo3/a;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lo3/a;->o(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_16
    iget-object v1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_23

    .line 30
    .line 31
    invoke-static {}, Lx1/z;->f()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    iget-object v1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lx1/z;->h:Lx1/d0;

    .line 2
    .line 3
    sget-object v1, Lx1/d0;->b:Lx1/d0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_27

    .line 8
    .line 9
    iget-object v0, p0, Lx1/z;->b:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_27

    .line 12
    .line 13
    const-string v1, "/videos"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_27

    .line 20
    .line 21
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-array v1, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v0, v1, v3

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "https://graph-video.%s"

    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_3e

    .line 40
    :cond_27
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "subdomain"

    .line 45
    .line 46
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-array v1, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v0, v1, v3

    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "https://graph.%s"

    .line 58
    .line 59
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_3e
    invoke-virtual {p0, v0}, Lx1/z;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lx1/z;->a()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v3}, Lx1/z;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "instagram.com"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_f

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    invoke-virtual {p0}, Lx1/z;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    xor-int/2addr v0, v1

    .line 21
    :goto_14
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_27

    .line 23
    .line 24
    new-array p1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    sget-object v0, Lx1/r;->q:Ljava/lang/String;

    .line 27
    .line 28
    aput-object v0, p1, v2

    .line 29
    .line 30
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "https://graph.%s"

    .line 35
    .line 36
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_27
    sget-object v0, Lx1/z;->k:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    iget-object v3, p0, Lx1/z;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v4, 0x2

    .line 53
    const-string v5, "%s/%s"

    .line 54
    .line 55
    if-eqz v0, :cond_39

    .line 56
    .line 57
    goto :goto_49

    .line 58
    :cond_39
    iget-object v0, p0, Lx1/z;->f:Ljava/lang/String;

    .line 59
    .line 60
    new-array v6, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v0, v6, v2

    .line 63
    .line 64
    aput-object v3, v6, v1

    .line 65
    .line 66
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :goto_49
    new-array v0, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p1, v0, v2

    .line 77
    .line 78
    aput-object v3, v0, v1

    .line 79
    .line 80
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final i()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lx1/z;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_2f

    .line 6
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "^/?"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/?.*"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-boolean v2, p0, Lx1/z;->i:Z

    .line 30
    .line 31
    if-nez v2, :cond_31

    .line 32
    .line 33
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_31

    .line 38
    .line 39
    const-string v1, "^/?app/?.*"

    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2f

    .line 46
    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 49
    return v0

    .line 50
    :cond_31
    :goto_31
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method public final j(Lx1/v;)V
    .registers 3

    .line 1
    sget-object v0, Lx1/r;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    .line 5
    sget-object v0, Lx1/e0;->f:Lx1/e0;

    .line 6
    .line 7
    invoke-static {v0}, Lx1/r;->h(Lx1/e0;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lx1/z;->g:Lx1/v;

    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{Request:  accessToken: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx1/z;->a:Lx1/a;

    .line 9
    .line 10
    if-nez v1, :cond_d

    .line 11
    .line 12
    const-string v1, "null"

    .line 13
    .line 14
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", graphPath: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lx1/z;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", graphObject: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lx1/z;->c:Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", httpMethod: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lx1/z;->h:Lx1/d0;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", parameters: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "}"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "StringBuilder()\n        \u2026(\"}\")\n        .toString()"

    .line 67
    .line 68
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method
