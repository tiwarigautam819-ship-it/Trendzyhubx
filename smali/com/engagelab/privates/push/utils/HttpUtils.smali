###### Class com.engagelab.privates.push.utils.HttpUtils (com.engagelab.privates.push.utils.HttpUtils)
.class public Lcom/engagelab/privates/push/utils/HttpUtils;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"

.field private static resultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static deleteErrorCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    .line 6
    .line 7
    .line 8
    :catchall_7
    :cond_7
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Z)[B
    .registers 12

    .line 1
    const-string v0, "close failed "

    .line 2
    .line 3
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "HttpClient"

    .line 9
    .line 10
    if-nez p0, :cond_11

    .line 11
    .line 12
    const-string p0, "can\'t get, network is disConnected"

    .line 13
    .line 14
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_11
    :try_start_11
    new-instance p0, Ljava/net/URL;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11 .. :try_end_1c} :catch_158
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_1c} :catch_158
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_1c} :catch_c0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_bc
    .catchall {:try_start_11 .. :try_end_1c} :catchall_b8

    .line 28
    .line 29
    :try_start_1c
    const-string v3, "GET"

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x1770

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 40
    .line 41
    .line 42
    const-string v3, "Accept-Encoding"

    .line 43
    .line 44
    const-string v4, "identity"

    .line 45
    .line 46
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "Connection"

    .line 50
    .line 51
    const-string v4, "Close"

    .line 52
    .line 53
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1c .. :try_end_37} :catch_b5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_37} :catch_b5
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_37} :catch_5e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_5a
    .catchall {:try_start_1c .. :try_end_37} :catchall_56

    .line 54
    .line 55
    .line 56
    const-string v3, "Charset"

    .line 57
    .line 58
    :try_start_39
    sget-object v4, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    instance-of v3, p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 64
    .line 65
    if-eqz v3, :cond_62

    .line 66
    .line 67
    move-object v3, p0

    .line 68
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 69
    .line 70
    new-instance v4, Lcom/engagelab/privates/common/https/HostVerifier;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v4, v5}, Lcom/engagelab/privates/common/https/HostVerifier;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 84
    .line 85
    .line 86
    goto :goto_62

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    move-object v4, v1

    .line 89
    goto/16 :goto_c4

    .line 90
    .line 91
    :catch_5a
    move-exception p1

    .line 92
    move-object v4, v1

    .line 93
    goto/16 :goto_f8

    .line 94
    .line 95
    :catch_5e
    move-exception p1

    .line 96
    move-object v4, v1

    .line 97
    goto/16 :goto_129

    .line 98
    .line 99
    :cond_62
    :goto_62
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v5, 0xc8

    .line 115
    .line 116
    if-ne v4, v5, :cond_9d

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 119
    .line 120
    .line 121
    move-result-object v4
    :try_end_79
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_39 .. :try_end_79} :catch_b5
    .catch Ljava/net/SocketTimeoutException; {:try_start_39 .. :try_end_79} :catch_b5
    .catch Ljava/net/MalformedURLException; {:try_start_39 .. :try_end_79} :catch_5e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_79} :catch_5a
    .catchall {:try_start_39 .. :try_end_79} :catchall_56

    .line 122
    :try_start_79
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_79 .. :try_end_7e} :catch_15a
    .catch Ljava/net/SocketTimeoutException; {:try_start_79 .. :try_end_7e} :catch_15a
    .catch Ljava/net/MalformedURLException; {:try_start_79 .. :try_end_7e} :catch_9a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7e} :catch_97
    .catchall {:try_start_79 .. :try_end_7e} :catchall_95

    .line 125
    .line 126
    .line 127
    const/16 v6, 0x400

    .line 128
    .line 129
    :try_start_80
    new-array v6, v6, [B

    .line 130
    .line 131
    :goto_82
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    const/4 v8, -0x1

    .line 136
    if-eq v7, v8, :cond_9f

    .line 137
    .line 138
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_80 .. :try_end_8c} :catch_15b
    .catch Ljava/net/SocketTimeoutException; {:try_start_80 .. :try_end_8c} :catch_15b
    .catch Ljava/net/MalformedURLException; {:try_start_80 .. :try_end_8c} :catch_92
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8c} :catch_8f
    .catchall {:try_start_80 .. :try_end_8c} :catchall_8d

    .line 139
    .line 140
    .line 141
    goto :goto_82

    .line 142
    :catchall_8d
    move-exception p1

    .line 143
    goto :goto_c5

    .line 144
    :catch_8f
    move-exception p1

    .line 145
    goto/16 :goto_f9

    .line 146
    .line 147
    :catch_92
    move-exception p1

    .line 148
    goto/16 :goto_12a

    .line 149
    .line 150
    :catchall_95
    move-exception p1

    .line 151
    goto :goto_c4

    .line 152
    :catch_97
    move-exception p1

    .line 153
    goto/16 :goto_f8

    .line 154
    .line 155
    :catch_9a
    move-exception p1

    .line 156
    goto/16 :goto_129

    .line 157
    .line 158
    :cond_9d
    move-object v4, v1

    .line 159
    move-object v5, v4

    .line 160
    :cond_9f
    :try_start_9f
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_ad

    .line 167
    .line 168
    .line 169
    :try_start_a8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_1a4
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ad

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1a4

    .line 173
    .line 174
    :catchall_ad
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_193

    .line 181
    .line 182
    :catch_b5
    move-object v4, v1

    .line 183
    goto/16 :goto_15a

    .line 184
    .line 185
    :catchall_b8
    move-exception p1

    .line 186
    move-object p0, v1

    .line 187
    move-object v4, p0

    .line 188
    goto :goto_c4

    .line 189
    :catch_bc
    move-exception p1

    .line 190
    move-object p0, v1

    .line 191
    move-object v4, p0

    .line 192
    goto :goto_f8

    .line 193
    :catch_c0
    move-exception p1

    .line 194
    move-object p0, v1

    .line 195
    move-object v4, p0

    .line 196
    goto :goto_129

    .line 197
    :goto_c4
    move-object v5, v1

    .line 198
    :goto_c5
    :try_start_c5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v3, "get failed "

    .line 204
    .line 205
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_c5 .. :try_end_dd} :catchall_f5

    .line 220
    .line 221
    .line 222
    :try_start_dd
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_ed

    .line 229
    .line 230
    .line 231
    if-eqz p0, :cond_1a4

    .line 232
    .line 233
    :try_start_e8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_1a4
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ed

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1a4

    .line 237
    .line 238
    :catchall_ed
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_193

    .line 245
    .line 246
    :catchall_f5
    move-exception p1

    .line 247
    goto/16 :goto_165

    .line 248
    .line 249
    :goto_f8
    move-object v5, v1

    .line 250
    :goto_f9
    :try_start_f9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v3, "get ioException:"

    .line 256
    .line 257
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_f9 .. :try_end_111} :catchall_f5

    .line 272
    .line 273
    .line 274
    :try_start_111
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_121

    .line 281
    .line 282
    .line 283
    if-eqz p0, :cond_1a4

    .line 284
    .line 285
    :try_start_11c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_1a4
    .catchall {:try_start_11c .. :try_end_11f} :catchall_121

    .line 286
    .line 287
    .line 288
    goto/16 :goto_1a4

    .line 289
    .line 290
    :catchall_121
    move-exception p0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_193

    .line 297
    .line 298
    :goto_129
    move-object v5, v1

    .line 299
    :goto_12a
    :try_start_12a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v3, "get malformedURLException:"

    .line 305
    .line 306
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_12a .. :try_end_142} :catchall_f5

    .line 321
    .line 322
    .line 323
    :try_start_142
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_14b
    .catchall {:try_start_142 .. :try_end_14b} :catchall_151

    .line 330
    .line 331
    .line 332
    if-eqz p0, :cond_1a4

    .line 333
    .line 334
    :try_start_14d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_150} :catch_1a4
    .catchall {:try_start_14d .. :try_end_150} :catchall_151

    .line 335
    .line 336
    .line 337
    goto :goto_1a4

    .line 338
    :catchall_151
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    goto :goto_193

    .line 345
    :catch_158
    move-object p0, v1

    .line 346
    move-object v4, p0

    .line 347
    :catch_15a
    :goto_15a
    move-object v5, v1

    .line 348
    :catch_15b
    if-eqz p2, :cond_17e

    .line 349
    .line 350
    :try_start_15d
    sget-object p2, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 351
    .line 352
    const-string v3, "1000"

    .line 353
    .line 354
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_f5

    .line 355
    .line 356
    .line 357
    goto :goto_17e

    .line 358
    :goto_165
    :try_start_165
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_16e
    .catchall {:try_start_165 .. :try_end_16e} :catchall_174

    .line 365
    .line 366
    .line 367
    if-eqz p0, :cond_17d

    .line 368
    .line 369
    :try_start_170
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_173} :catch_17d
    .catchall {:try_start_170 .. :try_end_173} :catchall_174

    .line 370
    .line 371
    .line 372
    goto :goto_17d

    .line 373
    :catchall_174
    move-exception p0

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {p0, p2, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :catch_17d
    :cond_17d
    :goto_17d
    throw p1

    .line 383
    :cond_17e
    :goto_17e
    :try_start_17e
    invoke-static {v5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_187
    .catchall {:try_start_17e .. :try_end_187} :catchall_18d

    .line 390
    .line 391
    .line 392
    if-eqz p0, :cond_1a4

    .line 393
    .line 394
    :try_start_189
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_18c} :catch_1a4
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    .line 395
    .line 396
    .line 397
    goto :goto_1a4

    .line 398
    :catchall_18d
    move-exception p0

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    :goto_193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :catch_1a4
    :cond_1a4
    :goto_1a4
    if-nez v5, :cond_1a7

    .line 422
    .line 423
    return-object v1

    .line 424
    :cond_1a7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    return-object p0
.end method

.method public static getErrorCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_1b

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1b

    .line 10
    .line 11
    sget-object v0, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 18
    .line 19
    sget-object v0, Lcom/engagelab/privates/push/utils/HttpUtils;->resultMap:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method
