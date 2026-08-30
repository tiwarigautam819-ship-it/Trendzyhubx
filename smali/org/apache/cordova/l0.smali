###### Class org.apache.cordova.l0 (org.apache.cordova.l0)
.class public final Lorg/apache/cordova/l0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Lorg/apache/cordova/m;

.field public final d:Lorg/apache/cordova/t;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Ljava/util/List;)V
    .registers 6

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
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 25
    .line 26
    iput-object p2, p0, Lorg/apache/cordova/l0;->c:Lorg/apache/cordova/m;

    .line 27
    .line 28
    iput-object p1, p0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 29
    .line 30
    iget-boolean p1, p0, Lorg/apache/cordova/l0;->e:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2e

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/cordova/l0;->g(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/apache/cordova/l0;->e()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_46

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lorg/apache/cordova/j0;

    .line 62
    .line 63
    iget-object p3, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 64
    .line 65
    iget-object v0, p2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_32

    .line 71
    :cond_46
    iget-boolean p1, p0, Lorg/apache/cordova/l0;->e:Z

    .line 72
    .line 73
    if-eqz p1, :cond_4d

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/apache/cordova/l0;->o()V

    .line 76
    .line 77
    .line 78
    :cond_4d
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/cordova/l0;->c(Ljava/lang/String;)Lorg/apache/cordova/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 6
    .line 7
    if-nez p1, :cond_12

    .line 8
    .line 9
    new-instance p1, Lorg/apache/cordova/m0;

    .line 10
    .line 11
    const/4 p2, 0x3

    .line 12
    invoke-direct {p1, p2}, Lorg/apache/cordova/m0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p3}, Lorg/apache/cordova/t;->sendPluginResult(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v1, Lorg/apache/cordova/d;

    .line 20
    .line 21
    invoke-direct {v1, p3, v0}, Lorg/apache/cordova/d;-><init>(Ljava/lang/String;Lorg/apache/cordova/t;)V

    .line 22
    .line 23
    .line 24
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p4, v1}, Lorg/apache/cordova/o;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/d;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    if-nez p1, :cond_48

    .line 35
    .line 36
    new-instance p1, Lorg/apache/cordova/m0;

    .line 37
    .line 38
    const/16 p2, 0x8

    .line 39
    .line 40
    invoke-direct {p1, p2}, Lorg/apache/cordova/m0;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_2d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_2e

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    const-string p2, "PluginManager"

    .line 49
    .line 50
    const-string p3, "Uncaught exception from plugin"

    .line 51
    .line 52
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1}, Lorg/apache/cordova/d;->error(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_48

    .line 63
    :catch_3e
    new-instance p1, Lorg/apache/cordova/m0;

    .line 64
    .line 65
    const/16 p2, 0x9

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lorg/apache/cordova/m0;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 71
    .line 72
    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/t;->getPreferences()Lorg/apache/cordova/q;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "AndroidInsecureFileModeEnabled"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/q;->a(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_45

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/apache/cordova/t;->getPreferences()Lorg/apache/cordova/q;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "scheme"

    .line 21
    .line 22
    const-string v3, "https"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0}, Lorg/apache/cordova/t;->getPreferences()Lorg/apache/cordova/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "hostname"

    .line 37
    .line 38
    const-string v3, "localhost"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "://"

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x2f

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    :cond_45
    const-string v0, "file://"

    .line 71
    .line 72
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lorg/apache/cordova/o;
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lorg/apache/cordova/o;

    .line 8
    .line 9
    if-nez v1, :cond_6a

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/cordova/j0;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_16

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_16
    iget-object v1, v1, Lorg/apache/cordova/j0;->b:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_29

    .line 26
    .line 27
    :try_start_1a
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_29

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_2a

    .line 40
    :catch_27
    move-exception v3

    .line 41
    goto :goto_40

    .line 42
    :cond_29
    move-object v3, v2

    .line 43
    :goto_2a
    if-eqz v3, :cond_2e

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v4, 0x0

    .line 48
    :goto_2f
    const-class v5, Lorg/apache/cordova/o;

    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    and-int/2addr v4, v5

    .line 55
    if-eqz v4, :cond_5b

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lorg/apache/cordova/o;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3e} :catch_27

    .line 62
    .line 63
    move-object v2, v3

    .line 64
    goto :goto_5b

    .line 65
    :goto_40
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v5, "Error adding plugin "

    .line 73
    .line 74
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "."

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5b
    :goto_5b
    iget-object v1, p0, Lorg/apache/cordova/l0;->d:Lorg/apache/cordova/t;

    .line 93
    .line 94
    invoke-interface {v1}, Lorg/apache/cordova/t;->getPreferences()Lorg/apache/cordova/q;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lorg/apache/cordova/l0;->c:Lorg/apache/cordova/m;

    .line 99
    .line 100
    invoke-virtual {v2, p1, v4, v1, v3}, Lorg/apache/cordova/o;->privateInitialize(Ljava/lang/String;Lorg/apache/cordova/m;Lorg/apache/cordova/t;Lorg/apache/cordova/q;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :cond_6a
    return-object v1
.end method

.method public final d()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/cordova/l0;->e:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/cordova/l0;->g(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/cordova/l0;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/cordova/l0;->o()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/cordova/o;->onDestroy()V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw v1
.end method

.method public final f(Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method public final g(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->onPause(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method public final h(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->onResume(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw p1
.end method

.method public final i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/cordova/o;->onStart()V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw v1
.end method

.method public final j()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/o;

    .line 25
    .line 26
    if-eqz v2, :cond_d

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/cordova/o;->onStop()V

    .line 29
    .line 30
    .line 31
    goto :goto_d

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    .line 37
    throw v1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    if-lt v1, v2, :cond_16

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v2, Lorg/apache/cordova/k0;

    .line 13
    .line 14
    invoke-direct {v2, p1, p2}, Lorg/apache/cordova/k0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/getcapacitor/a;->u(Ljava/util/Map;Lorg/apache/cordova/k0;)V

    .line 18
    .line 19
    .line 20
    goto :goto_36

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_3e

    .line 23
    :cond_16
    iget-object v1, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_36

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/apache/cordova/o;

    .line 44
    .line 45
    if-eqz v2, :cond_20

    .line 46
    .line 47
    invoke-virtual {v2, p1, p2}, Lorg/apache/cordova/o;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_20

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object v2

    .line 55
    :cond_36
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_14

    .line 56
    iget-object v0, p0, Lorg/apache/cordova/l0;->c:Lorg/apache/cordova/m;

    .line 57
    .line 58
    invoke-interface {v0, p1, p2}, Lorg/apache/cordova/m;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_14

    .line 64
    throw p1
.end method

.method public final l(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_33

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/j0;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v2, v2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/apache/cordova/o;

    .line 35
    .line 36
    if-eqz v2, :cond_d

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    monitor-exit v0

    .line 49
    return p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto :goto_4b

    .line 52
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_31

    .line 53
    invoke-virtual {p0}, Lorg/apache/cordova/l0;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_49

    .line 62
    .line 63
    const-string v0, "about:blank"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_47

    .line 70
    .line 71
    goto :goto_49

    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    return p1

    .line 74
    :cond_49
    :goto_49
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_31

    .line 77
    throw p1
.end method

.method public final m(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_33

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/j0;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v2, v2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/apache/cordova/o;

    .line 35
    .line 36
    if-eqz v2, :cond_d

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->shouldAllowRequest(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    monitor-exit v0

    .line 49
    return p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto :goto_6a

    .line 52
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_31

    .line 53
    const-string v0, "blob:"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x1

    .line 60
    if-nez v0, :cond_69

    .line 61
    .line 62
    const-string v0, "data:"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_69

    .line 69
    .line 70
    const-string v0, "about:blank"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4e

    .line 77
    .line 78
    goto :goto_69

    .line 79
    :cond_4e
    const-string v0, "https://ssl.gstatic.com/accessibility/javascript/android/"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_57

    .line 86
    .line 87
    return v1

    .line 88
    :cond_57
    const-string v0, "file://"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_67

    .line 95
    .line 96
    const-string v0, "/app_webview/"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    xor-int/2addr p1, v1

    .line 103
    return p1

    .line 104
    :cond_67
    const/4 p1, 0x0

    .line 105
    return p1

    .line 106
    :cond_69
    :goto_69
    return v1

    .line 107
    :goto_6a
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_31

    .line 108
    throw p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2f

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/j0;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v2, v2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/apache/cordova/o;

    .line 35
    .line 36
    if-eqz v2, :cond_d

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lorg/apache/cordova/o;->shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v2

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2d

    .line 49
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    return-object p1

    .line 52
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2d

    .line 53
    throw p1
.end method

.method public final o()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2e

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/apache/cordova/j0;

    .line 25
    .line 26
    iget-boolean v3, v2, Lorg/apache/cordova/j0;->c:Z

    .line 27
    .line 28
    if-eqz v3, :cond_25

    .line 29
    .line 30
    iget-object v2, v2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lorg/apache/cordova/l0;->c(Ljava/lang/String;)Lorg/apache/cordova/o;

    .line 33
    .line 34
    .line 35
    goto :goto_d

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    goto :goto_30

    .line 38
    :cond_25
    iget-object v3, p0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 39
    .line 40
    iget-object v2, v2, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_d

    .line 47
    :cond_2e
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_23

    .line 50
    throw v1
.end method

###### Class org.apache.cordova.k0 (org.apache.cordova.k0)
.class public final synthetic Lorg/apache/cordova/k0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/k0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/cordova/k0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/k0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/k0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Lorg/apache/cordova/o;

    .line 8
    .line 9
    if-eqz p2, :cond_d

    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Lorg/apache/cordova/o;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method
