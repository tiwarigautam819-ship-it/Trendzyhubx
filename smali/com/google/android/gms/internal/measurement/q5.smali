###### Class com.google.android.gms.internal.measurement.q5 (com.google.android.gms.internal.measurement.q5)
.class public final Lcom/google/android/gms/internal/measurement/q5;
.super Lcom/google/android/gms/internal/measurement/q0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final f:Ljava/util/logging/Logger;

.field public static final g:Z


# instance fields
.field public b:Lcom/google/android/gms/internal/measurement/o6;

.field public final c:[B

.field public final d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/q5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->e:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/q5;->g:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    sub-int/2addr v0, p2

    .line 6
    or-int/2addr v0, p2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_10

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 11
    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 13
    .line 14
    iput p2, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v3, 0x3

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v3, v1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aput-object v2, v3, p1

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    aput-object p2, v3, p1

    .line 42
    .line 43
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 44
    .line 45
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static j(ILcom/google/android/gms/internal/measurement/i5;Lcom/google/android/gms/internal/measurement/b7;)I
    .registers 3

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    shl-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/i5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr p1, p0

    .line 14
    return p1
.end method

.method public static k(Ljava/lang/String;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/h7;->a(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    goto :goto_c

    .line 6
    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static p(ILcom/google/android/gms/internal/measurement/p5;)I
    .registers 2

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1, p1, p0}, La1/a;->h(III)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static u(J)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static v(I)I
    .registers 1

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static w(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public final d(B)V
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_e

    .line 4
    .line 5
    add-int/lit8 v2, v0, 0x1

    .line 6
    .line 7
    :try_start_6
    aput-byte p1, v1, v0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_b

    .line 8
    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 10
    .line 11
    return-void

    .line 12
    :catch_b
    move-exception p1

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :catch_e
    move-exception p1

    .line 16
    :goto_f
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x3

    .line 34
    new-array v5, v5, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    aput-object v0, v5, v6

    .line 38
    .line 39
    aput-object v2, v5, v3

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    aput-object v4, v5, v0

    .line 43
    .line 44
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 45
    .line 46
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public final e(I)V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 8
    .line 9
    int-to-byte v3, p1

    .line 10
    aput-byte v3, v0, v1

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    iput v3, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 15
    .line 16
    shr-int/lit8 v4, p1, 0x8

    .line 17
    .line 18
    int-to-byte v4, v4

    .line 19
    aput-byte v4, v0, v2

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x3

    .line 22
    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 24
    .line 25
    shr-int/lit8 v4, p1, 0x10

    .line 26
    .line 27
    int-to-byte v4, v4

    .line 28
    aput-byte v4, v0, v3

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x4

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 33
    .line 34
    ushr-int/lit8 p1, p1, 0x18

    .line 35
    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v2
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_26} :catch_27

    .line 38
    .line 39
    return-void

    .line 40
    :catch_27
    move-exception p1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/measurement/r5;

    .line 42
    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x3

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    aput-object v1, v5, v6

    .line 65
    .line 66
    aput-object v2, v5, v3

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    aput-object v4, v5, v1

    .line 70
    .line 71
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 72
    .line 73
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public final f(II)V
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(IJ)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(J)V
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 8
    .line 9
    long-to-int v3, p1

    .line 10
    int-to-byte v3, v3

    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    iput v3, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    shr-long v5, p1, v4

    .line 20
    .line 21
    long-to-int v5, v5

    .line 22
    int-to-byte v5, v5

    .line 23
    aput-byte v5, v0, v2

    .line 24
    .line 25
    add-int/lit8 v2, v1, 0x3

    .line 26
    .line 27
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 28
    .line 29
    const/16 v5, 0x10

    .line 30
    .line 31
    shr-long v5, p1, v5

    .line 32
    .line 33
    long-to-int v5, v5

    .line 34
    int-to-byte v5, v5

    .line 35
    aput-byte v5, v0, v3

    .line 36
    .line 37
    add-int/lit8 v3, v1, 0x4

    .line 38
    .line 39
    iput v3, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 40
    .line 41
    const/16 v5, 0x18

    .line 42
    .line 43
    shr-long v5, p1, v5

    .line 44
    .line 45
    long-to-int v5, v5

    .line 46
    int-to-byte v5, v5

    .line 47
    aput-byte v5, v0, v2

    .line 48
    .line 49
    add-int/lit8 v2, v1, 0x5

    .line 50
    .line 51
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 52
    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    shr-long v5, p1, v5

    .line 56
    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    aput-byte v5, v0, v3

    .line 60
    .line 61
    add-int/lit8 v3, v1, 0x6

    .line 62
    .line 63
    iput v3, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 64
    .line 65
    const/16 v5, 0x28

    .line 66
    .line 67
    shr-long v5, p1, v5

    .line 68
    .line 69
    long-to-int v5, v5

    .line 70
    int-to-byte v5, v5

    .line 71
    aput-byte v5, v0, v2

    .line 72
    .line 73
    add-int/lit8 v2, v1, 0x7

    .line 74
    .line 75
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 76
    .line 77
    const/16 v5, 0x30

    .line 78
    .line 79
    shr-long v5, p1, v5

    .line 80
    .line 81
    long-to-int v5, v5

    .line 82
    int-to-byte v5, v5

    .line 83
    aput-byte v5, v0, v3

    .line 84
    .line 85
    add-int/2addr v1, v4

    .line 86
    iput v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 87
    .line 88
    const/16 v1, 0x38

    .line 89
    .line 90
    shr-long/2addr p1, v1

    .line 91
    long-to-int p1, p1

    .line 92
    int-to-byte p1, p1

    .line 93
    aput-byte p1, v0, v2
    :try_end_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 94
    .line 95
    return-void

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/measurement/r5;

    .line 98
    .line 99
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x1

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v4, 0x3

    .line 117
    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    aput-object v0, v4, v5

    .line 121
    .line 122
    aput-object v1, v4, v2

    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    aput-object v3, v4, v0

    .line 126
    .line 127
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 128
    .line 129
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 134
    .line 135
    .line 136
    throw p2
.end method

.method public final i()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final l(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/q5;->l(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(IJ)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(J)V
    .registers 15

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/q5;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, -0x80

    .line 7
    .line 8
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 9
    .line 10
    if-eqz v0, :cond_40

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    if-lt v0, v7, :cond_40

    .line 19
    .line 20
    :goto_13
    and-long v7, p1, v4

    .line 21
    .line 22
    cmp-long v0, v7, v2

    .line 23
    .line 24
    if-nez v0, :cond_2b

    .line 25
    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 27
    .line 28
    add-int/lit8 v1, v0, 0x1

    .line 29
    .line 30
    iput v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    long-to-int p1, p1

    .line 34
    int-to-byte p1, p1

    .line 35
    sget-object p2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 36
    .line 37
    sget-wide v2, Lcom/google/android/gms/internal/measurement/f7;->f:J

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    invoke-virtual {p2, v6, v2, v3, p1}, Lcom/google/android/gms/internal/measurement/e7;->b(Ljava/lang/Object;JB)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 45
    .line 46
    add-int/lit8 v7, v0, 0x1

    .line 47
    .line 48
    iput v7, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 49
    .line 50
    int-to-long v7, v0

    .line 51
    long-to-int v0, p1

    .line 52
    or-int/lit16 v0, v0, 0x80

    .line 53
    .line 54
    int-to-byte v0, v0

    .line 55
    sget-object v9, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 56
    .line 57
    sget-wide v10, Lcom/google/android/gms/internal/measurement/f7;->f:J

    .line 58
    .line 59
    add-long/2addr v10, v7

    .line 60
    invoke-virtual {v9, v6, v10, v11, v0}, Lcom/google/android/gms/internal/measurement/e7;->b(Ljava/lang/Object;JB)V

    .line 61
    .line 62
    .line 63
    ushr-long/2addr p1, v1

    .line 64
    goto :goto_13

    .line 65
    :cond_40
    :goto_40
    and-long v7, p1, v4

    .line 66
    .line 67
    cmp-long v0, v7, v2

    .line 68
    .line 69
    if-nez v0, :cond_53

    .line 70
    .line 71
    :try_start_46
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 72
    .line 73
    add-int/lit8 v1, v0, 0x1

    .line 74
    .line 75
    iput v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 76
    .line 77
    long-to-int p1, p1

    .line 78
    int-to-byte p1, p1

    .line 79
    aput-byte p1, v6, v0

    .line 80
    .line 81
    return-void

    .line 82
    :catch_51
    move-exception p1

    .line 83
    goto :goto_61

    .line 84
    :cond_53
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 85
    .line 86
    add-int/lit8 v7, v0, 0x1

    .line 87
    .line 88
    iput v7, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 89
    .line 90
    long-to-int v7, p1

    .line 91
    or-int/lit16 v7, v7, 0x80

    .line 92
    .line 93
    int-to-byte v7, v7

    .line 94
    aput-byte v7, v6, v0
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_5f} :catch_51

    .line 95
    .line 96
    ushr-long/2addr p1, v1

    .line 97
    goto :goto_40

    .line 98
    :goto_61
    new-instance p2, Lcom/google/android/gms/internal/measurement/r5;

    .line 99
    .line 100
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v4, 0x3

    .line 118
    new-array v4, v4, [Ljava/lang/Object;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    aput-object v0, v4, v5

    .line 122
    .line 123
    aput-object v1, v4, v2

    .line 124
    .line 125
    const/4 v0, 0x2

    .line 126
    aput-object v3, v4, v0

    .line 127
    .line 128
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 129
    .line 130
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method public final q(I)V
    .registers 9

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 4
    .line 5
    if-nez v0, :cond_12

    .line 6
    .line 7
    :try_start_6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 12
    .line 13
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v1, v0

    .line 15
    .line 16
    return-void

    .line 17
    :catch_10
    move-exception p1

    .line 18
    goto :goto_20

    .line 19
    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 20
    .line 21
    add-int/lit8 v2, v0, 0x1

    .line 22
    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 24
    .line 25
    or-int/lit16 v2, p1, 0x80

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v1, v0
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_1d} :catch_10

    .line 29
    .line 30
    ushr-int/lit8 p1, p1, 0x7

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_20
    new-instance v0, Lcom/google/android/gms/internal/measurement/r5;

    .line 34
    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/4 v5, 0x3

    .line 53
    new-array v5, v5, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    aput-object v1, v5, v6

    .line 57
    .line 58
    aput-object v2, v5, v3

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    aput-object v4, v5, v1

    .line 62
    .line 63
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 64
    .line 65
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final r(II)V
    .registers 3

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final s([BII)V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    .line 12
    .line 13
    return-void

    .line 14
    :catch_d
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/measurement/r5;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/measurement/q5;->d:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v0, v2, v3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p3, v2, v0

    .line 44
    .line 45
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 46
    .line 47
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final t(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
