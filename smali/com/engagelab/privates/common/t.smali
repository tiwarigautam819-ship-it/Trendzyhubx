###### Class com.engagelab.privates.common.t (com.engagelab.privates.common.t)
.class public Lcom/engagelab/privates/common/t;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Authorization"

    .line 2
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    const-string v0, "Charset"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Accept"

    const-string v0, "application/jason"

    .line 4
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Accept-Encoding"

    const-string v0, "gzip"

    .line 5
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content-type"

    const-string v0, "application/octet-stream"

    .line 6
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    array-length p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-App-Key"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getEncryptType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_43

    const-string p2, "SM4"

    goto :goto_45

    :cond_43
    const-string p2, ""

    :goto_45
    const-string v0, "Encrypt-Type"

    .line 10
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/engagelab/privates/common/https/HttpUtils;->postPair(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BZLjava/util/Map;)Landroid/util/Pair;

    move-result-object p0

    .line 12
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 10

    .line 13
    const-string v0, "close failed "

    const-string v1, "responseCode:"

    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x0

    const-string v3, "HttpClient"

    if-nez p0, :cond_13

    const-string p0, "can\'t get, network is disConnected"

    .line 14
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 15
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "requestUrl:"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :try_start_24
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_2f} :catch_100
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_fb
    .catchall {:try_start_24 .. :try_end_2f} :catchall_f6

    :try_start_2f
    const-string p1, "GET"

    .line 18
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p1, 0x1770

    .line 19
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 20
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string p1, "Authorization"

    .line 21
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_41} :catch_dc
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_41} :catch_d8
    .catchall {:try_start_2f .. :try_end_41} :catchall_d5

    const-string p1, "Charset"

    .line 22
    :try_start_43
    sget-object p2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    instance-of p1, p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_43 .. :try_end_4a} :catch_dc
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_d8
    .catchall {:try_start_43 .. :try_end_4a} :catchall_d5

    if-eqz p1, :cond_72

    .line 24
    :try_start_4c
    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance p2, Lcom/engagelab/privates/common/https/HostVerifier;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Lcom/engagelab/privates/common/https/HostVerifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5f
    .catch Ljava/net/MalformedURLException; {:try_start_4c .. :try_end_5f} :catch_64
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_62
    .catchall {:try_start_4c .. :try_end_5f} :catchall_60

    goto :goto_72

    :catchall_60
    move-exception p1

    goto :goto_66

    :catch_62
    move-exception p1

    goto :goto_6a

    :catch_64
    move-exception p1

    goto :goto_6e

    :goto_66
    move-object p2, v2

    move-object v1, p2

    goto/16 :goto_106

    :goto_6a
    move-object p2, v2

    move-object v1, p2

    goto/16 :goto_137

    :goto_6e
    move-object p2, v2

    move-object v1, p2

    goto/16 :goto_166

    :cond_72
    :goto_72
    const/4 p1, 0x1

    .line 25
    :try_start_73
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 27
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 28
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_e0

    .line 30
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_98
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_98} :catch_dc
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_98} :catch_d8
    .catchall {:try_start_73 .. :try_end_98} :catchall_d5

    .line 31
    :try_start_98
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9d
    .catch Ljava/net/MalformedURLException; {:try_start_98 .. :try_end_9d} :catch_d2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9d} :catch_cf
    .catchall {:try_start_98 .. :try_end_9d} :catchall_cd

    const/16 v4, 0x400

    .line 32
    :try_start_9f
    new-array v4, v4, [B

    .line 33
    :goto_a1
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b5

    .line 34
    invoke-virtual {v1, v4, p1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a1

    :catchall_ac
    move-exception p1

    goto/16 :goto_106

    :catch_af
    move-exception p1

    goto/16 :goto_137

    :catch_b2
    move-exception p1

    goto/16 :goto_166

    .line 35
    :cond_b5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_b9
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_b9} :catch_b2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b9} :catch_af
    .catchall {:try_start_9f .. :try_end_b9} :catchall_ac

    .line 36
    :try_start_b9
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_c3

    .line 38
    :try_start_bf
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_cc
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    return-object p1

    :catchall_c3
    move-exception p0

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :catch_cc
    return-object p1

    :catchall_cd
    move-exception p1

    goto :goto_105

    :catch_cf
    move-exception p1

    goto/16 :goto_136

    :catch_d2
    move-exception p1

    goto/16 :goto_165

    :catchall_d5
    move-exception p1

    move-object p2, v2

    goto :goto_105

    :catch_d8
    move-exception p1

    move-object p2, v2

    goto/16 :goto_136

    :catch_dc
    move-exception p1

    move-object p2, v2

    goto/16 :goto_165

    .line 41
    :cond_e0
    :try_start_e0
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_eb

    .line 43
    :try_start_e6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_193
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_eb

    goto/16 :goto_193

    :catchall_eb
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_193

    :catchall_f6
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    move-object p2, p0

    goto :goto_105

    :catch_fb
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    move-object p2, p0

    goto :goto_136

    :catch_100
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    move-object p2, p0

    goto :goto_165

    :goto_105
    move-object v1, v2

    .line 46
    :goto_106
    :try_start_106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_106 .. :try_end_11e} :catchall_134

    .line 47
    :try_start_11e
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_12a

    if-eqz p0, :cond_193

    .line 49
    :try_start_126
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_193
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_193

    :catchall_12a
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_193

    :catchall_134
    move-exception p1

    goto :goto_194

    :goto_136
    move-object v1, v2

    .line 52
    :goto_137
    :try_start_137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get ioException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_137 .. :try_end_14f} :catchall_134

    .line 53
    :try_start_14f
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_15b

    if-eqz p0, :cond_193

    .line 55
    :try_start_157
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_193
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15b

    goto :goto_193

    :catchall_15b
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_193

    :goto_165
    move-object v1, v2

    .line 58
    :goto_166
    :try_start_166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get malformedURLException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17e
    .catchall {:try_start_166 .. :try_end_17e} :catchall_134

    .line 59
    :try_start_17e
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_18a

    if-eqz p0, :cond_193

    .line 61
    :try_start_186
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_189} :catch_193
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    goto :goto_193

    :catchall_18a
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p0, p1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :catch_193
    :cond_193
    :goto_193
    return-object v2

    .line 64
    :goto_194
    :try_start_194
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_19a
    .catchall {:try_start_194 .. :try_end_19a} :catchall_1a0

    if-eqz p0, :cond_1a9

    .line 66
    :try_start_19c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_1a9
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1a0

    goto :goto_1a9

    :catchall_1a0
    move-exception p0

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    :catch_1a9
    :cond_1a9
    :goto_1a9
    throw p1
.end method
