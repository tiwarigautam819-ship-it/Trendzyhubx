###### Class o2.d (o2.d)
.class public final Lo2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lo2/d;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/LinkedHashSet;

.field public static final d:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo2/d;->a:Lo2/d;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lo2/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lo2/d;->c:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lo2/d;->d:Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    return-void
.end method

.method public static final declared-synchronized a()V
    .registers 4

    .line 1
    const-class v0, Lo2/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-class v1, Lo2/d;

    .line 5
    .line 6
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Li2/c;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    invoke-direct {v2, v3}, Li2/c;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1d

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    :try_start_1e
    const-class v2, Lo2/d;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .line 40
    throw v1
.end method

.method public static final d(Landroid/app/Activity;)V
    .registers 5

    .line 1
    const-class v0, Lo2/d;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_46

    .line 10
    :cond_9
    :try_start_9
    sget-object v1, Lo2/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3d

    .line 17
    .line 18
    const-class v1, Lo2/a;

    .line 19
    .line 20
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_46
    .catchall {:try_start_9 .. :try_end_17} :catchall_35

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1b

    .line 26
    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    :try_start_1b
    sget-boolean v3, Lo2/a;->f:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    .line 29
    .line 30
    goto :goto_22

    .line 31
    :catchall_1e
    move-exception v2

    .line 32
    :try_start_1f
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_22
    if-eqz v3, :cond_3d

    .line 36
    .line 37
    sget-object v1, Lo2/d;->c:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_37

    .line 44
    .line 45
    sget-object v1, Lo2/d;->d:Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3d

    .line 52
    .line 53
    goto :goto_37

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    goto :goto_43

    .line 56
    :cond_37
    :goto_37
    sget-object v1, Lo2/e;->d:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {p0}, Ll2/e;->w(Landroid/app/Activity;)V

    .line 59
    .line 60
    .line 61
    goto :goto_46

    .line 62
    :cond_3d
    sget-object v1, Lo2/e;->d:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-static {p0}, Ll2/e;->x(Landroid/app/Activity;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_46
    .catchall {:try_start_1f .. :try_end_42} :catchall_35

    .line 65
    .line 66
    .line 67
    goto :goto_46

    .line 68
    :goto_43
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :catch_46
    :goto_46
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

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
    goto :goto_4d

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    goto :goto_4d

    .line 20
    :cond_13
    iget-object v0, v0, Lq2/t;->k:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v0, :cond_18

    .line 23
    .line 24
    goto :goto_4d

    .line 25
    :cond_18
    invoke-virtual {p0, v0}, Lo2/d;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lo2/d;->c:Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2e

    .line 35
    .line 36
    sget-object v0, Lo2/d;->d:Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4d

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_4a

    .line 47
    :cond_2e
    :goto_2e
    invoke-static {}, Ll2/d;->d()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_35

    .line 52
    .line 53
    goto :goto_4d

    .line 54
    :cond_35
    invoke-static {v0}, Lo2/a;->f(Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lk2/d;->l:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    if-eqz v0, :cond_43

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/app/Activity;

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    const/4 v0, 0x0

    .line 69
    :goto_44
    if-eqz v0, :cond_4d

    .line 70
    .line 71
    invoke-static {v0}, Lo2/d;->d(Landroid/app/Activity;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_49} :catch_4d
    .catchall {:try_start_7 .. :try_end_49} :catchall_2c

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_4a
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :catch_4d
    :cond_4d
    :goto_4d
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 10

    .line 1
    const-string v0, "eligible_for_prediction_events"

    .line 2
    .line 3
    const-string v1, "production_events"

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    goto :goto_57

    .line 12
    :cond_b
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_57
    .catchall {:try_start_b .. :try_end_14} :catchall_33

    .line 21
    const-string v3, "jsonArray.getString(i)"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz p1, :cond_35

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    move v5, v4

    .line 35
    :goto_22
    if-ge v5, v1, :cond_35

    .line 36
    .line 37
    sget-object v6, Lo2/d;->c:Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {v3, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_22

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    goto :goto_54

    .line 54
    :cond_35
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_57

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_43
    if-ge v4, v0, :cond_57

    .line 69
    .line 70
    sget-object v1, Lo2/d;->d:Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_51} :catch_57
    .catchall {:try_start_19 .. :try_end_51} :catchall_33

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_43

    .line 85
    :goto_54
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :catch_57
    :cond_57
    :goto_57
    return-void
.end method
