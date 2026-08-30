###### Class m1.a (m1.a)
.class public abstract Lm1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v27, "basis"

    .line 4
    .line 5
    const-string v28, "zip"

    .line 6
    .line 7
    const-string v1, "js"

    .line 8
    .line 9
    const-string v2, "css"

    .line 10
    .line 11
    const-string v3, "json"

    .line 12
    .line 13
    const-string v4, "png"

    .line 14
    .line 15
    const-string v5, "jpg"

    .line 16
    .line 17
    const-string v6, "jpeg"

    .line 18
    .line 19
    const-string v7, "webp"

    .line 20
    .line 21
    const-string v8, "bmp"

    .line 22
    .line 23
    const-string v9, "svg"

    .line 24
    .line 25
    const-string v10, "ico"

    .line 26
    .line 27
    const-string v11, "atlas"

    .line 28
    .line 29
    const-string v12, "plist"

    .line 30
    .line 31
    const-string v13, "bin"

    .line 32
    .line 33
    const-string v14, "skel"

    .line 34
    .line 35
    const-string v15, "fnt"

    .line 36
    .line 37
    const-string v16, "ogg"

    .line 38
    .line 39
    const-string v17, "mp3"

    .line 40
    .line 41
    const-string v18, "wav"

    .line 42
    .line 43
    const-string v19, "m4a"

    .line 44
    .line 45
    const-string v20, "ttf"

    .line 46
    .line 47
    const-string v21, "otf"

    .line 48
    .line 49
    const-string v22, "woff"

    .line 50
    .line 51
    const-string v23, "woff2"

    .line 52
    .line 53
    const-string v24, "astc"

    .line 54
    .line 55
    const-string v25, "ktx"

    .line 56
    .line 57
    const-string v26, "ktx2"

    .line 58
    .line 59
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lm1/a;->a:Ljava/util/Set;

    .line 75
    .line 76
    return-void
.end method
