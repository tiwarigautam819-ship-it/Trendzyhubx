###### Class y1.s (y1.s)
.class public final Ly1/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lq2/c;

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:I


# direct methods
.method public constructor <init>(Lq2/c;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/s;->a:Lq2/c;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/s;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ly1/e;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    const-string v0, "event"

    .line 11
    .line 12
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    const/16 v1, 0x3e8

    .line 29
    .line 30
    if-lt v0, v1, :cond_28

    .line 31
    .line 32
    iget p1, p0, Ly1/s;->e:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Ly1/s;->e:I

    .line 37
    .line 38
    goto :goto_2d

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_2f

    .line 41
    :cond_28
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_26

    .line 44
    .line 45
    .line 46
    :goto_2d
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2f
    :try_start_2f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    .line 55
    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_24

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    if-eqz p1, :cond_15

    .line 11
    .line 12
    :try_start_b
    iget-object p1, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v0, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_15

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto :goto_1f

    .line 22
    :cond_15
    :goto_15
    iget-object p1, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Ly1/s;->e:I
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_13

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1f
    :try_start_1f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    .line 39
    throw p1
.end method

.method public final declared-synchronized c()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_18

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    .line 17
    monitor-exit p0

    .line 18
    return v0

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    :try_start_13
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .line 27
    throw v0
.end method

.method public final declared-synchronized d()Ljava/util/List;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_a
    :try_start_a
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Ly1/s;->c:Ljava/util/ArrayList;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    :try_start_16
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v1

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw v0
.end method

.method public final e(Lx1/z;Landroid/content/Context;ZZ)I
    .registers 14

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
    return v1

    .line 9
    :cond_8
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_69

    .line 10
    :try_start_9
    iget v5, p0, Ly1/s;->e:I

    .line 11
    .line 12
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Ld2/b;->b(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v2, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ly1/s;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lorg/json/JSONArray;

    .line 30
    .line 31
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lorg/json/JSONArray;

    .line 35
    .line 36
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ly1/s;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_6c

    .line 45
    move v3, v1

    .line 46
    :cond_2d
    :goto_2d
    if-ge v3, v2, :cond_4d

    .line 47
    .line 48
    :try_start_2f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    check-cast v4, Ly1/e;

    .line 55
    .line 56
    if-nez p3, :cond_42

    .line 57
    .line 58
    iget-boolean v8, v4, Ly1/e;->c:Z

    .line 59
    .line 60
    if-nez v8, :cond_2d

    .line 61
    .line 62
    goto :goto_42

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    move-object v2, p0

    .line 66
    goto :goto_6f

    .line 67
    :cond_42
    :goto_42
    iget-object v8, v4, Ly1/e;->a:Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    iget-object v4, v4, Ly1/e;->b:Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_3e

    .line 75
    .line 76
    .line 77
    goto :goto_2d

    .line 78
    :cond_4d
    :try_start_4d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 79
    .line 80
    .line 81
    move-result p3
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_6c

    .line 82
    if-nez p3, :cond_59

    .line 83
    .line 84
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    .line 85
    return v1

    .line 86
    :catchall_55
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    move-object v2, p0

    .line 89
    goto :goto_71

    .line 90
    :cond_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_69

    .line 91
    move-object v2, p0

    .line 92
    move-object v3, p1

    .line 93
    move-object v4, p2

    .line 94
    move v8, p4

    .line 95
    :try_start_5e
    invoke-virtual/range {v2 .. v8}, Ly1/s;->f(Lx1/z;Landroid/content/Context;ILorg/json/JSONArray;Lorg/json/JSONArray;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    :catchall_66
    move-exception v0

    .line 104
    :goto_67
    move-object p1, v0

    .line 105
    goto :goto_71

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    move-object v2, p0

    .line 108
    goto :goto_67

    .line 109
    :catchall_6c
    move-exception v0

    .line 110
    move-object v2, p0

    .line 111
    move-object p1, v0

    .line 112
    :goto_6f
    monitor-exit p0

    .line 113
    throw p1
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_66

    .line 114
    :goto_71
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return v1
.end method

.method public final f(Lx1/z;Landroid/content/Context;ILorg/json/JSONArray;Lorg/json/JSONArray;Z)V
    .registers 10

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_49

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Lk2/f;->b:Lk2/f;

    .line 9
    .line 10
    iget-object v1, p0, Ly1/s;->a:Lq2/c;

    .line 11
    .line 12
    iget-object v2, p0, Ly1/s;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, p6, p2}, Lk2/g;->a(Lk2/f;Lq2/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget p6, p0, Ly1/s;->e:I

    .line 19
    .line 20
    if-lez p6, :cond_22

    .line 21
    .line 22
    const-string p6, "num_skipped_events"

    .line 23
    .line 24
    invoke-virtual {p2, p6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1a} :catch_1d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 25
    .line 26
    .line 27
    goto :goto_22

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    goto :goto_4a

    .line 30
    :catch_1d
    :try_start_1d
    new-instance p2, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_22
    :goto_22
    iput-object p2, p1, Lx1/z;->c:Lorg/json/JSONObject;

    .line 36
    .line 37
    iget-object p2, p1, Lx1/z;->d:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string p4, "events.toString()"

    .line 44
    .line 45
    invoke-static {p4, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string p4, "custom_events"

    .line 49
    .line 50
    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p4, Lq2/o;->G:Lq2/o;

    .line 54
    .line 55
    invoke-static {p4}, Lq2/q;->b(Lq2/o;)Z

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    if-eqz p4, :cond_45

    .line 60
    .line 61
    const-string p4, "operational_parameters"

    .line 62
    .line 63
    invoke-virtual {p5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    invoke-virtual {p2, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    iput-object p3, p1, Lx1/z;->e:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p2, p1, Lx1/z;->d:Landroid/os/Bundle;
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_1b

    .line 73
    .line 74
    :goto_49
    return-void

    .line 75
    :goto_4a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
