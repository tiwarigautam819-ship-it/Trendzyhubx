###### Class i2.n (i2.n)
.class public abstract Li2/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static final c:J

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v0, "fb_currency"

    .line 2
    .line 3
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Li2/n;->a:Ljava/util/List;

    .line 8
    .line 9
    const-string v0, "_valueToSum"

    .line 10
    .line 11
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Li2/n;->b:Ljava/util/List;

    .line 16
    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-wide/16 v1, 0x1

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Li2/n;->c:J

    .line 26
    .line 27
    const-string v0, "fb_iap_product_id"

    .line 28
    .line 29
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lr6/d;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "fb_iap_product_description"

    .line 39
    .line 40
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v3, Lr6/d;

    .line 45
    .line 46
    invoke-direct {v3, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "fb_iap_product_title"

    .line 50
    .line 51
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v4, Lr6/d;

    .line 56
    .line 57
    invoke-direct {v4, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "fb_iap_purchase_token"

    .line 61
    .line 62
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v5, Lr6/d;

    .line 67
    .line 68
    invoke-direct {v5, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x4

    .line 72
    new-array v0, v0, [Lr6/d;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    aput-object v2, v0, v1

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    aput-object v3, v0, v1

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    aput-object v4, v0, v1

    .line 82
    .line 83
    const/4 v1, 0x3

    .line 84
    aput-object v5, v0, v1

    .line 85
    .line 86
    invoke-static {v0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Li2/n;->d:Ljava/util/List;

    .line 91
    .line 92
    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;Ly1/o;)Lr6/d;
    .registers 7

    .line 1
    if-nez p0, :cond_8

    .line 2
    .line 3
    new-instance p0, Lr6/d;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_38

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_10

    .line 34
    .line 35
    sget-object v3, Ly1/o;->b:Ljava/util/Map;

    .line 36
    .line 37
    const-string v3, "key"

    .line 38
    .line 39
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2, p1, p2}, Ly1/g;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, v1, Lr6/d;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/os/Bundle;

    .line 49
    .line 50
    iget-object v1, v1, Lr6/d;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ly1/o;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_38

    .line 53
    .line 54
    move-object p2, v1

    .line 55
    move-object p1, v2

    .line 56
    goto :goto_10

    .line 57
    :catch_38
    :cond_38
    new-instance p0, Lr6/d;

    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object p0
.end method

.method public static b(Z)Ljava/util/List;
    .registers 7

    .line 1
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    iget-object v1, v0, Lq2/t;->v:Ljava/util/List;

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    :goto_e
    if-eqz v1, :cond_55

    .line 16
    .line 17
    iget-object v0, v0, Lq2/t;->v:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_55

    .line 26
    :cond_19
    if-nez p0, :cond_1c

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_54

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lr6/d;

    .line 49
    .line 50
    iget-object v2, v1, Lr6/d;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_25

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    new-instance v4, Lr6/d;

    .line 71
    .line 72
    iget-object v5, v1, Lr6/d;->a:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v5}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v4, v3, v5}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_39

    .line 85
    :cond_54
    return-object p0

    .line 86
    :cond_55
    :goto_55
    sget-object p0, Li2/n;->d:Ljava/util/List;

    .line 87
    .line 88
    return-object p0
.end method

.method public static c(Z)Ljava/util/List;
    .registers 7

    .line 1
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_55

    .line 12
    :cond_b
    iget-object v0, v0, Lq2/t;->w:Ljava/util/List;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_55

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_55

    .line 26
    :cond_19
    if-nez p0, :cond_1c

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_54

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lr6/d;

    .line 49
    .line 50
    iget-object v2, v1, Lr6/d;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_25

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/String;

    .line 69
    .line 70
    new-instance v4, Lr6/d;

    .line 71
    .line 72
    iget-object v5, v1, Lr6/d;->a:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v5}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v4, v3, v5}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_39

    .line 85
    :cond_54
    return-object p0

    .line 86
    :cond_55
    :goto_55
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method
