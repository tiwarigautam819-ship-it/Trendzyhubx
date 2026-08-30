###### Class com.google.android.gms.internal.measurement.p5 (com.google.android.gms.internal.measurement.p5)
.class public Lcom/google/android/gms/internal/measurement/p5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/p5;

.field public static final d:Lcom/google/android/gms/internal/measurement/a6;


# instance fields
.field public a:I

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/b6;->b:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p5;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/a6;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/internal/measurement/p5;->d:Lcom/google/android/gms/internal/measurement/a6;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/p5;->a:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 11
    .line 12
    return-void
.end method

.method public static b(III)I
    .registers 6

    .line 1
    sub-int v0, p1, p0

    .line 2
    .line 3
    or-int v1, p0, p1

    .line 4
    .line 5
    or-int/2addr v1, v0

    .line 6
    sub-int v2, p2, p1

    .line 7
    .line 8
    or-int/2addr v1, v2

    .line 9
    if-gez v1, :cond_38

    .line 10
    .line 11
    if-ltz p0, :cond_2a

    .line 12
    .line 13
    if-ge p1, p0, :cond_1c

    .line 14
    .line 15
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    .line 17
    const-string v0, "Beginning index larger than ending index: "

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    invoke-static {p0, p1, v0, v1}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p2

    .line 29
    :cond_1c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    .line 31
    const-string v0, "End index: "

    .line 32
    .line 33
    const-string v1, " >= "

    .line 34
    .line 35
    invoke-static {p1, p2, v0, v1}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 44
    .line 45
    const-string p2, "Beginning index: "

    .line 46
    .line 47
    const-string v0, " < 0"

    .line 48
    .line 49
    invoke-static {p0, p2, v0}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_38
    return v0
.end method

.method public static c([BII)Lcom/google/android/gms/internal/measurement/p5;
    .registers 6

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/p5;->b(III)I

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/measurement/p5;->d:Lcom/google/android/gms/internal/measurement/a6;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-array v1, p2, [B

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p5;-><init>([B)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public d(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public e()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_5e

    .line 4
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p5;

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_57

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Lcom/google/android/gms/internal/measurement/p5;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eq v0, v1, :cond_16

    .line 21
    .line 22
    goto :goto_57

    .line 23
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    goto :goto_5e

    .line 30
    :cond_1d
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p5;

    .line 31
    .line 32
    if-eqz v0, :cond_8d

    .line 33
    .line 34
    check-cast p1, Lcom/google/android/gms/internal/measurement/p5;

    .line 35
    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/p5;->a:I

    .line 37
    .line 38
    iget v1, p1, Lcom/google/android/gms/internal/measurement/p5;->a:I

    .line 39
    .line 40
    if-eqz v0, :cond_2e

    .line 41
    .line 42
    if-eqz v1, :cond_2e

    .line 43
    .line 44
    if-eq v0, v1, :cond_2e

    .line 45
    .line 46
    goto :goto_57

    .line 47
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-gt v0, v1, :cond_72

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gt v0, v1, :cond_60

    .line 62
    .line 63
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/2addr v2, v0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    :goto_4d
    if-ge v0, v2, :cond_5e

    .line 79
    .line 80
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 81
    .line 82
    aget-byte v3, v3, v0

    .line 83
    .line 84
    aget-byte v4, v1, p1

    .line 85
    .line 86
    if-eq v3, v4, :cond_59

    .line 87
    .line 88
    :goto_57
    const/4 p1, 0x0

    .line 89
    return p1

    .line 90
    :cond_59
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_4d

    .line 95
    :cond_5e
    :goto_5e
    const/4 p1, 0x1

    .line 96
    return p1

    .line 97
    :cond_60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const-string v2, "Ran off end of other: 0, "

    .line 104
    .line 105
    const-string v3, ", "

    .line 106
    .line 107
    invoke-static {v0, p1, v2, v3}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "Length too large: "

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_8d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1
.end method

.method public f()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/p5;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_22

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v3, v0

    .line 14
    move v2, v1

    .line 15
    :goto_e
    add-int v4, v1, v0

    .line 16
    .line 17
    if-ge v2, v4, :cond_1c

    .line 18
    .line 19
    mul-int/lit8 v3, v3, 0x1f

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 22
    .line 23
    aget-byte v4, v4, v2

    .line 24
    .line 25
    add-int/2addr v3, v4

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_e

    .line 29
    :cond_1c
    if-nez v3, :cond_1f

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    :cond_1f
    iput v3, p0, Lcom/google/android/gms/internal/measurement/p5;->a:I

    .line 33
    .line 34
    return v3

    .line 35
    :cond_22
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/n5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/p5;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x32

    .line 20
    .line 21
    if-gt v2, v3, :cond_1b

    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/q0;->c(Lcom/google/android/gms/internal/measurement/p5;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_41

    .line 28
    :cond_1b
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v4, 0x2f

    .line 34
    .line 35
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->b(III)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2b

    .line 40
    .line 41
    sget-object v2, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 42
    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    new-instance v3, Lcom/google/android/gms/internal/measurement/o5;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/gms/internal/measurement/o5;-><init>([BII)V

    .line 53
    .line 54
    .line 55
    move-object v2, v3

    .line 56
    :goto_37
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/q0;->c(Lcom/google/android/gms/internal/measurement/p5;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "..."

    .line 61
    .line 62
    invoke-static {v2, v3}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v4, "<ByteString@"

    .line 69
    .line 70
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " size="

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " contents=\""

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, "\">"

    .line 90
    .line 91
    invoke-static {v3, v2, v0}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
