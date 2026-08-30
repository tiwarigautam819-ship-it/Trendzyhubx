###### Class com.google.firebase.messaging.z (com.google.firebase.messaging.z)
.class public final Lcom/google/firebase/messaging/z;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh3/b;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "GET"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Lr7/j;

    .line 16
    .line 17
    invoke-direct {v0}, Lr7/j;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lcom/google/firebase/messaging/z;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/z;

    .line 2
    .line 3
    const-string v1, "topic_operation_queue"

    .line 4
    .line 5
    const-string v2, ","

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p0, v0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v2, v0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p0, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    monitor-enter p0

    .line 30
    :try_start_1d
    iget-object p1, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroid/content/SharedPreferences;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_71

    .line 56
    .line 57
    iget-object v1, v0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_43

    .line 66
    .line 67
    goto :goto_71

    .line 68
    :cond_43
    iget-object v1, v0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    const/4 v2, -0x1

    .line 73
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    array-length v1, p1

    .line 78
    if-nez v1, :cond_59

    .line 79
    .line 80
    const-string v1, "FirebaseMessaging"

    .line 81
    .line 82
    const-string v2, "Corrupted queue. Please check the queue contents and item separator provided"

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_59

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    goto :goto_73

    .line 90
    :cond_59
    :goto_59
    array-length v1, p1

    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_5b
    if-ge v2, v1, :cond_6f

    .line 93
    .line 94
    aget-object v3, p1, v2

    .line 95
    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_6c

    .line 101
    .line 102
    iget-object v4, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v4, Ljava/util/ArrayDeque;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_5b

    .line 112
    :cond_6f
    monitor-exit p0

    .line 113
    return-object v0

    .line 114
    :cond_71
    :goto_71
    monitor-exit p0

    .line 115
    return-object v0

    .line 116
    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_1d .. :try_end_74} :catchall_57

    .line 117
    throw p1
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/g;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lr7/m;

    .line 5
    .line 6
    if-eqz v2, :cond_43

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lr7/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lr7/j;->c()Lr7/k;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Lb0/d;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    sget-object v1, Ls7/b;->a:[B

    .line 31
    .line 32
    const-string v1, "<this>"

    .line 33
    .line 34
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2e

    .line 42
    .line 43
    sget-object v0, Ls6/p;->a:Ls6/p;

    .line 44
    .line 45
    :goto_2c
    move-object v6, v0

    .line 46
    goto :goto_3d

    .line 47
    :cond_2e
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "{\n    Collections.unmodi\u2026(LinkedHashMap(this))\n  }"

    .line 57
    .line 58
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2c

    .line 62
    :goto_3d
    new-instance v1, Lcom/google/android/gms/common/internal/g;

    .line 63
    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/common/internal/g;-><init>(Lr7/m;Ljava/lang/String;Lr7/k;Lb0/d;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "url == null"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr7/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ly1/g;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p1}, Ly1/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lr7/j;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lr7/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public d(Ljava/lang/String;Lb0/d;)V
    .registers 5

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_63

    .line 11
    .line 12
    const-string v0, "method "

    .line 13
    .line 14
    if-nez p2, :cond_48

    .line 15
    .line 16
    const-string v1, "POST"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_38

    .line 23
    .line 24
    const-string v1, "PUT"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_38

    .line 31
    .line 32
    const-string v1, "PATCH"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_38

    .line 39
    .line 40
    const-string v1, "PROPPATCH"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_38

    .line 47
    .line 48
    const-string v1, "REPORT"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_38

    .line 55
    .line 56
    goto :goto_4e

    .line 57
    :cond_38
    const-string p2, " must have a request body."

    .line 58
    .line 59
    invoke-static {v0, p1, p2}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :cond_48
    invoke-static {p1}, Ld4/a;->f(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_53

    .line 78
    .line 79
    :goto_4e
    iput-object p1, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    const-string p2, " must not have a request body."

    .line 85
    .line 86
    invoke-static {v0, p1, p2}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2

    .line 100
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p2, "method.isEmpty() == true"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    .line 20
    throw v1
.end method

.method public f(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1c

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 19
    .line 20
    new-instance v2, La2/g;

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-direct {v2, v3, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    monitor-exit v0

    .line 30
    return p1

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    .line 33
    throw p1
.end method

.method public g(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ws:"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p1, v0, v1}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v2, "this as java.lang.String).substring(startIndex)"

    .line 14
    .line 15
    if-eqz v0, :cond_1f

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "http:"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_35

    .line 32
    :cond_1f
    const-string v0, "wss:"

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_35

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "https:"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_35
    :goto_35
    const-string v0, "<this>"

    .line 55
    .line 56
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lr7/l;

    .line 60
    .line 61
    invoke-direct {v0}, Lr7/l;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1, p1}, Lr7/l;->c(Lr7/m;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lr7/l;->a()Lr7/m;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 73
    .line 74
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq6/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lq6/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lg3/d;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lc5/h;

    .line 26
    .line 27
    invoke-virtual {v0}, Lc5/h;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lc5/h;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lq6/a;

    .line 37
    .line 38
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lm3/d;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lq6/a;

    .line 48
    .line 49
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v6, v0

    .line 54
    check-cast v6, Ln3/c;

    .line 55
    .line 56
    new-instance v1, Lk3/a;

    .line 57
    .line 58
    invoke-direct/range {v1 .. v6}, Lk3/a;-><init>(Ljava/util/concurrent/Executor;Lg3/d;Lc5/h;Lm3/d;Ln3/c;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method
