###### Class t2.a (t2.a)
.class public abstract Lt2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:I

.field public static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/lang/String;

.field public static final d:Li2/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lt2/a;->a:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lt2/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    sput-object v0, Lt2/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Li2/c;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-direct {v0, v1}, Li2/c;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lt2/a;->d:Li2/c;

    .line 25
    .line 26
    return-void
.end method

.method public static final a(Landroid/app/ActivityManager;)V
    .registers 9

    .line 1
    const-class v0, Lt2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_79

    .line 10
    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_79

    .line 16
    .line 17
    check-cast p0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_79

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 34
    .line 35
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    if-ne v2, v3, :cond_16

    .line 39
    .line 40
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 41
    .line 42
    sget v3, Lt2/a;->a:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_16

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "getMainLooper().thread"

    .line 55
    .line 56
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Lorg/json/JSONArray;

    .line 64
    .line 65
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "stackTrace"

    .line 69
    .line 70
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    array-length v5, v3

    .line 74
    const/4 v6, 0x0

    .line 75
    :goto_4a
    if-ge v6, v5, :cond_58

    .line 76
    .line 77
    aget-object v7, v3, v6

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_4a

    .line 89
    :cond_58
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget-object v4, Lt2/a;->c:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_16

    .line 100
    .line 101
    invoke-static {v2}, Landroid/support/v4/media/session/a;->f(Ljava/lang/Thread;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6b

    .line 106
    .line 107
    goto :goto_16

    .line 108
    :cond_6b
    sput-object v3, Lt2/a;->c:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v1, v3}, La2/c;->b(Ljava/lang/String;Ljava/lang/String;)Ls2/d;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ls2/d;->b()V
    :try_end_76
    .catchall {:try_start_a .. :try_end_76} :catchall_77

    .line 117
    .line 118
    .line 119
    goto :goto_16

    .line 120
    :catchall_77
    move-exception p0

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    :goto_79
    return-void

    .line 123
    :goto_7a
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
