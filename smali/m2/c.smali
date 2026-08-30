###### Class m2.c (m2.c)
.class public final Lm2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lm2/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lm2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm2/c;->a:Lm2/c;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(ILjava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .registers 8

    .line 1
    const-class v0, Lm2/c;

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
    goto :goto_3a

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "eventType"

    .line 12
    .line 13
    invoke-static {p0, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "event"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq p0, v4, :cond_21

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-ne p0, v4, :cond_1f

    .line 28
    .line 29
    const-string v4, "CUSTOM_APP_EVENTS"

    .line 30
    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_21
    const-string v4, "MOBILE_APP_INSTALL"

    .line 35
    .line 36
    :goto_23
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "app_id"

    .line 40
    .line 41
    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    if-ne v3, p0, :cond_47

    .line 46
    .line 47
    sget-object p0, Lm2/c;->a:Lm2/c;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lm2/c;->b(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3b

    .line 58
    .line 59
    :goto_3a
    return-object v2

    .line 60
    :cond_3b
    const-string p1, "custom_events"

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_45

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :catchall_45
    move-exception p0

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    return-object v1

    .line 73
    :goto_48
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v2
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONArray;
    .registers 9

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONArray;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    .line 13
    .line 14
    check-cast p2, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {p2}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Ld2/b;->b(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_49

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_1f

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    move p1, v3

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    :try_start_1f
    invoke-static {p1, v3}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1d

    .line 37
    .line 38
    iget-boolean p1, p1, Lq2/t;->a:Z
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    .line 39
    .line 40
    goto :goto_2d

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    :try_start_29
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1d

    .line 46
    :goto_2d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :cond_31
    :goto_31
    if-ge v3, v2, :cond_4b

    .line 51
    .line 52
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    check-cast v4, Ly1/e;

    .line 59
    .line 60
    iget-boolean v5, v4, Ly1/e;->c:Z

    .line 61
    .line 62
    if-eqz v5, :cond_43

    .line 63
    .line 64
    if-eqz v5, :cond_31

    .line 65
    .line 66
    if-eqz p1, :cond_31

    .line 67
    .line 68
    :cond_43
    iget-object v4, v4, Ly1/e;->a:Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_49

    .line 71
    .line 72
    .line 73
    goto :goto_31

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return-object v0

    .line 77
    :goto_4c
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method
