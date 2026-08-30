###### Class x1.a (x1.a)
.class public final Lx1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/Date;

.field public static final m:Ljava/util/Date;

.field public static final v:Lx1/f;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/lang/String;

.field public final f:Lx1/f;

.field public final g:Ljava/util/Date;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/Date;

.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    const-wide v1, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lx1/a;->l:Ljava/util/Date;

    .line 12
    .line 13
    new-instance v0, Ljava/util/Date;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lx1/a;->m:Ljava/util/Date;

    .line 19
    .line 20
    sget-object v0, Lx1/f;->b:Lx1/f;

    .line 21
    .line 22
    sput-object v0, Lx1/a;->v:Lx1/f;

    .line 23
    .line 24
    new-instance v0, Ln4/e;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lx1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lx1/a;->a:Ljava/util/Date;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "unmodifiableSet(HashSet(permissionsList))"

    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lx1/a;->b:Ljava/util/Set;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lx1/a;->c:Ljava/util/Set;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lx1/a;->d:Ljava/util/Set;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "token"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/a;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 39
    invoke-static {v0}, Lx1/f;->valueOf(Ljava/lang/String;)Lx1/f;

    move-result-object v0

    goto :goto_66

    .line 40
    :cond_64
    sget-object v0, Lx1/a;->v:Lx1/f;

    .line 41
    :goto_66
    iput-object v0, p0, Lx1/a;->f:Lx1/f;

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lx1/a;->g:Ljava/util/Date;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "applicationId"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/a;->h:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "userId"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/a;->i:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lx1/a;->j:Ljava/util/Date;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx1/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .registers 15

    const-string v0, "accessToken"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "applicationId"

    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "userId"

    invoke-static {v2, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2, v1}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, v2}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lx1/a;->l:Ljava/util/Date;

    if-nez p8, :cond_20

    move-object p8, v0

    :cond_20
    iput-object p8, p0, Lx1/a;->a:Ljava/util/Date;

    .line 6
    new-instance p8, Ljava/util/HashSet;

    if-eqz p4, :cond_2a

    invoke-direct {p8, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2d

    :cond_2a
    invoke-direct {p8}, Ljava/util/HashSet;-><init>()V

    :goto_2d
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    const-string p8, "unmodifiableSet(if (perm\u2026missions) else HashSet())"

    invoke-static {p8, p4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iput-object p4, p0, Lx1/a;->b:Ljava/util/Set;

    .line 8
    new-instance p4, Ljava/util/HashSet;

    if-eqz p5, :cond_40

    invoke-direct {p4, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_43

    :cond_40
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_43
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    const-string p5, "unmodifiableSet(\n       \u2026missions) else HashSet())"

    invoke-static {p5, p4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iput-object p4, p0, Lx1/a;->c:Ljava/util/Set;

    .line 11
    new-instance p4, Ljava/util/HashSet;

    if-eqz p6, :cond_56

    invoke-direct {p4, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_59

    :cond_56
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 12
    :goto_59
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    invoke-static {p5, p4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iput-object p4, p0, Lx1/a;->d:Ljava/util/Set;

    .line 14
    iput-object p1, p0, Lx1/a;->e:Ljava/lang/String;

    if-nez p7, :cond_68

    .line 15
    sget-object p7, Lx1/a;->v:Lx1/f;

    :cond_68
    if-eqz p11, :cond_88

    .line 16
    const-string p1, "instagram"

    invoke-virtual {p11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 17
    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_86

    const/4 p4, 0x4

    if-eq p1, p4, :cond_83

    const/4 p4, 0x5

    if-eq p1, p4, :cond_80

    goto :goto_88

    :cond_80
    sget-object p7, Lx1/f;->h:Lx1/f;

    goto :goto_88

    :cond_83
    sget-object p7, Lx1/f;->i:Lx1/f;

    goto :goto_88

    :cond_86
    sget-object p7, Lx1/f;->g:Lx1/f;

    .line 18
    :cond_88
    :goto_88
    iput-object p7, p0, Lx1/a;->f:Lx1/f;

    if-nez p9, :cond_8e

    .line 19
    sget-object p9, Lx1/a;->m:Ljava/util/Date;

    :cond_8e
    iput-object p9, p0, Lx1/a;->g:Ljava/util/Date;

    .line 20
    iput-object p2, p0, Lx1/a;->h:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lx1/a;->i:Ljava/lang/String;

    if-eqz p10, :cond_a1

    .line 22
    invoke-virtual {p10}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move-object p10, v0

    .line 23
    :goto_a2
    iput-object p10, p0, Lx1/a;->j:Ljava/util/Date;

    if-nez p11, :cond_a8

    .line 24
    const-string p11, "facebook"

    :cond_a8
    iput-object p11, p0, Lx1/a;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "version"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    const-string v1, "token"

    .line 13
    .line 14
    iget-object v2, p0, Lx1/a;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lx1/a;->a:Ljava/util/Date;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-string v3, "expires_at"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lorg/json/JSONArray;

    .line 31
    .line 32
    iget-object v2, p0, Lx1/a;->b:Ljava/util/Set;

    .line 33
    .line 34
    check-cast v2, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "permissions"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    new-instance v1, Lorg/json/JSONArray;

    .line 45
    .line 46
    iget-object v2, p0, Lx1/a;->c:Ljava/util/Set;

    .line 47
    .line 48
    check-cast v2, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "declined_permissions"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lorg/json/JSONArray;

    .line 59
    .line 60
    iget-object v2, p0, Lx1/a;->d:Ljava/util/Set;

    .line 61
    .line 62
    check-cast v2, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "expired_permissions"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lx1/a;->g:Ljava/util/Date;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    const-string v3, "last_refresh"

    .line 79
    .line 80
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lx1/a;->f:Lx1/f;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "source"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v1, "application_id"

    .line 95
    .line 96
    iget-object v2, p0, Lx1/a;->h:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v1, "user_id"

    .line 102
    .line 103
    iget-object v2, p0, Lx1/a;->i:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lx1/a;->j:Ljava/util/Date;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    const-string v3, "data_access_expiration_time"

    .line 115
    .line 116
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lx1/a;->k:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_7f

    .line 122
    .line 123
    const-string v2, "graph_domain"

    .line 124
    .line 125
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    :cond_7f
    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lx1/a;

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
    check-cast p1, Lx1/a;

    .line 12
    .line 13
    iget-object v1, p1, Lx1/a;->k:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lx1/a;->a:Ljava/util/Date;

    .line 16
    .line 17
    iget-object v4, p0, Lx1/a;->a:Ljava/util/Date;

    .line 18
    .line 19
    invoke-static {v4, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_7f

    .line 24
    .line 25
    iget-object v3, p0, Lx1/a;->b:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v4, p1, Lx1/a;->b:Ljava/util/Set;

    .line 28
    .line 29
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_7f

    .line 34
    .line 35
    iget-object v3, p0, Lx1/a;->c:Ljava/util/Set;

    .line 36
    .line 37
    iget-object v4, p1, Lx1/a;->c:Ljava/util/Set;

    .line 38
    .line 39
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_7f

    .line 44
    .line 45
    iget-object v3, p0, Lx1/a;->d:Ljava/util/Set;

    .line 46
    .line 47
    iget-object v4, p1, Lx1/a;->d:Ljava/util/Set;

    .line 48
    .line 49
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_7f

    .line 54
    .line 55
    iget-object v3, p0, Lx1/a;->e:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, p1, Lx1/a;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_7f

    .line 64
    .line 65
    iget-object v3, p0, Lx1/a;->f:Lx1/f;

    .line 66
    .line 67
    iget-object v4, p1, Lx1/a;->f:Lx1/f;

    .line 68
    .line 69
    if-ne v3, v4, :cond_7f

    .line 70
    .line 71
    iget-object v3, p0, Lx1/a;->g:Ljava/util/Date;

    .line 72
    .line 73
    iget-object v4, p1, Lx1/a;->g:Ljava/util/Date;

    .line 74
    .line 75
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_7f

    .line 80
    .line 81
    iget-object v3, p0, Lx1/a;->h:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v4, p1, Lx1/a;->h:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_7f

    .line 90
    .line 91
    iget-object v3, p0, Lx1/a;->i:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v4, p1, Lx1/a;->i:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_7f

    .line 100
    .line 101
    iget-object v3, p0, Lx1/a;->j:Ljava/util/Date;

    .line 102
    .line 103
    iget-object p1, p1, Lx1/a;->j:Ljava/util/Date;

    .line 104
    .line 105
    invoke-static {v3, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_7f

    .line 110
    .line 111
    iget-object p1, p0, Lx1/a;->k:Ljava/lang/String;

    .line 112
    .line 113
    if-nez p1, :cond_78

    .line 114
    .line 115
    if-nez v1, :cond_76

    .line 116
    .line 117
    move p1, v0

    .line 118
    goto :goto_7c

    .line 119
    :cond_76
    move p1, v2

    .line 120
    goto :goto_7c

    .line 121
    :cond_78
    invoke-static {p1, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    :goto_7c
    if-eqz p1, :cond_7f

    .line 126
    .line 127
    return v0

    .line 128
    :cond_7f
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lx1/a;->a:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lx1/a;->b:Ljava/util/Set;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    mul-int/2addr v2, v1

    .line 20
    iget-object v0, p0, Lx1/a;->c:Ljava/util/Set;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-object v2, p0, Lx1/a;->d:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget-object v0, p0, Lx1/a;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lx1/a;->f:Lx1/f;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, v0

    .line 49
    mul-int/2addr v2, v1

    .line 50
    iget-object v0, p0, Lx1/a;->g:Ljava/util/Date;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, v2

    .line 57
    mul-int/2addr v0, v1

    .line 58
    iget-object v2, p0, Lx1/a;->h:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v2, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lx1/a;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v2, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lx1/a;->j:Ljava/util/Date;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-int/2addr v2, v0

    .line 77
    mul-int/2addr v2, v1

    .line 78
    iget-object v0, p0, Lx1/a;->k:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v0, :cond_56

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    const/4 v0, 0x0

    .line 88
    :goto_57
    add-int/2addr v2, v0

    .line 89
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{AccessToken token:ACCESS_TOKEN_REMOVED permissions:["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lx1/r;->b:Ljava/util/HashSet;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    monitor-exit v1

    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    iget-object v2, p0, Lx1/a;->b:Ljava/util/Set;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "]}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "builder.toString()"

    .line 35
    .line 36
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
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
    iget-object p2, p0, Lx1/a;->a:Ljava/util/Date;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Lx1/a;->b:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v0, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v0, p0, Lx1/a;->c:Ljava/util/Set;

    .line 30
    .line 31
    check-cast v0, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v0, p0, Lx1/a;->d:Ljava/util/Set;

    .line 42
    .line 43
    check-cast v0, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lx1/a;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lx1/a;->f:Lx1/f;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lx1/a;->g:Ljava/util/Date;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lx1/a;->h:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lx1/a;->i:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lx1/a;->j:Ljava/util/Date;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lx1/a;->k:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
