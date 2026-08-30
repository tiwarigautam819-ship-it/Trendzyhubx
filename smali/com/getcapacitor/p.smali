###### Class com.getcapacitor.p (com.getcapacitor.p)
.class public final synthetic Lcom/getcapacitor/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/io/Serializable;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/getcapacitor/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/getcapacitor/p;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/getcapacitor/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/getcapacitor/p;->d:Ljava/io/Serializable;

    iput-object p4, p0, Lcom/getcapacitor/p;->e:Ljava/io/Serializable;

    iput-object p5, p0, Lcom/getcapacitor/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URL;Ld7/k;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .registers 7

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/getcapacitor/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/getcapacitor/p;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/getcapacitor/p;->d:Ljava/io/Serializable;

    iput-object p3, p0, Lcom/getcapacitor/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/getcapacitor/p;->e:Ljava/io/Serializable;

    iput-object p5, p0, Lcom/getcapacitor/p;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget v0, p0, Lcom/getcapacitor/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_b2

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/p;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/net/URL;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/getcapacitor/p;->d:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v1, Ld7/k;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/getcapacitor/p;->e:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/getcapacitor/p;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/util/concurrent/locks/Condition;

    .line 21
    .line 22
    const-string v4, "$kid"

    .line 23
    .line 24
    iget-object v5, p0, Lcom/getcapacitor/p;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 34
    .line 35
    invoke-static {v4, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 39
    .line 40
    :try_start_27
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v6, "connection.inputStream"

    .line 45
    .line 46
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v6, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    new-instance v7, Ljava/io/InputStreamReader;

    .line 52
    .line 53
    invoke-direct {v7, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Ljava/io/BufferedReader;

    .line 57
    .line 58
    const/16 v6, 0x2000

    .line 59
    .line 60
    invoke-direct {v4, v7, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Ld4/a;->g(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 72
    .line 73
    .line 74
    new-instance v6, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iput-object v4, v1, Ld7/k;->b:Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_54} :catch_68
    .catchall {:try_start_27 .. :try_end_54} :catchall_66

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 89
    .line 90
    .line 91
    :try_start_5a
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_61

    .line 92
    .line 93
    .line 94
    :goto_5d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    goto :goto_84

    .line 98
    :catchall_61
    move-exception v0

    .line 99
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :catchall_66
    move-exception v1

    .line 104
    goto :goto_8a

    .line 105
    :catch_68
    move-exception v1

    .line 106
    :try_start_69
    const-class v4, Lx2/a;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_77

    .line 117
    .line 118
    const-string v1, "Error getting public key"

    .line 119
    .line 120
    :cond_77
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_66

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 127
    .line 128
    .line 129
    :try_start_80
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_85

    .line 130
    .line 131
    .line 132
    goto :goto_5d

    .line 133
    :goto_84
    return-void

    .line 134
    :catchall_85
    move-exception v0

    .line 135
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :goto_8a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    .line 144
    .line 145
    :try_start_90
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_97

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 149
    .line 150
    .line 151
    throw v1

    .line 152
    :catchall_97
    move-exception v0

    .line 153
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :pswitch_9c
    iget-object v0, p0, Lcom/getcapacitor/p;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lcom/getcapacitor/MessageHandler;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/getcapacitor/p;->d:Ljava/io/Serializable;

    .line 162
    .line 163
    check-cast v1, Ljava/lang/String;

    .line 164
    .line 165
    iget-object v2, p0, Lcom/getcapacitor/p;->e:Ljava/io/Serializable;

    .line 166
    .line 167
    check-cast v2, Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p0, Lcom/getcapacitor/p;->f:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v3, Ljava/lang/String;

    .line 172
    .line 173
    iget-object v4, p0, Lcom/getcapacitor/p;->b:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v0, v4, v1, v2, v3}, Lcom/getcapacitor/MessageHandler;->b(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_9c
    .end packed-switch
.end method
