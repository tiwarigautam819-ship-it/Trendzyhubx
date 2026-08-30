###### Class b2.k (b2.k)
.class public abstract Lb2/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Lorg/json/JSONObject;)Ll2/c;
    .registers 13

    .line 1
    const/4 v1, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v1

    .line 5
    :cond_4
    :try_start_4
    const-string v0, "use_case"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v0, "asset_uri"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v0, "rules_uri"

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v0, "version_id"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sget-object v2, Ll2/d;->a:Ll2/d;

    .line 30
    .line 31
    const-string v0, "thresholds"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-class v7, Ll2/d;

    .line 38
    .line 39
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_78

    .line 43
    if-eqz v0, :cond_2e

    .line 44
    .line 45
    :goto_2c
    move-object v7, v1

    .line 46
    goto :goto_68

    .line 47
    :cond_2e
    :try_start_2e
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_62

    .line 51
    if-eqz v0, :cond_36

    .line 52
    .line 53
    :goto_34
    move-object v0, v1

    .line 54
    goto :goto_60

    .line 55
    :cond_36
    if-nez p0, :cond_39

    .line 56
    .line 57
    goto :goto_34

    .line 58
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    new-array v0, v0, [F

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 65
    .line 66
    .line 67
    move-result v8
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_56

    .line 68
    const/4 v9, 0x0

    .line 69
    :goto_44
    if-ge v9, v8, :cond_60

    .line 70
    .line 71
    :try_start_46
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    const-string v11, "jsonArray.getString(i)"

    .line 76
    .line 77
    invoke-static {v11, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    aput v10, v0, v9
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_55} :catch_59
    .catchall {:try_start_46 .. :try_end_55} :catchall_56

    .line 85
    .line 86
    goto :goto_59

    .line 87
    :catchall_56
    move-exception v0

    .line 88
    move-object p0, v0

    .line 89
    goto :goto_5c

    .line 90
    :catch_59
    :goto_59
    add-int/lit8 v9, v9, 0x1

    .line 91
    .line 92
    goto :goto_44

    .line 93
    :goto_5c
    :try_start_5c
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_62

    .line 94
    .line 95
    .line 96
    goto :goto_34

    .line 97
    :cond_60
    :goto_60
    move-object v7, v0

    .line 98
    goto :goto_68

    .line 99
    :catchall_62
    move-exception v0

    .line 100
    move-object p0, v0

    .line 101
    :try_start_64
    invoke-static {p0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2c

    .line 105
    :goto_68
    new-instance v2, Ll2/c;

    .line 106
    .line 107
    const-string p0, "useCase"

    .line 108
    .line 109
    invoke-static {p0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "assetUri"

    .line 113
    .line 114
    invoke-static {p0, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v2 .. v7}, Ll2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_77} :catch_78

    .line 118
    .line 119
    .line 120
    move-object v1, v2

    .line 121
    :catch_78
    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public static final c(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_10

    .line 2
    .line 3
    if-nez p1, :cond_8

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p0

    .line 14
    invoke-static {p1, p0}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public static d(Ll2/c;Ljava/util/ArrayList;)V
    .registers 13

    .line 1
    iget-object v0, p0, Ll2/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Ll2/c;->d:I

    .line 4
    .line 5
    invoke-static {}, Ll2/f;->b()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v3, 0x5f

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_e

    .line 13
    .line 14
    goto :goto_4b

    .line 15
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_4b

    .line 20
    .line 21
    array-length v5, v2

    .line 22
    if-nez v5, :cond_18

    .line 23
    .line 24
    goto :goto_4b

    .line 25
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    array-length v6, v2

    .line 44
    move v7, v4

    .line 45
    :goto_2c
    if-ge v7, v6, :cond_4b

    .line 46
    .line 47
    aget-object v8, v2, v7

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "name"

    .line 54
    .line 55
    invoke-static {v10, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v9, v0, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_48

    .line 63
    .line 64
    invoke-static {v9, v5, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_48

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 71
    .line 72
    .line 73
    :cond_48
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_2c

    .line 76
    :cond_4b
    :goto_4b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object p0, p0, Ll2/c;->b:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v1, Lcom/google/firebase/messaging/j0;

    .line 97
    .line 98
    const/4 v2, 0x5

    .line 99
    invoke-direct {v1, v2, p1}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Ljava/io/File;

    .line 103
    .line 104
    invoke-static {}, Ll2/f;->b()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {p1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_78

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/j0;->c(Ljava/io/File;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_78
    new-instance v0, Lk2/m;

    .line 122
    .line 123
    invoke-direct {v0, p0, p1, v1}, Lk2/m;-><init>(Ljava/lang/String;Ljava/io/File;Lk2/l;)V

    .line 124
    .line 125
    .line 126
    new-array p0, v4, [Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static e(Ls4/c;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_23

    .line 8
    .line 9
    :goto_8
    :try_start_8
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_c} :catch_21
    .catchall {:try_start_8 .. :try_end_c} :catchall_16

    .line 13
    if-eqz v2, :cond_15

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-object p0

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    if-eqz v2, :cond_20

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 31
    .line 32
    .line 33
    :cond_20
    throw p0

    .line 34
    :catch_21
    move v2, v1

    .line 35
    goto :goto_8

    .line 36
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p0, v1, v2

    .line 41
    .line 42
    const-string p0, "Future was expected to be done: %s"

    .line 43
    .line 44
    invoke-static {p0, v1}, La2/c;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 2

    .line 1
    packed-switch p0, :pswitch_data_46

    .line 2
    .line 3
    .line 4
    :pswitch_3
    const-string v0, "unknown status code: "

    .line 5
    .line 6
    invoke-static {p0, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_a
    const-string p0, "RECONNECTION_TIMED_OUT"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_d
    const-string p0, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_10
    const-string p0, "CONNECTION_SUSPENDED_DURING_CALL"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_13
    const-string p0, "REMOTE_EXCEPTION"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_16
    const-string p0, "DEAD_CLIENT"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_19
    const-string p0, "API_NOT_CONNECTED"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_1c
    const-string p0, "CANCELED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1f
    const-string p0, "TIMEOUT"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_22
    const-string p0, "INTERRUPTED"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_25
    const-string p0, "ERROR"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_28
    const-string p0, "DEVELOPER_ERROR"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_2b
    const-string p0, "INTERNAL_ERROR"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_2e
    const-string p0, "NETWORK_ERROR"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_31
    const-string p0, "RESOLUTION_REQUIRED"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_34
    const-string p0, "INVALID_ACCOUNT"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_37
    const-string p0, "SIGN_IN_REQUIRED"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_3a
    const-string p0, "SERVICE_DISABLED"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_3d
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_40
    const-string p0, "SUCCESS"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_43
    const-string p0, "SUCCESS_CACHE"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_43
        :pswitch_40
        :pswitch_3
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_3
        :pswitch_28
        :pswitch_3
        :pswitch_3
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-ltz v0, :cond_3f

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_3f

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3a

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-le v2, v1, :cond_37

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_1d

    .line 59
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Invalid input received"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method


# virtual methods
.method public abstract f([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
.end method

.method public abstract i(Z)V
.end method

.method public abstract j(Z)V
.end method
