###### Class com.engagelab.privates.common.utils.GZipUtil (com.engagelab.privates.common.utils.GZipUtil)
.class public Lcom/engagelab/privates/common/utils/GZipUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "GZipUtil"


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

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_13

    .line 2
    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "closeQuietly failed "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "GZipUtil"

    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public static unzip([B)[B
    .registers 7

    .line 1
    if-eqz p0, :cond_64

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_64

    .line 7
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x100

    .line 23
    .line 24
    :try_start_17
    new-array v2, v2, [B

    .line 25
    .line 26
    :goto_19
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ltz v3, :cond_26

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_19

    .line 37
    :catchall_24
    move-exception v2

    .line 38
    goto :goto_34

    .line 39
    :cond_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_24

    .line 43
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :goto_34
    const-string v3, "GZipUtil"

    .line 54
    .line 55
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "unzip failed "

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v3, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_59

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return-object p0

    .line 90
    :catchall_59
    move-exception v2

    .line 91
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    .line 99
    .line 100
    throw v2

    .line 101
    :cond_64
    :goto_64
    return-object p0
.end method

.method public static zip([B)[B
    .registers 6

    .line 1
    const-string v0, "zip failed "

    .line 2
    .line 3
    if-eqz p0, :cond_49

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    if-nez v1, :cond_8

    .line 7
    .line 8
    goto :goto_49

    .line 9
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_23

    .line 29
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catchall_23
    move-exception p0

    .line 37
    const-string v3, "GZipUtil"

    .line 38
    .line 39
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_41

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0

    .line 66
    :catchall_41
    move-exception p0

    .line 67
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/GZipUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_49
    :goto_49
    return-object p0
.end method
