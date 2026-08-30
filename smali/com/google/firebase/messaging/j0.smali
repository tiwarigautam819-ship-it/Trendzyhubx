###### Class com.google.firebase.messaging.j0 (com.google.firebase.messaging.j0)
.class public final synthetic Lcom/google/firebase/messaging/j0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/d;
.implements Lk2/l;
.implements Ln3/b;
.implements Lv4/d;
.implements Lq2/n;
.implements Ld/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/google/firebase/messaging/j0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 11

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/j0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_118

    .line 9
    .line 10
    .line 11
    check-cast v4, Lcom/google/firebase/messaging/y;

    .line 12
    .line 13
    iget-object v0, v4, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lm3/d;

    .line 16
    .line 17
    check-cast v0, Lm3/h;

    .line 18
    .line 19
    new-instance v5, Lcom/getcapacitor/n;

    .line 20
    .line 21
    const/16 v6, 0xc

    .line 22
    .line 23
    invoke-direct {v5, v6}, Lcom/getcapacitor/n;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v5}, Lm3/h;->g(Lm3/f;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_37

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lf3/i;

    .line 47
    .line 48
    iget-object v6, v4, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v6, Lc5/h;

    .line 51
    .line 52
    invoke-virtual {v6, v5, v1, v3}, Lc5/h;->t(Lf3/i;IZ)V

    .line 53
    .line 54
    .line 55
    goto :goto_23

    .line 56
    :cond_37
    return-object v2

    .line 57
    :pswitch_38
    check-cast v4, Ll3/i;

    .line 58
    .line 59
    iget-object v0, v4, Ll3/i;->i:Lm3/c;

    .line 60
    .line 61
    check-cast v0, Lm3/h;

    .line 62
    .line 63
    invoke-virtual {v0}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 68
    .line 69
    .line 70
    :try_start_45
    const-string v3, "DELETE FROM log_event_dropped"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lm3/h;->b:Lo3/a;

    .line 87
    .line 88
    invoke-virtual {v0}, Lo3/a;->f()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_70

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :catchall_70
    move-exception v0

    .line 114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :pswitch_75
    check-cast v4, Lm3/d;

    .line 119
    .line 120
    check-cast v4, Lm3/h;

    .line 121
    .line 122
    iget-object v0, v4, Lm3/h;->b:Lo3/a;

    .line 123
    .line 124
    invoke-virtual {v0}, Lo3/a;->f()J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    iget-object v0, v4, Lm3/h;->d:Lm3/a;

    .line 129
    .line 130
    iget-wide v7, v0, Lm3/a;->d:J

    .line 131
    .line 132
    sub-long/2addr v5, v7

    .line 133
    invoke-virtual {v4}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 138
    .line 139
    .line 140
    :try_start_8b
    const-string v2, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 141
    .line 142
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    filled-new-array {v5}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 151
    .line 152
    .line 153
    move-result-object v2
    :try_end_99
    .catchall {:try_start_8b .. :try_end_99} :catchall_c4

    .line 154
    :goto_99
    :try_start_99
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_ae

    .line 159
    .line 160
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    int-to-long v8, v6

    .line 169
    sget-object v6, Li3/c;->c:Li3/c;

    .line 170
    .line 171
    invoke-virtual {v4, v8, v9, v6, v7}, Lm3/h;->s(JLi3/c;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_99 .. :try_end_ad} :catchall_c6

    .line 172
    .line 173
    .line 174
    goto :goto_99

    .line 175
    :cond_ae
    :try_start_ae
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    .line 177
    .line 178
    const-string v1, "events"

    .line 179
    .line 180
    const-string v2, "timestamp_ms < ?"

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_bc
    .catchall {:try_start_ae .. :try_end_bc} :catchall_c4

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 190
    .line 191
    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :catchall_c4
    move-exception v1

    .line 198
    goto :goto_cb

    .line 199
    :catchall_c6
    move-exception v1

    .line 200
    :try_start_c7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 201
    .line 202
    .line 203
    throw v1
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_c4

    .line 204
    :goto_cb
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :pswitch_cf
    check-cast v4, Lm3/c;

    .line 209
    .line 210
    check-cast v4, Lm3/h;

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    sget v0, Li3/a;->e:I

    .line 216
    .line 217
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v2, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 223
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v2, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 232
    .line 233
    const-string v1, ""

    .line 234
    .line 235
    iput-object v1, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 236
    .line 237
    new-instance v1, Ljava/util/HashMap;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v2, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    .line 243
    .line 244
    invoke-virtual {v4}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    .line 250
    .line 251
    :try_start_fa
    new-array v3, v3, [Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    new-instance v3, Lcom/google/firebase/messaging/o;

    .line 258
    .line 259
    const/4 v6, 0x4

    .line 260
    invoke-direct {v3, v4, v1, v0, v6}, Lcom/google/firebase/messaging/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v3}, Lm3/h;->v(Landroid/database/Cursor;Lm3/f;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Li3/a;

    .line 268
    .line 269
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10f
    .catchall {:try_start_fa .. :try_end_10f} :catchall_113

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :catchall_113
    move-exception v0

    .line 277
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :pswitch_data_118
    .packed-switch 0x6
        :pswitch_cf
        :pswitch_75
        :pswitch_38
    .end packed-switch
.end method

.method public b(Lc5/h;)Ld3/b;
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ld3/c;

    .line 8
    .line 9
    iget-object v3, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ljava/net/URL;

    .line 12
    .line 13
    const-string v4, "CctTransportBackend"

    .line 14
    .line 15
    invoke-static {v4}, Ly1/j;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x4

    .line 20
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x1

    .line 26
    if-eqz v7, :cond_28

    .line 27
    .line 28
    new-array v7, v9, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v3, v7, v8

    .line 31
    .line 32
    const-string v10, "Making request to: %s"

    .line 33
    .line 34
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_28
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    const/16 v5, 0x7530

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    .line 51
    .line 52
    iget v5, v2, Ld3/c;->g:I

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 61
    .line 62
    .line 63
    const-string v5, "POST"

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v5, "User-Agent"

    .line 69
    .line 70
    const-string v7, "datatransport/3.1.9 android/"

    .line 71
    .line 72
    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v5, "Content-Encoding"

    .line 76
    .line 77
    const-string v7, "gzip"

    .line 78
    .line 79
    invoke-virtual {v3, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v10, "application/json"

    .line 83
    .line 84
    const-string v11, "Content-Type"

    .line 85
    .line 86
    invoke-virtual {v3, v11, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v10, "Accept-Encoding"

    .line 90
    .line 91
    invoke-virtual {v3, v10, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v10, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v10, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v10, :cond_68

    .line 99
    .line 100
    const-string v12, "X-Goog-Api-Key"

    .line 101
    .line 102
    invoke-virtual {v3, v12, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    :try_start_68
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v14
    :try_end_6c
    .catch Ljava/net/ConnectException; {:try_start_68 .. :try_end_6c} :catch_c0
    .catch Ljava/net/UnknownHostException; {:try_start_68 .. :try_end_6c} :catch_ba
    .catch Lz4/b; {:try_start_68 .. :try_end_6c} :catch_b7
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_b4

    .line 109
    :try_start_6c
    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    .line 110
    .line 111
    invoke-direct {v15, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_172

    .line 112
    .line 113
    .line 114
    :try_start_71
    iget-object v2, v2, Ld3/c;->a:Lo5/c;

    .line 115
    .line 116
    iget-object v0, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Le3/i;

    .line 119
    .line 120
    move/from16 v22, v8

    .line 121
    .line 122
    new-instance v8, Ljava/io/BufferedWriter;

    .line 123
    .line 124
    new-instance v10, Ljava/io/OutputStreamWriter;

    .line 125
    .line 126
    invoke-direct {v10, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v8, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 130
    .line 131
    .line 132
    new-instance v16, Lb5/e;

    .line 133
    .line 134
    iget-object v2, v2, Lo5/c;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v2, Lb5/d;

    .line 137
    .line 138
    iget-object v10, v2, Lb5/d;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v12, v2, Lb5/d;->b:Ljava/util/HashMap;

    .line 141
    .line 142
    iget-object v13, v2, Lb5/d;->c:Lb5/a;

    .line 143
    .line 144
    iget-boolean v2, v2, Lb5/d;->d:Z

    .line 145
    .line 146
    move/from16 v21, v2

    .line 147
    .line 148
    move-object/from16 v17, v8

    .line 149
    .line 150
    move-object/from16 v18, v10

    .line 151
    .line 152
    move-object/from16 v19, v12

    .line 153
    .line 154
    move-object/from16 v20, v13

    .line 155
    .line 156
    invoke-direct/range {v16 .. v21}, Lb5/e;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lb5/a;Z)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v2, v16

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Lb5/e;->f(Ljava/lang/Object;)Lb5/e;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lb5/e;->h()V

    .line 165
    .line 166
    .line 167
    iget-object v0, v2, Lb5/e;->b:Landroid/util/JsonWriter;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_ab
    .catchall {:try_start_71 .. :try_end_ab} :catchall_177

    .line 170
    .line 171
    .line 172
    :try_start_ab
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_172

    .line 173
    .line 174
    .line 175
    if-eqz v14, :cond_c2

    .line 176
    .line 177
    :try_start_b0
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_b3
    .catch Ljava/net/ConnectException; {:try_start_b0 .. :try_end_b3} :catch_c0
    .catch Ljava/net/UnknownHostException; {:try_start_b0 .. :try_end_b3} :catch_ba
    .catch Lz4/b; {:try_start_b0 .. :try_end_b3} :catch_b7
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    .line 178
    .line 179
    .line 180
    goto :goto_c2

    .line 181
    :catch_b4
    move-exception v0

    .line 182
    goto/16 :goto_18d

    .line 183
    .line 184
    :catch_b7
    move-exception v0

    .line 185
    goto/16 :goto_18d

    .line 186
    .line 187
    :catch_ba
    move-exception v0

    .line 188
    :goto_bb
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    const/4 v7, 0x0

    .line 191
    goto/16 :goto_19d

    .line 192
    .line 193
    :catch_c0
    move-exception v0

    .line 194
    goto :goto_bb

    .line 195
    :cond_c2
    :goto_c2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v4}, Ly1/j;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_e1

    .line 212
    .line 213
    new-array v6, v9, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v2, v6, v22

    .line 216
    .line 217
    const-string v2, "Status Code: %d"

    .line 218
    .line 219
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_e1
    const-string v2, "Content-Type: %s"

    .line 227
    .line 228
    invoke-virtual {v3, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v4, v2, v6}, Ly1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const-string v2, "Content-Encoding: %s"

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-static {v4, v2, v6}, Ly1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    const/16 v2, 0x12e

    .line 245
    .line 246
    if-eq v0, v2, :cond_15f

    .line 247
    .line 248
    const/16 v2, 0x12d

    .line 249
    .line 250
    if-eq v0, v2, :cond_15f

    .line 251
    .line 252
    const/16 v2, 0x133

    .line 253
    .line 254
    if-ne v0, v2, :cond_100

    .line 255
    .line 256
    goto :goto_15f

    .line 257
    :cond_100
    const/16 v2, 0xc8

    .line 258
    .line 259
    if-eq v0, v2, :cond_10d

    .line 260
    .line 261
    new-instance v2, Ld3/b;

    .line 262
    .line 263
    const-wide/16 v3, 0x0

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    invoke-direct {v2, v0, v5, v3, v4}, Ld3/b;-><init>(ILjava/net/URL;J)V

    .line 267
    .line 268
    .line 269
    return-object v2

    .line 270
    :cond_10d
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    :try_start_111
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_121

    .line 283
    .line 284
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 285
    .line 286
    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_120
    .catchall {:try_start_111 .. :try_end_120} :catchall_13e

    .line 287
    .line 288
    .line 289
    goto :goto_122

    .line 290
    :cond_121
    move-object v3, v2

    .line 291
    :goto_122
    :try_start_122
    new-instance v4, Ljava/io/BufferedReader;

    .line 292
    .line 293
    new-instance v5, Ljava/io/InputStreamReader;

    .line 294
    .line 295
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Le3/m;->a(Ljava/io/BufferedReader;)Le3/m;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iget-wide v4, v4, Le3/m;->a:J

    .line 306
    .line 307
    new-instance v6, Ld3/b;

    .line 308
    .line 309
    const/4 v7, 0x0

    .line 310
    invoke-direct {v6, v0, v7, v4, v5}, Ld3/b;-><init>(ILjava/net/URL;J)V
    :try_end_138
    .catchall {:try_start_122 .. :try_end_138} :catchall_147

    .line 311
    .line 312
    .line 313
    if-eqz v3, :cond_141

    .line 314
    .line 315
    :try_start_13a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_13e

    .line 316
    .line 317
    .line 318
    goto :goto_141

    .line 319
    :catchall_13e
    move-exception v0

    .line 320
    move-object v3, v0

    .line 321
    goto :goto_154

    .line 322
    :cond_141
    :goto_141
    if-eqz v2, :cond_146

    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 325
    .line 326
    .line 327
    :cond_146
    return-object v6

    .line 328
    :catchall_147
    move-exception v0

    .line 329
    move-object v4, v0

    .line 330
    if-eqz v3, :cond_153

    .line 331
    .line 332
    :try_start_14b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_14f

    .line 333
    .line 334
    .line 335
    goto :goto_153

    .line 336
    :catchall_14f
    move-exception v0

    .line 337
    :try_start_150
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    :cond_153
    :goto_153
    throw v4
    :try_end_154
    .catchall {:try_start_150 .. :try_end_154} :catchall_13e

    .line 341
    :goto_154
    if-eqz v2, :cond_15e

    .line 342
    .line 343
    :try_start_156
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_15a

    .line 344
    .line 345
    .line 346
    goto :goto_15e

    .line 347
    :catchall_15a
    move-exception v0

    .line 348
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    :cond_15e
    :goto_15e
    throw v3

    .line 352
    :cond_15f
    :goto_15f
    const-string v2, "Location"

    .line 353
    .line 354
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    new-instance v3, Ld3/b;

    .line 359
    .line 360
    new-instance v4, Ljava/net/URL;

    .line 361
    .line 362
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-wide/16 v5, 0x0

    .line 366
    .line 367
    invoke-direct {v3, v0, v4, v5, v6}, Ld3/b;-><init>(ILjava/net/URL;J)V

    .line 368
    .line 369
    .line 370
    return-object v3

    .line 371
    :catchall_172
    move-exception v0

    .line 372
    move-object v2, v0

    .line 373
    goto :goto_182

    .line 374
    :goto_175
    move-object v2, v0

    .line 375
    goto :goto_179

    .line 376
    :catchall_177
    move-exception v0

    .line 377
    goto :goto_175

    .line 378
    :goto_179
    :try_start_179
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_17d

    .line 379
    .line 380
    .line 381
    goto :goto_181

    .line 382
    :catchall_17d
    move-exception v0

    .line 383
    :try_start_17e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 384
    .line 385
    .line 386
    :goto_181
    throw v2
    :try_end_182
    .catchall {:try_start_17e .. :try_end_182} :catchall_172

    .line 387
    :goto_182
    if-eqz v14, :cond_18c

    .line 388
    .line 389
    :try_start_184
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_188

    .line 390
    .line 391
    .line 392
    goto :goto_18c

    .line 393
    :catchall_188
    move-exception v0

    .line 394
    :try_start_189
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    :cond_18c
    :goto_18c
    throw v2
    :try_end_18d
    .catch Ljava/net/ConnectException; {:try_start_189 .. :try_end_18d} :catch_c0
    .catch Ljava/net/UnknownHostException; {:try_start_189 .. :try_end_18d} :catch_ba
    .catch Lz4/b; {:try_start_189 .. :try_end_18d} :catch_b7
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18d} :catch_b4

    .line 398
    :goto_18d
    const-string v2, "Couldn\'t encode request, returning with 400"

    .line 399
    .line 400
    invoke-static {v4, v2, v0}, Ly1/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 401
    .line 402
    .line 403
    new-instance v0, Ld3/b;

    .line 404
    .line 405
    const/16 v2, 0x190

    .line 406
    .line 407
    const-wide/16 v5, 0x0

    .line 408
    .line 409
    const/4 v7, 0x0

    .line 410
    invoke-direct {v0, v2, v7, v5, v6}, Ld3/b;-><init>(ILjava/net/URL;J)V

    .line 411
    .line 412
    .line 413
    goto :goto_1a9

    .line 414
    :goto_19d
    const-string v2, "Couldn\'t open connection, returning with 500"

    .line 415
    .line 416
    invoke-static {v4, v2, v0}, Ly1/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Ld3/b;

    .line 420
    .line 421
    const/16 v2, 0x1f4

    .line 422
    .line 423
    invoke-direct {v0, v2, v7, v5, v6}, Ld3/b;-><init>(ILjava/net/URL;J)V

    .line 424
    .line 425
    .line 426
    :goto_1a9
    return-object v0
.end method

.method public c(Ljava/io/File;)V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v3, "file"

    .line 10
    .line 11
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v3, Ll2/b;->m:Ljava/util/HashMap;

    .line 15
    .line 16
    const-class v3, Ll2/f;

    .line 17
    .line 18
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_1b

    .line 24
    .line 25
    :catch_18
    :goto_18
    const/4 v12, 0x0

    .line 26
    goto/16 :goto_c6

    .line 27
    .line 28
    :cond_1b
    :try_start_1b
    new-instance v4, Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    new-instance v7, Ljava/io/DataInputStream;

    .line 38
    .line 39
    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .line 41
    .line 42
    new-array v4, v0, [B

    .line 43
    .line 44
    invoke-virtual {v7, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    if-ge v0, v7, :cond_35

    .line 52
    .line 53
    goto :goto_18

    .line 54
    :cond_35
    invoke-static {v4, v5, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    add-int/lit8 v9, v8, 0x4

    .line 68
    .line 69
    if-ge v0, v9, :cond_47

    .line 70
    .line 71
    goto :goto_18

    .line 72
    :cond_47
    new-instance v10, Ljava/lang/String;

    .line 73
    .line 74
    sget-object v11, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-direct {v10, v4, v7, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 77
    .line 78
    .line 79
    new-instance v7, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    new-array v11, v10, [Ljava/lang/String;

    .line 93
    .line 94
    move v12, v5

    .line 95
    :goto_5e
    if-ge v12, v10, :cond_6b

    .line 96
    .line 97
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    aput-object v13, v11, v12

    .line 102
    .line 103
    add-int/lit8 v12, v12, 0x1

    .line 104
    .line 105
    goto :goto_5e

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    goto :goto_c1

    .line 108
    :cond_6b
    const/4 v8, 0x1

    .line 109
    if-le v10, v8, :cond_71

    .line 110
    .line 111
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_71
    new-instance v12, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    move v13, v5

    .line 120
    :goto_77
    if-ge v13, v10, :cond_c6

    .line 121
    .line 122
    aget-object v14, v11, v13

    .line 123
    .line 124
    if-nez v14, :cond_7e

    .line 125
    .line 126
    goto :goto_ba

    .line 127
    :cond_7e
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    new-array v8, v6, [I

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    :goto_89
    if-ge v5, v6, :cond_96

    .line 139
    .line 140
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getInt(I)I

    .line 141
    .line 142
    .line 143
    move-result v16

    .line 144
    aput v16, v8, v5

    .line 145
    .line 146
    mul-int v1, v1, v16

    .line 147
    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_89

    .line 151
    :cond_96
    mul-int/lit8 v5, v1, 0x4

    .line 152
    .line 153
    add-int v6, v9, v5

    .line 154
    .line 155
    if-le v6, v0, :cond_9e

    .line 156
    .line 157
    goto/16 :goto_18

    .line 158
    .line 159
    :cond_9e
    invoke-static {v4, v9, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 164
    .line 165
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    .line 168
    new-instance v9, Ll2/a;

    .line 169
    .line 170
    invoke-direct {v9, v8}, Ll2/a;-><init>([I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v8, v9, Ll2/a;->c:[F

    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    invoke-virtual {v5, v8, v15, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_b9} :catch_18
    .catchall {:try_start_1b .. :try_end_b9} :catchall_69

    .line 184
    .line 185
    .line 186
    move v9, v6

    .line 187
    :goto_ba
    add-int/lit8 v13, v13, 0x1

    .line 188
    .line 189
    move-object/from16 v1, p0

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v8, 0x1

    .line 193
    goto :goto_77

    .line 194
    :goto_c1
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_18

    .line 198
    .line 199
    :cond_c6
    :goto_c6
    if-eqz v12, :cond_10f

    .line 200
    .line 201
    new-instance v1, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    const-class v3, Ll2/b;

    .line 207
    .line 208
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_d7

    .line 213
    .line 214
    :goto_d5
    const/4 v0, 0x0

    .line 215
    goto :goto_df

    .line 216
    :cond_d7
    :try_start_d7
    sget-object v0, Ll2/b;->m:Ljava/util/HashMap;
    :try_end_d9
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_da

    .line 217
    .line 218
    goto :goto_df

    .line 219
    :catchall_da
    move-exception v0

    .line 220
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_d5

    .line 224
    :goto_df
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_119

    .line 237
    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Ljava/util/Map$Entry;

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_111

    .line 259
    .line 260
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Ljava/lang/String;

    .line 269
    .line 270
    if-nez v5, :cond_111

    .line 271
    .line 272
    :cond_10f
    const/4 v1, 0x0

    .line 273
    goto :goto_119

    .line 274
    :cond_111
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    goto :goto_e7

    .line 282
    :cond_119
    :goto_119
    if-nez v1, :cond_11d

    .line 283
    .line 284
    :catch_11b
    const/4 v6, 0x0

    .line 285
    goto :goto_123

    .line 286
    :cond_11d
    :try_start_11d
    new-instance v0, Ll2/b;

    .line 287
    .line 288
    invoke-direct {v0, v1}, Ll2/b;-><init>(Ljava/util/HashMap;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_122} :catch_11b

    .line 289
    .line 290
    .line 291
    move-object v6, v0

    .line 292
    :goto_123
    if-eqz v6, :cond_17c

    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const/4 v15, 0x0

    .line 299
    :goto_12a
    if-ge v15, v0, :cond_17c

    .line 300
    .line 301
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    add-int/lit8 v15, v15, 0x1

    .line 306
    .line 307
    check-cast v1, Ll2/c;

    .line 308
    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    iget-object v4, v1, Ll2/c;->a:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const/16 v4, 0x5f

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget v4, v1, Ll2/c;->d:I

    .line 325
    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v4, "_rule"

    .line 330
    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    iget-object v4, v1, Ll2/c;->c:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v5, Lb2/d;

    .line 341
    .line 342
    const/4 v7, 0x3

    .line 343
    invoke-direct {v5, v1, v7, v6}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Ljava/io/File;

    .line 347
    .line 348
    invoke-static {}, Ll2/f;->b()Ljava/io/File;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-direct {v1, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    if-eqz v4, :cond_16a

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_16c

    .line 362
    .line 363
    :cond_16a
    const/4 v4, 0x0

    .line 364
    goto :goto_178

    .line 365
    :cond_16c
    new-instance v3, Lk2/m;

    .line 366
    .line 367
    invoke-direct {v3, v4, v1, v5}, Lk2/m;-><init>(Ljava/lang/String;Ljava/io/File;Lk2/l;)V

    .line 368
    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    new-array v1, v4, [Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    .line 375
    .line 376
    goto :goto_12a

    .line 377
    :goto_178
    invoke-virtual {v5, v1}, Lb2/d;->c(Ljava/io/File;)V

    .line 378
    .line 379
    .line 380
    goto :goto_12a

    .line 381
    :cond_17c
    return-void
.end method

.method public create(Lv4/c;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public d(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_21

    .line 6
    .line 7
    :try_start_6
    new-instance p1, Lw2/a;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lw2/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lw2/a;->b:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_15

    .line 15
    .line 16
    iget-object v0, p1, Lw2/a;->c:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v0, :cond_15

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
    if-eqz v0, :cond_21

    .line 24
    .line 25
    iget-object v0, p1, Lw2/a;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lw2/a;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_21

    .line 32
    .line 33
    .line 34
    :catch_21
    :cond_21
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La1/b;

    .line 4
    .line 5
    check-cast p1, Ld/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, La1/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lk1/h;ILandroid/os/Bundle;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/r;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-lt v1, v2, :cond_3d

    .line 12
    .line 13
    and-int/2addr p2, v4

    .line 14
    if-eqz p2, :cond_3d

    .line 15
    .line 16
    :try_start_f
    iget-object p2, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Ll0/g;

    .line 19
    .line 20
    invoke-interface {p2}, Ll0/g;->d()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_34

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Ll0/g;

    .line 26
    .line 27
    invoke-interface {p2}, Ll0/g;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/os/Parcelable;

    .line 32
    .line 33
    if-nez p3, :cond_28

    .line 34
    .line 35
    new-instance p3, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_2e

    .line 41
    :cond_28
    new-instance v2, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    move-object p3, v2

    .line 47
    :goto_2e
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 48
    .line 49
    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3d

    .line 53
    :catch_34
    move-exception p1

    .line 54
    const-string p2, "InputConnectionCompat"

    .line 55
    .line 56
    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 57
    .line 58
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_3d
    :goto_3d
    new-instance p2, Landroid/content/ClipData;

    .line 63
    .line 64
    iget-object p1, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ll0/g;

    .line 67
    .line 68
    invoke-interface {p1}, Ll0/g;->getDescription()Landroid/content/ClipDescription;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v5, Landroid/content/ClipData$Item;

    .line 73
    .line 74
    invoke-interface {p1}, Ll0/g;->c()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v2, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 82
    .line 83
    .line 84
    const/16 v2, 0x1f

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    if-lt v1, v2, :cond_5e

    .line 88
    .line 89
    new-instance v1, Lk1/h;

    .line 90
    .line 91
    invoke-direct {v1, p2, v5}, Lk1/h;-><init>(Landroid/content/ClipData;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_67

    .line 95
    :cond_5e
    new-instance v1, Lj0/d;

    .line 96
    .line 97
    invoke-direct {v1}, Lj0/d;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p2, v1, Lj0/d;->b:Landroid/content/ClipData;

    .line 101
    .line 102
    iput v5, v1, Lj0/d;->c:I

    .line 103
    .line 104
    :goto_67
    invoke-interface {p1}, Ll0/g;->e()Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v1, p1}, Lj0/c;->k(Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, p3}, Lj0/c;->setExtras(Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1}, Lj0/c;->build()Lj0/f;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v0, p1}, Lj0/k0;->f(Landroid/view/View;Lj0/f;)Lj0/f;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_7c

    .line 123
    .line 124
    return v4

    .line 125
    :cond_7c
    return v3
.end method

.method public onComplete(Lp4/i;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/j0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_5a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln6/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lp4/i;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "FirebaseInit"

    .line 15
    .line 16
    if-nez v1, :cond_1f

    .line 17
    .line 18
    const-string v1, "FCM token fetch FAILED"

    .line 19
    .line 20
    invoke-virtual {p1}, Lp4/i;->d()Ljava/lang/Exception;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-interface {v0, p1}, Ln6/a;->onToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3c

    .line 32
    :cond_1f
    invoke-virtual {p1}, Lp4/i;->e()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "\u2705 FCM token ready: "

    .line 41
    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Ln6/c;->b(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p1}, Ln6/a;->onToken(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_3c
    return-void

    .line 62
    :pswitch_3d
    iget-object p1, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_46
    iget-object p1, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/google/firebase/messaging/m0;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Lp4/j;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_51
    iget-object p1, p0, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Landroid/content/Intent;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/firebase/messaging/k0;->b(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_46
        :pswitch_3d
    .end packed-switch
.end method
