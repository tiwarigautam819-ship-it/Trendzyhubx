###### Class e5.c (e5.c)
.class public final synthetic Le5/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le5/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le5/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Le5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le5/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, v0, Le5/d;->a:Le5/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Le5/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/firebase/messaging/b0;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, v0, Le5/d;->c:Lg5/a;

    .line 19
    .line 20
    invoke-interface {v4}, Lg5/a;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lo5/b;

    .line 25
    .line 26
    invoke-virtual {v4}, Lo5/b;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/firebase/messaging/b0;->l(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const/4 v0, 0x0

    .line 35
    return-object v0

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    .line 38
    throw v1
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Le5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ae

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 9
    .line 10
    new-instance v1, Lk1/f;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lk1/f;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_f
    invoke-direct {p0}, Le5/c;->a()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_14
    iget-object v0, p0, Le5/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Le5/d;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_19
    iget-object v1, v0, Le5/d;->a:Le5/b;

    .line 27
    .line 28
    invoke-virtual {v1}, Le5/b;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/firebase/messaging/b0;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/firebase/messaging/b0;->d()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1}, Lcom/google/firebase/messaging/b0;->c()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lorg/json/JSONArray;

    .line 42
    .line 43
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v3, v4, :cond_5a

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Le5/a;

    .line 58
    .line 59
    new-instance v5, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "agent"

    .line 65
    .line 66
    iget-object v7, v4, Le5/a;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v6, "dates"

    .line 72
    .line 73
    new-instance v7, Lorg/json/JSONArray;

    .line 74
    .line 75
    iget-object v4, v4, Le5/a;->b:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v7, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_2e

    .line 89
    :catchall_58
    move-exception v1

    .line 90
    goto :goto_ac

    .line 91
    :cond_5a
    new-instance v2, Lorg/json/JSONObject;

    .line 92
    .line 93
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "heartbeats"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v1, "version"

    .line 102
    .line 103
    const-string v3, "2"

    .line 104
    .line 105
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v3, Landroid/util/Base64OutputStream;

    .line 114
    .line 115
    const/16 v4, 0xb

    .line 116
    .line 117
    invoke-direct {v3, v1, v4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_77
    .catchall {:try_start_19 .. :try_end_77} :catchall_58

    .line 118
    .line 119
    .line 120
    :try_start_77
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    .line 121
    .line 122
    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_97

    .line 123
    .line 124
    .line 125
    :try_start_7c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v5, "UTF-8"

    .line 130
    .line 131
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_99

    .line 136
    .line 137
    .line 138
    :try_start_89
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_97

    .line 139
    .line 140
    .line 141
    :try_start_8c
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    .line 142
    .line 143
    .line 144
    const-string v2, "UTF-8"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_58

    .line 151
    return-object v1

    .line 152
    :catchall_97
    move-exception v1

    .line 153
    goto :goto_a3

    .line 154
    :catchall_99
    move-exception v1

    .line 155
    :try_start_9a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    .line 156
    .line 157
    .line 158
    goto :goto_a2

    .line 159
    :catchall_9e
    move-exception v2

    .line 160
    :try_start_9f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :goto_a2
    throw v1
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_97

    .line 164
    :goto_a3
    :try_start_a3
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    .line 165
    .line 166
    .line 167
    goto :goto_ab

    .line 168
    :catchall_a7
    move-exception v2

    .line 169
    :try_start_a8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :goto_ab
    throw v1

    .line 173
    :goto_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_58

    .line 174
    throw v1

    .line 175
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method
