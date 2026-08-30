###### Class com.engagelab.privates.common.utils.ImageUtils (com.engagelab.privates.common.utils.ImageUtils)
.class public Lcom/engagelab/privates/common/utils/ImageUtils;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtils"


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

.method public static compressImage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/utils/ImageUtils;->computeSize(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    .line 26
    .line 27
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 28
    .line 29
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_23

    .line 34
    .line 35
    goto :goto_5f

    .line 36
    :cond_23
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/Utils;->getTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/ImageUtils;->getCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/16 v2, 0x3c

    .line 50
    .line 51
    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_39

    .line 56
    .line 57
    goto :goto_5f

    .line 58
    :cond_39
    new-instance p1, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_47

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 70
    .line 71
    .line 72
    :cond_47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    .line 74
    .line 75
    new-instance p1, Ljava/io/FileOutputStream;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_5f

    .line 94
    .line 95
    .line 96
    :catchall_5f
    :goto_5f
    return-void
.end method

.method private static computeSize(II)I
    .registers 8

    .line 1
    rem-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    add-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    :cond_7
    rem-int/lit8 v0, p1, 0x2

    .line 9
    .line 10
    if-ne v0, v1, :cond_d

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    int-to-float p1, v0

    .line 24
    div-float/2addr p0, p1

    .line 25
    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpg-float p1, p0, p1

    .line 28
    .line 29
    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    .line 30
    .line 31
    if-gtz p1, :cond_3e

    .line 32
    .line 33
    float-to-double v4, p0

    .line 34
    cmpl-double p1, v4, v2

    .line 35
    .line 36
    if-lez p1, :cond_3e

    .line 37
    .line 38
    const/16 p0, 0x680

    .line 39
    .line 40
    if-ge v0, p0, :cond_2a

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2a
    const/16 p0, 0x137e

    .line 44
    .line 45
    if-ge v0, p0, :cond_30

    .line 46
    .line 47
    const/4 p0, 0x2

    .line 48
    return p0

    .line 49
    :cond_30
    if-le v0, p0, :cond_38

    .line 50
    .line 51
    const/16 p0, 0x2800

    .line 52
    .line 53
    if-ge v0, p0, :cond_38

    .line 54
    .line 55
    const/4 p0, 0x4

    .line 56
    return p0

    .line 57
    :cond_38
    div-int/lit16 v0, v0, 0x500

    .line 58
    .line 59
    if-nez v0, :cond_3d

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3d
    return v0

    .line 63
    :cond_3e
    float-to-double p0, p0

    .line 64
    cmpg-double v2, p0, v2

    .line 65
    .line 66
    if-gtz v2, :cond_4f

    .line 67
    .line 68
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 69
    .line 70
    cmpl-double v2, p0, v2

    .line 71
    .line 72
    if-lez v2, :cond_4f

    .line 73
    .line 74
    div-int/lit16 v0, v0, 0x500

    .line 75
    .line 76
    if-nez v0, :cond_4e

    .line 77
    .line 78
    return v1

    .line 79
    :cond_4e
    return v0

    .line 80
    :cond_4f
    int-to-double v0, v0

    .line 81
    const-wide/high16 v2, 0x4094000000000000L    # 1280.0

    .line 82
    .line 83
    div-double/2addr v2, p0

    .line 84
    div-double/2addr v0, v2

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    double-to-int p0, p0

    .line 90
    return p0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static getCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "image/png"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_e

    .line 11
    .line 12
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 16
    .line 17
    return-object p0
.end method
