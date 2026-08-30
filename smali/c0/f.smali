###### Class c0.f (c0.f)
.class public abstract Lc0/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lx2/a;

.field public static final b:Ls/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, Lz7/d;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_13

    .line 11
    .line 12
    new-instance v0, Lc0/k;

    .line 13
    .line 14
    invoke-direct {v0}, Lx2/a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lc0/f;->a:Lx2/a;

    .line 18
    .line 19
    goto :goto_4b

    .line 20
    :cond_13
    const/16 v1, 0x1c

    .line 21
    .line 22
    if-lt v0, v1, :cond_1f

    .line 23
    .line 24
    new-instance v0, Lc0/j;

    .line 25
    .line 26
    invoke-direct {v0}, Lc0/i;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lc0/f;->a:Lx2/a;

    .line 30
    .line 31
    goto :goto_4b

    .line 32
    :cond_1f
    const/16 v1, 0x1a

    .line 33
    .line 34
    if-lt v0, v1, :cond_2b

    .line 35
    .line 36
    new-instance v0, Lc0/i;

    .line 37
    .line 38
    invoke-direct {v0}, Lc0/i;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lc0/f;->a:Lx2/a;

    .line 42
    .line 43
    goto :goto_4b

    .line 44
    :cond_2b
    const/16 v1, 0x18

    .line 45
    .line 46
    if-lt v0, v1, :cond_44

    .line 47
    .line 48
    sget-object v0, Lc0/h;->c:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-nez v0, :cond_3a

    .line 51
    .line 52
    const-string v1, "TypefaceCompatApi24Impl"

    .line 53
    .line 54
    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3a
    if-eqz v0, :cond_44

    .line 60
    .line 61
    new-instance v0, Lc0/h;

    .line 62
    .line 63
    invoke-direct {v0}, Lx2/a;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lc0/f;->a:Lx2/a;

    .line 67
    .line 68
    goto :goto_4b

    .line 69
    :cond_44
    new-instance v0, Lc0/g;

    .line 70
    .line 71
    invoke-direct {v0}, Lx2/a;-><init>()V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lc0/f;->a:Lx2/a;

    .line 75
    .line 76
    :goto_4b
    new-instance v0, Ls/i;

    .line 77
    .line 78
    const/16 v1, 0x10

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ls/i;-><init>(I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lc0/f;->b:Ls/i;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Lb0/e;Landroid/content/res/Resources;ILjava/lang/String;IILe6/b;)Landroid/graphics/Typeface;
    .registers 20

    move/from16 v4, p6

    move-object/from16 v0, p7

    .line 1
    instance-of v1, p1, Lb0/h;

    const/4 v2, 0x2

    if-eqz v1, :cond_1c4

    .line 2
    check-cast p1, Lb0/h;

    .line 3
    iget-object v1, p1, Lb0/h;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_2b

    .line 5
    :cond_18
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 6
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v1, :cond_2b

    .line 7
    invoke-virtual {v1, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object v1, v6

    :goto_2c
    if-eqz v1, :cond_40

    .line 8
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance p1, La2/i;

    invoke-direct {p1, v0, v2, v1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 10
    :cond_40
    iget v1, p1, Lb0/h;->d:I

    const/4 v7, 0x1

    if-nez v1, :cond_47

    move v1, v7

    goto :goto_48

    :cond_47
    move v1, v3

    .line 11
    :goto_48
    iget v8, p1, Lb0/h;->c:I

    .line 12
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v9, Lk1/h;

    const/4 v10, 0x3

    .line 14
    invoke-direct {v9, v10, v3}, Lk1/h;-><init>(IB)V

    .line 15
    iput-object v0, v9, Lk1/h;->b:Ljava/lang/Object;

    .line 16
    iget-object v0, p1, Lb0/h;->b:Lg0/e;

    if-eqz v0, :cond_7f

    .line 17
    iget-object p1, p1, Lb0/h;->a:Lg0/e;

    .line 18
    new-array v10, v2, [Ljava/lang/Object;

    aput-object p1, v10, v3

    aput-object v0, v10, v7

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    :goto_6d
    if-ge v0, v2, :cond_7a

    aget-object v11, v10, v0

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_7a
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_96

    .line 20
    :cond_7f
    iget-object p1, p1, Lb0/h;->a:Lg0/e;

    .line 21
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 23
    :goto_96
    new-instance v10, Lcom/google/android/gms/internal/measurement/y4;

    .line 24
    new-instance v0, Lf3/o;

    invoke-direct {v0, v7, v5}, Lf3/o;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0xc

    .line 25
    invoke-direct {v10, v9, v2, v0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    if-eqz v1, :cond_151

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v7, :cond_149

    .line 27
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg0/e;

    sget-object v1, Lg0/i;->a:Ls/i;

    .line 28
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-static {v1, v4}, Lg0/i;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 31
    sget-object v2, Lg0/i;->a:Ls/i;

    invoke-virtual {v2, v1}, Ls/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_e0

    .line 32
    new-instance p0, Ls4/b;

    invoke-direct {p0, v9, v7, v2}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lf3/o;->execute(Ljava/lang/Runnable;)V

    :goto_dd
    move-object v6, v2

    goto/16 :goto_1e3

    :cond_e0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_103

    .line 33
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-static {v1, p0, p1, v4}, Lg0/i;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lg0/h;

    move-result-object p0

    .line 36
    invoke-virtual {v10, p0}, Lcom/google/android/gms/internal/measurement/y4;->C(Lg0/h;)V

    .line 37
    iget-object v6, p0, Lg0/h;->a:Landroid/graphics/Typeface;

    goto/16 :goto_1e3

    .line 38
    :cond_103
    new-instance v0, Lg0/f;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lg0/f;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 39
    :try_start_10b
    sget-object p0, Lg0/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_111
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_111} :catch_136

    int-to-long v0, v8

    .line 41
    :try_start_112
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_118
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_112 .. :try_end_118} :catch_124
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_118} :catch_121
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_112 .. :try_end_118} :catch_127

    .line 42
    :try_start_118
    check-cast p0, Lg0/h;

    .line 43
    invoke-virtual {v10, p0}, Lcom/google/android/gms/internal/measurement/y4;->C(Lg0/h;)V

    .line 44
    iget-object v6, p0, Lg0/h;->a:Landroid/graphics/Typeface;

    goto/16 :goto_1e3

    :catch_121
    move-exception v0

    move-object p0, v0

    goto :goto_12f

    :catch_124
    move-exception v0

    move-object p0, v0

    goto :goto_130

    .line 45
    :catch_127
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :goto_12f
    throw p0

    .line 47
    :goto_130
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_136
    .catch Ljava/lang/InterruptedException; {:try_start_118 .. :try_end_136} :catch_136

    .line 48
    :catch_136
    iget-object p0, v10, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    check-cast p0, Lf3/o;

    .line 49
    iget-object p1, v10, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    check-cast p1, Lk1/h;

    .line 50
    new-instance v0, Landroidx/fragment/app/p;

    const/4 v1, -0x3

    invoke-direct {v0, p1, v1}, Landroidx/fragment/app/p;-><init>(Lk1/h;I)V

    invoke-virtual {p0, v0}, Lf3/o;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1e3

    .line 51
    :cond_149
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_151
    invoke-static {p1, v4}, Lg0/i;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    .line 53
    sget-object v2, Lg0/i;->a:Ls/i;

    invoke-virtual {v2, v1}, Ls/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_169

    .line 54
    new-instance p0, Ls4/b;

    invoke-direct {p0, v9, v7, v2}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lf3/o;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_dd

    .line 55
    :cond_169
    new-instance v0, Lg0/g;

    invoke-direct {v0, v3, v10}, Lg0/g;-><init>(ILjava/lang/Object;)V

    .line 56
    sget-object v3, Lg0/i;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_171
    sget-object v2, Lg0/i;->d:Ls/j;

    invoke-virtual {v2, v1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_183

    .line 58
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v3

    goto :goto_1e3

    :catchall_180
    move-exception v0

    move-object p0, v0

    goto :goto_1c2

    .line 60
    :cond_183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2, v1, v5}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v3
    :try_end_18f
    .catchall {:try_start_171 .. :try_end_18f} :catchall_180

    .line 64
    new-instance v0, Lg0/f;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lg0/f;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    .line 65
    sget-object p0, Lg0/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    new-instance p1, Lg0/g;

    invoke-direct {p1, v7, v1}, Lg0/g;-><init>(ILjava/lang/Object;)V

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1ae

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1b3

    .line 69
    :cond_1ae
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 70
    :goto_1b3
    new-instance v2, Lg0/m;

    .line 71
    invoke-direct {v2}, Lg0/m;-><init>()V

    .line 72
    iput-object v0, v2, Lg0/m;->b:Ljava/lang/Object;

    .line 73
    iput-object p1, v2, Lg0/m;->c:Ljava/lang/Object;

    .line 74
    iput-object v1, v2, Lg0/m;->d:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e3

    .line 76
    :goto_1c2
    :try_start_1c2
    monitor-exit v3
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_180

    throw p0

    .line 77
    :cond_1c4
    sget-object v3, Lc0/f;->a:Lx2/a;

    check-cast p1, Lb0/f;

    invoke-virtual {v3, p0, p1, p2, v4}, Lx2/a;->a(Landroid/content/Context;Lb0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v6

    if-eqz v6, :cond_1e0

    .line 78
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    new-instance p1, La2/i;

    invoke-direct {p1, v0, v2, v6}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e3

    .line 80
    :cond_1e0
    invoke-virtual {v0}, Le6/b;->a()V

    :goto_1e3
    if-eqz v6, :cond_1ee

    .line 81
    sget-object p0, Lc0/f;->b:Ls/i;

    invoke-static/range {p2 .. p6}, Lc0/f;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Ls/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ee
    return-object v6
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
