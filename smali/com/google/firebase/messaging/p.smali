###### Class com.google.firebase.messaging.p (com.google.firebase.messaging.p)
.class public final Lcom/google/firebase/messaging/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# virtual methods
.method public a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv7/i;

    .line 4
    .line 5
    if-eqz p3, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    :cond_9
    invoke-virtual {v0, p0, p2, p1, p3}, Lv7/i;->i(Lcom/google/firebase/messaging/p;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(FF)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2d

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2d

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    :try_start_f
    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    return p1

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "ViewParent "

    .line 25
    .line 26
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " does not implement interface method onNestedPreFling"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "ViewParentCompat"

    .line 42
    .line 43
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_2d
    return v1
.end method

.method public c(IIII[II[I)Z
    .registers 22

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    move/from16 v8, p6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->a:Z

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v0, :cond_b5

    .line 14
    .line 15
    invoke-virtual {p0, v8}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_16

    .line 20
    .line 21
    goto/16 :goto_b5

    .line 22
    .line 23
    :cond_16
    const/4 v11, 0x1

    .line 24
    if-nez p1, :cond_27

    .line 25
    .line 26
    if-nez p2, :cond_27

    .line 27
    .line 28
    if-nez p3, :cond_27

    .line 29
    .line 30
    if-eqz p4, :cond_20

    .line 31
    .line 32
    goto :goto_27

    .line 33
    :cond_20
    if-eqz v1, :cond_b5

    .line 34
    .line 35
    aput v10, v1, v10

    .line 36
    .line 37
    aput v10, v1, v11

    .line 38
    .line 39
    return v10

    .line 40
    :cond_27
    :goto_27
    if-eqz v1, :cond_33

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    .line 44
    .line 45
    aget v0, v1, v10

    .line 46
    .line 47
    aget v4, v1, v11

    .line 48
    .line 49
    move v12, v0

    .line 50
    move v13, v4

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    move v12, v10

    .line 53
    move v13, v12

    .line 54
    :goto_35
    if-nez p7, :cond_4c

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, [I

    .line 59
    .line 60
    if-nez v0, :cond_42

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [I

    .line 64
    .line 65
    iput-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 66
    .line 67
    :cond_42
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, [I

    .line 70
    .line 71
    aput v10, v0, v10

    .line 72
    .line 73
    aput v10, v0, v11

    .line 74
    .line 75
    move-object v9, v0

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    move-object/from16 v9, p7

    .line 78
    .line 79
    :goto_4e
    instance-of v0, v2, Lj0/p;

    .line 80
    .line 81
    if-eqz v0, :cond_5f

    .line 82
    .line 83
    check-cast v2, Lj0/p;

    .line 84
    .line 85
    move v4, p1

    .line 86
    move/from16 v5, p2

    .line 87
    .line 88
    move/from16 v6, p3

    .line 89
    .line 90
    move/from16 v7, p4

    .line 91
    .line 92
    invoke-interface/range {v2 .. v9}, Lj0/p;->c(Landroid/view/View;IIIII[I)V

    .line 93
    .line 94
    .line 95
    goto :goto_a5

    .line 96
    :cond_5f
    aget v0, v9, v10

    .line 97
    .line 98
    add-int v0, v0, p3

    .line 99
    .line 100
    aput v0, v9, v10

    .line 101
    .line 102
    aget v0, v9, v11

    .line 103
    .line 104
    add-int v0, v0, p4

    .line 105
    .line 106
    aput v0, v9, v11

    .line 107
    .line 108
    instance-of v0, v2, Lj0/o;

    .line 109
    .line 110
    if-eqz v0, :cond_7e

    .line 111
    .line 112
    check-cast v2, Lj0/o;

    .line 113
    .line 114
    move v4, p1

    .line 115
    move/from16 v5, p2

    .line 116
    .line 117
    move/from16 v6, p3

    .line 118
    .line 119
    move/from16 v7, p4

    .line 120
    .line 121
    move/from16 v8, p6

    .line 122
    .line 123
    invoke-interface/range {v2 .. v8}, Lj0/o;->d(Landroid/view/View;IIIII)V

    .line 124
    .line 125
    .line 126
    goto :goto_a5

    .line 127
    :cond_7e
    if-nez p6, :cond_a5

    .line 128
    .line 129
    move v4, p1

    .line 130
    move/from16 v5, p2

    .line 131
    .line 132
    move/from16 v6, p3

    .line 133
    .line 134
    move/from16 v7, p4

    .line 135
    .line 136
    :try_start_87
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_8a
    .catch Ljava/lang/AbstractMethodError; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 137
    .line 138
    .line 139
    goto :goto_a5

    .line 140
    :catch_8b
    move-exception v0

    .line 141
    move-object p1, v0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "ViewParent "

    .line 145
    .line 146
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, " does not implement interface method onNestedScroll"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v2, "ViewParentCompat"

    .line 162
    .line 163
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    if-eqz v1, :cond_b4

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    .line 170
    .line 171
    aget p1, v1, v10

    .line 172
    .line 173
    sub-int/2addr p1, v12

    .line 174
    aput p1, v1, v10

    .line 175
    .line 176
    aget p1, v1, v11

    .line 177
    .line 178
    sub-int/2addr p1, v13

    .line 179
    aput p1, v1, v11

    .line 180
    .line 181
    :cond_b4
    return v11

    .line 182
    :cond_b5
    :goto_b5
    return v10
.end method

.method public d(I)Landroid/view/ViewParent;
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object p1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/view/ViewParent;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewParent;

    .line 16
    .line 17
    return-object p1
.end method

.method public declared-synchronized e()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/p;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->g()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v0, :cond_25

    .line 15
    .line 16
    new-instance v0, Lcom/getcapacitor/n;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ld5/d;

    .line 27
    .line 28
    check-cast v1, Lv4/j;

    .line 29
    .line 30
    iget-object v2, v1, Lv4/j;->c:Lw4/j;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Lv4/j;->a(Ljava/util/concurrent/Executor;Ld5/b;)V

    .line 33
    .line 34
    .line 35
    goto :goto_25

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/firebase/messaging/p;->a:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_23

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_23

    .line 44
    throw v0
.end method

.method public declared-synchronized f()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->e()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1b

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 23
    .line 24
    invoke-virtual {v0}, Lt4/g;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_f

    .line 28
    :goto_1b
    monitor-exit p0

    .line 29
    return v0

    .line 30
    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_f

    .line 31
    throw v0
.end method

.method public g()Ljava/lang/Boolean;
    .registers 7

    .line 1
    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lt4/g;

    .line 8
    .line 9
    invoke-virtual {v1}, Lt4/g;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v1, Lt4/g;->a:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "com.google.firebase.messaging"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v4, "auto_init"

    .line 22
    .line 23
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_25

    .line 28
    .line 29
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4c

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/16 v3, 0x80

    .line 49
    .line 50
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_4c

    .line 55
    .line 56
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 57
    .line 58
    if-eqz v2, :cond_4c

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4c

    .line 65
    .line 66
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_4b} :catch_4c

    .line 76
    return-object v0

    .line 77
    :catch_4c
    :cond_4c
    const/4 v0, 0x0

    .line 78
    return-object v0
.end method

.method public h(Z)Lr7/t;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw7/d;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw7/d;->g(Z)Lr7/t;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_f

    .line 10
    .line 11
    iput-object p0, p1, Lr7/t;->m:Lcom/google/firebase/messaging/p;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 12
    .line 13
    return-object p1

    .line 14
    :catch_d
    move-exception p1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    return-object p1

    .line 17
    :goto_10
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public i(Ljava/io/IOException;)V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/messaging/p;->a:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lv7/e;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lv7/e;->c(Ljava/io/IOException;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lw7/d;

    .line 14
    .line 15
    invoke-interface {v1}, Lw7/d;->h()Lv7/l;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lv7/i;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_17
    instance-of v3, p1, Ly7/b0;

    .line 25
    .line 26
    if-eqz v3, :cond_49

    .line 27
    .line 28
    move-object v3, p1

    .line 29
    check-cast v3, Ly7/b0;

    .line 30
    .line 31
    iget v3, v3, Ly7/b0;->a:I

    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    if-ne v3, v4, :cond_35

    .line 36
    .line 37
    iget p1, v1, Lv7/l;->n:I

    .line 38
    .line 39
    add-int/2addr p1, v0

    .line 40
    iput p1, v1, Lv7/l;->n:I

    .line 41
    .line 42
    if-le p1, v0, :cond_68

    .line 43
    .line 44
    iput-boolean v0, v1, Lv7/l;->j:Z

    .line 45
    .line 46
    iget p1, v1, Lv7/l;->l:I

    .line 47
    .line 48
    add-int/2addr p1, v0

    .line 49
    iput p1, v1, Lv7/l;->l:I

    .line 50
    .line 51
    goto :goto_68

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    goto :goto_6a

    .line 54
    :cond_35
    check-cast p1, Ly7/b0;

    .line 55
    .line 56
    iget p1, p1, Ly7/b0;->a:I

    .line 57
    .line 58
    const/16 v3, 0x9

    .line 59
    .line 60
    if-ne p1, v3, :cond_41

    .line 61
    .line 62
    iget-boolean p1, v2, Lv7/i;->m:Z

    .line 63
    .line 64
    if-nez p1, :cond_68

    .line 65
    .line 66
    :cond_41
    iput-boolean v0, v1, Lv7/l;->j:Z

    .line 67
    .line 68
    iget p1, v1, Lv7/l;->l:I

    .line 69
    .line 70
    add-int/2addr p1, v0

    .line 71
    iput p1, v1, Lv7/l;->l:I

    .line 72
    .line 73
    goto :goto_68

    .line 74
    :cond_49
    iget-object v3, v1, Lv7/l;->g:Ly7/o;

    .line 75
    .line 76
    if-eqz v3, :cond_4f

    .line 77
    .line 78
    move v3, v0

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    const/4 v3, 0x0

    .line 81
    :goto_50
    if-eqz v3, :cond_56

    .line 82
    .line 83
    instance-of v3, p1, Ly7/a;

    .line 84
    .line 85
    if-eqz v3, :cond_68

    .line 86
    .line 87
    :cond_56
    iput-boolean v0, v1, Lv7/l;->j:Z

    .line 88
    .line 89
    iget v3, v1, Lv7/l;->m:I

    .line 90
    .line 91
    if-nez v3, :cond_68

    .line 92
    .line 93
    iget-object v2, v2, Lv7/i;->a:Lr7/r;

    .line 94
    .line 95
    iget-object v3, v1, Lv7/l;->b:Lr7/x;

    .line 96
    .line 97
    invoke-static {v2, v3, p1}, Lv7/l;->d(Lr7/r;Lr7/x;Ljava/io/IOException;)V

    .line 98
    .line 99
    .line 100
    iget p1, v1, Lv7/l;->l:I

    .line 101
    .line 102
    add-int/2addr p1, v0

    .line 103
    iput p1, v1, Lv7/l;->l:I
    :try_end_68
    .catchall {:try_start_17 .. :try_end_68} :catchall_33

    .line 104
    .line 105
    :cond_68
    :goto_68
    monitor-exit v1

    .line 106
    return-void

    .line 107
    :goto_6a
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_33

    .line 108
    throw p1
.end method
