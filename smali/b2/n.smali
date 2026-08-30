###### Class b2.n (b2.n)
.class public final Lb2/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/util/Timer;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lb2/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_a
    sput-object v0, Lb2/n;->e:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb2/n;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lb2/n;->d:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lb2/n;->a:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lb2/n;

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
    sget-object v0, Lb2/n;->e:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method


# virtual methods
.method public final b(Lx1/z;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "is_app_indexing_enabled"

    .line 2
    .line 3
    sget-object v1, Lb2/n;->e:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "Error sending UI component tree to Facebook: "

    .line 6
    .line 7
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_d

    .line 12
    .line 13
    goto :goto_6b

    .line 14
    :cond_d
    if-nez p1, :cond_10

    .line 15
    .line 16
    goto :goto_6b

    .line 17
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lx1/z;->c()Lx1/c0;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_32

    .line 21
    :try_start_14
    iget-object v3, p1, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 22
    .line 23
    if-eqz v3, :cond_54

    .line 24
    .line 25
    const-string p1, "true"

    .line 26
    .line 27
    const-string v2, "success"

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_36

    .line 38
    .line 39
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 40
    .line 41
    sget-object p1, Lx1/e0;->d:Lx1/e0;

    .line 42
    .line 43
    const-string v2, "Successfully send UI component tree to server"

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lb2/n;->d:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_36

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    goto :goto_6c

    .line 53
    :catch_34
    move-exception p1

    .line 54
    goto :goto_66

    .line 55
    :cond_36
    :goto_36
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_6b

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-class p2, Lb2/f;

    .line 66
    .line 67
    invoke-static {p2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_46} :catch_34
    .catchall {:try_start_14 .. :try_end_46} :catchall_32

    .line 71
    if-eqz v0, :cond_49

    .line 72
    .line 73
    goto :goto_6b

    .line 74
    :cond_49
    :try_start_49
    sget-object v0, Lb2/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    .line 77
    .line 78
    .line 79
    goto :goto_6b

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    :try_start_50
    invoke-static {p1, p2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_6b

    .line 85
    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lx1/c0;->c:Lx1/o;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_65} :catch_34
    .catchall {:try_start_50 .. :try_end_65} :catchall_32

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_66
    :try_start_66
    const-string p2, "Error decoding server response."

    .line 104
    .line 105
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_32

    .line 106
    .line 107
    .line 108
    :cond_6b
    :goto_6b
    return-void

    .line 109
    :goto_6c
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final c()V
    .registers 5

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
    goto :goto_24

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Lb2/m;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lb2/m;-><init>(Lb2/n;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a

    .line 11
    .line 12
    .line 13
    :try_start_c
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, La2/i;

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-direct {v2, p0, v3, v0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_c .. :try_end_19} :catch_1c
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    goto :goto_25

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    :try_start_1d
    sget-object v1, Lb2/n;->e:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "Error scheduling indexing job"

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 35
    .line 36
    .line 37
    :goto_24
    return-void

    .line 38
    :goto_25
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
