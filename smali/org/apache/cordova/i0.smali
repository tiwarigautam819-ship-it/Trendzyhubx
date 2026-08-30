###### Class org.apache.cordova.i0 (org.apache.cordova.i0)
.class public final Lorg/apache/cordova/i0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Z

.field public final b:Ljava/util/LinkedList;

.field public final c:Ljava/util/ArrayList;

.field public d:Lorg/apache/cordova/f0;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static c(Lorg/apache/cordova/g0;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/g0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    .line 16
    .line 17
    if-nez p0, :cond_1b

    .line 18
    .line 19
    const/16 p0, 0x4a

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    iget v2, p0, Lorg/apache/cordova/m0;->a:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-nez v2, :cond_23

    .line 33
    .line 34
    move v5, v4

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v5, v3

    .line 37
    :goto_24
    if-ne v2, v4, :cond_27

    .line 38
    .line 39
    move v3, v4

    .line 40
    :cond_27
    iget-boolean v4, p0, Lorg/apache/cordova/m0;->c:Z

    .line 41
    .line 42
    if-nez v5, :cond_31

    .line 43
    .line 44
    if-eqz v3, :cond_2e

    .line 45
    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    const/16 v3, 0x46

    .line 48
    .line 49
    goto :goto_33

    .line 50
    :cond_31
    :goto_31
    const/16 v3, 0x53

    .line 51
    .line 52
    :goto_33
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    if-eqz v4, :cond_3b

    .line 56
    .line 57
    const/16 v3, 0x31

    .line 58
    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    const/16 v3, 0x30

    .line 61
    .line 62
    :goto_3d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p0}, Lorg/apache/cordova/g0;->e(Ljava/lang/StringBuilder;Lorg/apache/cordova/m0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/cordova/m0;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-nez p2, :cond_f

    .line 2
    .line 3
    new-instance p1, Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p2, "JsMessageQueue"

    .line 9
    .line 10
    const-string v0, "Got plugin result with no callbackId"

    .line 11
    .line 12
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    iget v0, p1, Lorg/apache/cordova/m0;->a:I

    .line 17
    .line 18
    if-nez v0, :cond_15

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iget-boolean v1, p1, Lorg/apache/cordova/m0;->c:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    if-eqz v1, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Lorg/apache/cordova/g0;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2}, Lorg/apache/cordova/g0;-><init>(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lorg/apache/cordova/i0;->b(Lorg/apache/cordova/g0;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b(Lorg/apache/cordova/g0;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 3
    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    goto :goto_19

    .line 10
    :cond_9
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lorg/apache/cordova/i0;->a:Z

    .line 16
    .line 17
    if-nez p1, :cond_17

    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lorg/apache/cordova/f0;->onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_7

    .line 27
    throw p1
.end method

.method public final d(Z)Ljava/lang/String;
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object v1

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    goto :goto_70

    .line 11
    :cond_a
    invoke-virtual {v0, p0, p1}, Lorg/apache/cordova/f0;->notifyOfFlush(Lorg/apache/cordova/i0;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_17

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v1

    .line 24
    :cond_17
    iget-object p1, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    move v2, v1

    .line 33
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_48

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lorg/apache/cordova/g0;

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/apache/cordova/g0;->b()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    add-int/2addr v4, v3

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    if-lez v1, :cond_44

    .line 61
    .line 62
    add-int v3, v2, v4

    .line 63
    .line 64
    const/high16 v5, 0x1000000

    .line 65
    .line 66
    if-le v3, v5, :cond_44

    .line 67
    .line 68
    goto :goto_48

    .line 69
    :cond_44
    add-int/2addr v2, v4

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_20

    .line 73
    :cond_48
    :goto_48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .line 77
    .line 78
    :goto_4d
    if-ge v0, v1, :cond_5d

    .line 79
    .line 80
    iget-object v2, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lorg/apache/cordova/g0;

    .line 87
    .line 88
    invoke-static {v2, p1}, Lorg/apache/cordova/i0;->c(Lorg/apache/cordova/g0;Ljava/lang/StringBuilder;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_4d

    .line 94
    :cond_5d
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6a

    .line 101
    .line 102
    const/16 v0, 0x2a

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_6a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    monitor-exit p0

    .line 112
    return-object p1

    .line 113
    :goto_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_8

    .line 114
    throw p1
.end method

.method public final e()Ljava/lang/String;
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto/16 :goto_89

    .line 15
    .line 16
    :cond_f
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    move v3, v2

    .line 25
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_37

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lorg/apache/cordova/g0;

    .line 36
    .line 37
    invoke-virtual {v4}, Lorg/apache/cordova/g0;->b()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    add-int/lit8 v4, v4, 0x32

    .line 42
    .line 43
    if-lez v2, :cond_33

    .line 44
    .line 45
    add-int v5, v3, v4

    .line 46
    .line 47
    const/high16 v6, 0x1000000

    .line 48
    .line 49
    if-le v5, v6, :cond_33

    .line 50
    .line 51
    goto :goto_37

    .line 52
    :cond_33
    add-int/2addr v3, v4

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_18

    .line 56
    :cond_37
    :goto_37
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-ne v2, v0, :cond_41

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v0, v1

    .line 67
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    if-eqz v0, :cond_48

    .line 70
    .line 71
    move v5, v1

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    const/16 v5, 0x64

    .line 74
    .line 75
    :goto_4a
    add-int/2addr v3, v5

    .line 76
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .line 78
    .line 79
    :goto_4e
    if-ge v1, v2, :cond_72

    .line 80
    .line 81
    iget-object v3, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lorg/apache/cordova/g0;

    .line 88
    .line 89
    if-eqz v0, :cond_62

    .line 90
    .line 91
    add-int/lit8 v5, v1, 0x1

    .line 92
    .line 93
    if-ne v5, v2, :cond_62

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Lorg/apache/cordova/g0;->d(Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    goto :goto_6f

    .line 99
    :cond_62
    const-string v5, "try{"

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lorg/apache/cordova/g0;->d(Ljava/lang/StringBuilder;)V

    .line 105
    .line 106
    .line 107
    const-string v3, "}finally{"

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_4e

    .line 115
    :cond_72
    if-nez v0, :cond_79

    .line 116
    .line 117
    const-string v1, "window.setTimeout(function(){cordova.require(\'cordova/plugin/android/polling\').pollOnce();},0);"

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_79
    :goto_79
    if-ge v0, v2, :cond_83

    .line 123
    .line 124
    const/16 v1, 0x7d

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_79

    .line 132
    :cond_83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    monitor-exit p0

    .line 137
    return-object v0

    .line 138
    :goto_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_1 .. :try_end_8a} :catchall_c

    .line 139
    throw v0
.end method

.method public final f(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_3a

    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_c

    .line 11
    .line 12
    goto :goto_3a

    .line 13
    :cond_c
    if-gez p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object v0, p0, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/apache/cordova/f0;

    .line 24
    .line 25
    :goto_18
    iget-object v0, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 26
    .line 27
    if-eq p1, v0, :cond_3a

    .line 28
    .line 29
    monitor-enter p0

    .line 30
    :try_start_1d
    iput-object p1, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 31
    .line 32
    if-eqz p1, :cond_36

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/apache/cordova/f0;->reset()V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lorg/apache/cordova/i0;->a:Z

    .line 38
    .line 39
    if-nez v0, :cond_36

    .line 40
    .line 41
    iget-object v0, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_36

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lorg/apache/cordova/f0;->onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_36

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    :goto_36
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_34

    .line 58
    throw p1

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public final g(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/cordova/i0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    if-eqz p1, :cond_12

    .line 6
    .line 7
    const-string v0, "JsMessageQueue"

    .line 8
    .line 9
    const-string v1, "nested call to setPaused detected."

    .line 10
    .line 11
    new-instance v2, Ljava/lang/Throwable;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :cond_12
    iput-boolean p1, p0, Lorg/apache/cordova/i0;->a:Z

    .line 20
    .line 21
    if-nez p1, :cond_2d

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_17
    iget-object p1, p0, Lorg/apache/cordova/i0;->b:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_29

    .line 31
    .line 32
    iget-object p1, p0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 33
    .line 34
    if-eqz p1, :cond_29

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lorg/apache/cordova/f0;->onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_29

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    :goto_29
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_27

    .line 45
    throw p1

    .line 46
    :cond_2d
    return-void
.end method
