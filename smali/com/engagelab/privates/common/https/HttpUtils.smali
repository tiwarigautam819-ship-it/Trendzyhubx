###### Class com.engagelab.privates.common.https.HttpUtils (com.engagelab.privates.common.https.HttpUtils)
.class public Lcom/engagelab/privates/common/https/HttpUtils;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClients"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 10

    .line 1
    const-string v0, "close failed "

    .line 2
    .line 3
    const-string v1, "responseCode:"

    .line 4
    .line 5
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "HttpClients"

    .line 11
    .line 12
    if-nez p0, :cond_13

    .line 13
    .line 14
    const-string p0, "can\'t get, network is disConnected"

    .line 15
    .line 16
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "requestUrl:"

    .line 23
    .line 24
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_24
    new-instance p0, Ljava/net/URL;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_2f} :catch_100
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_fb
    .catchall {:try_start_24 .. :try_end_2f} :catchall_f6

    .line 47
    .line 48
    :try_start_2f
    const-string p1, "GET"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 p1, 0x1770

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 59
    .line 60
    .line 61
    const-string p1, "Authorization"

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_41} :catch_dc
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_41} :catch_d8
    .catchall {:try_start_2f .. :try_end_41} :catchall_d5

    .line 64
    .line 65
    .line 66
    const-string p1, "Charset"

    .line 67
    .line 68
    :try_start_43
    sget-object p2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_43 .. :try_end_4a} :catch_dc
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_d8
    .catchall {:try_start_43 .. :try_end_4a} :catchall_d5

    .line 74
    .line 75
    if-eqz p1, :cond_72

    .line 76
    .line 77
    :try_start_4c
    move-object p1, p0

    .line 78
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 79
    .line 80
    new-instance p2, Lcom/engagelab/privates/common/https/HostVerifier;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-direct {p2, v4}, Lcom/engagelab/privates/common/https/HostVerifier;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5f
    .catch Ljava/net/MalformedURLException; {:try_start_4c .. :try_end_5f} :catch_64
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_62
    .catchall {:try_start_4c .. :try_end_5f} :catchall_60

    .line 94
    .line 95
    .line 96
    goto :goto_72

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    goto :goto_66

    .line 99
    :catch_62
    move-exception p1

    .line 100
    goto :goto_6a

    .line 101
    :catch_64
    move-exception p1

    .line 102
    goto :goto_6e

    .line 103
    :goto_66
    move-object p2, v2

    .line 104
    move-object v1, p2

    .line 105
    goto/16 :goto_106

    .line 106
    .line 107
    :goto_6a
    move-object p2, v2

    .line 108
    move-object v1, p2

    .line 109
    goto/16 :goto_137

    .line 110
    .line 111
    :goto_6e
    move-object p2, v2

    .line 112
    move-object v1, p2

    .line 113
    goto/16 :goto_166

    .line 114
    .line 115
    :cond_72
    :goto_72
    const/4 p1, 0x1

    .line 116
    :try_start_73
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 117
    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0xc8

    .line 146
    .line 147
    if-ne p2, v1, :cond_e0

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 150
    .line 151
    .line 152
    move-result-object p2
    :try_end_98
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_98} :catch_dc
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_98} :catch_d8
    .catchall {:try_start_73 .. :try_end_98} :catchall_d5

    .line 153
    :try_start_98
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9d
    .catch Ljava/net/MalformedURLException; {:try_start_98 .. :try_end_9d} :catch_d2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9d} :catch_cf
    .catchall {:try_start_98 .. :try_end_9d} :catchall_cd

    .line 156
    .line 157
    .line 158
    const/16 v4, 0x400

    .line 159
    .line 160
    :try_start_9f
    new-array v4, v4, [B

    .line 161
    .line 162
    :goto_a1
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/4 v6, -0x1

    .line 167
    if-eq v5, v6, :cond_b5

    .line 168
    .line 169
    invoke-virtual {v1, v4, p1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 170
    .line 171
    .line 172
    goto :goto_a1

    .line 173
    :catchall_ac
    move-exception p1

    .line 174
    goto/16 :goto_106

    .line 175
    .line 176
    :catch_af
    move-exception p1

    .line 177
    goto/16 :goto_137

    .line 178
    .line 179
    :catch_b2
    move-exception p1

    .line 180
    goto/16 :goto_166

    .line 181
    .line 182
    :cond_b5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 183
    .line 184
    .line 185
    move-result-object p1
    :try_end_b9
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_b9} :catch_b2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b9} :catch_af
    .catchall {:try_start_9f .. :try_end_b9} :catchall_ac

    .line 186
    :try_start_b9
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_c3

    .line 190
    .line 191
    .line 192
    :try_start_bf
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_cc
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :catchall_c3
    move-exception p0

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p0, p2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :catch_cc
    return-object p1

    .line 206
    :catchall_cd
    move-exception p1

    .line 207
    goto :goto_105

    .line 208
    :catch_cf
    move-exception p1

    .line 209
    goto/16 :goto_136

    .line 210
    .line 211
    :catch_d2
    move-exception p1

    .line 212
    goto/16 :goto_165

    .line 213
    .line 214
    :catchall_d5
    move-exception p1

    .line 215
    move-object p2, v2

    .line 216
    goto :goto_105

    .line 217
    :catch_d8
    move-exception p1

    .line 218
    move-object p2, v2

    .line 219
    goto/16 :goto_136

    .line 220
    .line 221
    :catch_dc
    move-exception p1

    .line 222
    move-object p2, v2

    .line 223
    goto/16 :goto_165

    .line 224
    .line 225
    :cond_e0
    :try_start_e0
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_eb

    .line 229
    .line 230
    .line 231
    :try_start_e6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_193
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_eb

    .line 232
    .line 233
    .line 234
    goto/16 :goto_193

    .line 235
    .line 236
    :catchall_eb
    move-exception p0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_193

    .line 246
    .line 247
    :catchall_f6
    move-exception p0

    .line 248
    move-object p1, p0

    .line 249
    move-object p0, v2

    .line 250
    move-object p2, p0

    .line 251
    goto :goto_105

    .line 252
    :catch_fb
    move-exception p0

    .line 253
    move-object p1, p0

    .line 254
    move-object p0, v2

    .line 255
    move-object p2, p0

    .line 256
    goto :goto_136

    .line 257
    :catch_100
    move-exception p0

    .line 258
    move-object p1, p0

    .line 259
    move-object p0, v2

    .line 260
    move-object p2, p0

    .line 261
    goto :goto_165

    .line 262
    :goto_105
    move-object v1, v2

    .line 263
    :goto_106
    :try_start_106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v5, "get failed "

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_106 .. :try_end_11e} :catchall_134

    .line 285
    .line 286
    .line 287
    :try_start_11e
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    .line 289
    .line 290
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_12a

    .line 291
    .line 292
    .line 293
    if-eqz p0, :cond_193

    .line 294
    .line 295
    :try_start_126
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_193
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    .line 296
    .line 297
    .line 298
    goto :goto_193

    .line 299
    :catchall_12a
    move-exception p0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_193

    .line 309
    :catchall_134
    move-exception p1

    .line 310
    goto :goto_194

    .line 311
    :goto_136
    move-object v1, v2

    .line 312
    :goto_137
    :try_start_137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v5, "get ioException:"

    .line 318
    .line 319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_137 .. :try_end_14f} :catchall_134

    .line 334
    .line 335
    .line 336
    :try_start_14f
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    .line 338
    .line 339
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_15b

    .line 340
    .line 341
    .line 342
    if-eqz p0, :cond_193

    .line 343
    .line 344
    :try_start_157
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_193
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    .line 345
    .line 346
    .line 347
    goto :goto_193

    .line 348
    :catchall_15b
    move-exception p0

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_193

    .line 358
    :goto_165
    move-object v1, v2

    .line 359
    :goto_166
    :try_start_166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v5, "get malformedURLException:"

    .line 365
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17e
    .catchall {:try_start_166 .. :try_end_17e} :catchall_134

    .line 381
    .line 382
    .line 383
    :try_start_17e
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 384
    .line 385
    .line 386
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_18a

    .line 387
    .line 388
    .line 389
    if-eqz p0, :cond_193

    .line 390
    .line 391
    :try_start_186
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_189} :catch_193
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    .line 392
    .line 393
    .line 394
    goto :goto_193

    .line 395
    :catchall_18a
    move-exception p0

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :catch_193
    :cond_193
    :goto_193
    return-object v2

    .line 405
    :goto_194
    :try_start_194
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 406
    .line 407
    .line 408
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_19a
    .catchall {:try_start_194 .. :try_end_19a} :catchall_1a0

    .line 409
    .line 410
    .line 411
    if-eqz p0, :cond_1a9

    .line 412
    .line 413
    :try_start_19c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_1a9
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1a0

    .line 414
    .line 415
    .line 416
    goto :goto_1a9

    .line 417
    :catchall_1a0
    move-exception p0

    .line 418
    new-instance p2, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-static {p0, p2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :catch_1a9
    :cond_1a9
    :goto_1a9
    throw p1
.end method

.method public static postPair(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BZ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    const-string p0, "HttpClients"

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_f} :catch_d5
    .catchall {:try_start_4 .. :try_end_f} :catchall_d0

    :try_start_f
    const-string v2, "POST"

    .line 3
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1770

    .line 4
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_40
    move-exception p2

    move-object v2, v0

    goto :goto_86

    :catch_43
    move-exception p2

    move-object v2, v0

    goto :goto_8d

    .line 9
    :cond_46
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p2, :cond_5d

    .line 10
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lcom/engagelab/privates/common/https/HostVerifier;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/engagelab/privates/common/https/HostVerifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_5d
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 12
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 14
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_6c
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_6c} :catch_43
    .catchall {:try_start_f .. :try_end_6c} :catchall_40

    .line 15
    :try_start_6c
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 17
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 18
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3
    :try_end_79
    .catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_79} :catch_ce
    .catchall {:try_start_6c .. :try_end_79} :catchall_cc

    if-eqz p4, :cond_bb

    const/16 p4, 0xc8

    if-ne p3, p4, :cond_92

    .line 19
    :try_start_7f
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    goto :goto_96

    :catchall_84
    move-exception p2

    move v1, p3

    :goto_86
    move-object p4, v0

    move-object v3, p4

    move p3, v1

    goto/16 :goto_da

    :catch_8b
    move-exception p2

    move v1, p3

    :goto_8d
    move-object p4, v0

    move-object v3, p4

    move p3, v1

    goto/16 :goto_107

    .line 20
    :cond_92
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_96
    .catch Ljava/net/SocketTimeoutException; {:try_start_7f .. :try_end_96} :catch_8b
    .catchall {:try_start_7f .. :try_end_96} :catchall_84

    .line 21
    :goto_96
    :try_start_96
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9b
    .catch Ljava/net/SocketTimeoutException; {:try_start_96 .. :try_end_9b} :catch_b5
    .catchall {:try_start_96 .. :try_end_9b} :catchall_b3

    const/16 v4, 0x1000

    .line 22
    :try_start_9d
    new-array v4, v4, [B

    .line 23
    :goto_9f
    invoke-virtual {p4, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_ae

    .line 24
    invoke-virtual {v3, v4, p2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9f

    :catchall_a9
    move-exception p2

    goto :goto_da

    :catch_ab
    move-exception p2

    goto/16 :goto_107

    .line 25
    :cond_ae
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_b2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9d .. :try_end_b2} :catch_ab
    .catchall {:try_start_9d .. :try_end_b2} :catchall_a9

    goto :goto_be

    :catchall_b3
    move-exception p2

    goto :goto_b7

    :catch_b5
    move-exception p2

    goto :goto_b9

    :goto_b7
    move-object v3, v0

    goto :goto_da

    :goto_b9
    move-object v3, v0

    goto :goto_107

    :cond_bb
    move-object p0, v0

    move-object p4, p0

    move-object v3, p4

    .line 26
    :goto_be
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 28
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_131

    :catchall_cc
    move-exception p2

    goto :goto_86

    :catch_ce
    move-exception p2

    goto :goto_8d

    :catchall_d0
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    move-object v2, p1

    goto :goto_86

    :catch_d5
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    move-object v2, p1

    goto :goto_8d

    .line 30
    :goto_da
    :try_start_da
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_f6
    .catchall {:try_start_da .. :try_end_f6} :catchall_105

    .line 33
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_134

    goto :goto_131

    :catchall_105
    move-exception p0

    goto :goto_13e

    .line 37
    :goto_107
    :try_start_107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post socketTimeoutException:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_123
    .catchall {:try_start_107 .. :try_end_123} :catchall_105

    .line 40
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_134

    .line 44
    :goto_131
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_134
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 46
    :goto_13e
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    invoke-static {v3}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_14f

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_14f
    throw p0
.end method

.method public static postPair(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BZLjava/util/Map;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    const-string p0, "HttpClients"

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 52
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_f} :catch_111
    .catchall {:try_start_4 .. :try_end_f} :catchall_10c

    :try_start_f
    const-string v2, "POST"

    .line 54
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1770

    .line 55
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 56
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 57
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 58
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_40
    move-exception p2

    move-object v2, v0

    goto/16 :goto_c4

    :catch_44
    move-exception p2

    move-object v2, v0

    goto/16 :goto_c9

    .line 60
    :cond_48
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p2, :cond_5f

    .line 61
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v2, Lcom/engagelab/privates/common/https/HostVerifier;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/engagelab/privates/common/https/HostVerifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_5f
    const/4 p2, 0x1

    .line 62
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 63
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 65
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_6e
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_6e} :catch_44
    .catchall {:try_start_f .. :try_end_6e} :catchall_40

    .line 66
    :try_start_6e
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 67
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 69
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3
    :try_end_7b
    .catch Ljava/net/SocketTimeoutException; {:try_start_6e .. :try_end_7b} :catch_10a
    .catchall {:try_start_6e .. :try_end_7b} :catchall_108

    if-eqz p5, :cond_b9

    .line 70
    :try_start_7d
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_89
    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v5, :cond_89

    if-eqz v4, :cond_89

    .line 74
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_89

    .line 75
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p5, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :catchall_b3
    move-exception p2

    move v1, p3

    goto :goto_c4

    :catch_b6
    move-exception p2

    move v1, p3

    goto :goto_c9

    :cond_b9
    if-eqz p4, :cond_f7

    const/16 p4, 0xc8

    if-ne p3, p4, :cond_ce

    .line 76
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    goto :goto_d2

    :goto_c4
    move-object p4, v0

    move-object p5, p4

    move p3, v1

    goto/16 :goto_116

    :goto_c9
    move-object p4, v0

    move-object p5, p4

    move p3, v1

    goto/16 :goto_143

    .line 77
    :cond_ce
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4
    :try_end_d2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7d .. :try_end_d2} :catch_b6
    .catchall {:try_start_7d .. :try_end_d2} :catchall_b3

    .line 78
    :goto_d2
    :try_start_d2
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d7
    .catch Ljava/net/SocketTimeoutException; {:try_start_d2 .. :try_end_d7} :catch_f1
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_ef

    const/16 v3, 0x1000

    .line 79
    :try_start_d9
    new-array v3, v3, [B

    .line 80
    :goto_db
    invoke-virtual {p4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_ea

    .line 81
    invoke-virtual {p5, v3, p2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_db

    :catchall_e5
    move-exception p2

    goto :goto_116

    :catch_e7
    move-exception p2

    goto/16 :goto_143

    .line 82
    :cond_ea
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_ee
    .catch Ljava/net/SocketTimeoutException; {:try_start_d9 .. :try_end_ee} :catch_e7
    .catchall {:try_start_d9 .. :try_end_ee} :catchall_e5

    goto :goto_fa

    :catchall_ef
    move-exception p2

    goto :goto_f3

    :catch_f1
    move-exception p2

    goto :goto_f5

    :goto_f3
    move-object p5, v0

    goto :goto_116

    :goto_f5
    move-object p5, v0

    goto :goto_143

    :cond_f7
    move-object p0, v0

    move-object p4, p0

    move-object p5, p4

    .line 83
    :goto_fa
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_16d

    :catchall_108
    move-exception p2

    goto :goto_c4

    :catch_10a
    move-exception p2

    goto :goto_c9

    :catchall_10c
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    move-object v2, p1

    goto :goto_c4

    :catch_111
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    move-object v2, p1

    goto :goto_c9

    .line 87
    :goto_116
    :try_start_116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_132
    .catchall {:try_start_116 .. :try_end_132} :catchall_141

    .line 90
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_170

    goto :goto_16d

    :catchall_141
    move-exception p0

    goto :goto_17a

    .line 94
    :goto_143
    :try_start_143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post socketTimeoutException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_15f
    .catchall {:try_start_143 .. :try_end_15f} :catchall_141

    .line 97
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_170

    .line 101
    :goto_16d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    :cond_170
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 103
    :goto_17a
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 105
    invoke-static {p4}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_18b

    .line 107
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    :cond_18b
    throw p0
.end method
