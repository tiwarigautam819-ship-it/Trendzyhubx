###### Class com.google.android.gms.internal.measurement.b6 (com.google.android.gms.internal.measurement.b6)
.class public abstract Lcom/google/android/gms/internal/measurement/b6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "US-ASCII"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    const-string v0, "UTF-8"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v0, "ISO-8859-1"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    sput-object v1, Lcom/google/android/gms/internal/measurement/b6;->b:[B

    .line 23
    .line 24
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    array-length v1, v1

    .line 28
    if-ltz v1, :cond_33

    .line 29
    .line 30
    sub-int/2addr v0, v0

    .line 31
    add-int/2addr v0, v1

    .line 32
    if-ltz v0, :cond_2e

    .line 33
    .line 34
    const v1, 0x7fffffff

    .line 35
    .line 36
    .line 37
    if-gt v0, v1, :cond_27

    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    throw v0

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    goto :goto_38

    .line 47
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->c()Lcom/google/android/gms/internal/measurement/i6;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    throw v0
    :try_end_38
    .catch Lcom/google/android/gms/internal/measurement/i6; {:try_start_27 .. :try_end_38} :catch_2c

    .line 57
    :goto_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public static a(J)I
    .registers 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    xor-long/2addr p0, v0

    .line 6
    long-to-int p0, p0

    .line 7
    return p0
.end method
