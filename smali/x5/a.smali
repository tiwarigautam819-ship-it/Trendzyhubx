###### Class x5.a (x5.a)
.class public Lx5/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/io/Writer;

.field public b:[I

.field public c:I

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-string v0, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lx5/a;->i:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const/16 v0, 0x80

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    sput-object v0, Lx5/a;->j:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_10
    const/16 v2, 0x1f

    .line 18
    .line 19
    if-gt v1, v2, :cond_2a

    .line 20
    .line 21
    sget-object v2, Lx5/a;->j:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v3, v4, v0

    .line 31
    .line 32
    const-string v3, "\\u%04x"

    .line 33
    .line 34
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v2, v1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_10

    .line 43
    :cond_2a
    sget-object v0, Lx5/a;->j:[Ljava/lang/String;

    .line 44
    .line 45
    const/16 v1, 0x22

    .line 46
    .line 47
    const-string v2, "\\\""

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x5c

    .line 52
    .line 53
    const-string v2, "\\\\"

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0x9

    .line 58
    .line 59
    const-string v2, "\\t"

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    const-string v2, "\\b"

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    const-string v2, "\\n"

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    const-string v2, "\\r"

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    const-string v2, "\\f"

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, [Ljava/lang/String;

    .line 92
    .line 93
    sput-object v0, Lx5/a;->k:[Ljava/lang/String;

    .line 94
    .line 95
    const/16 v1, 0x3c

    .line 96
    .line 97
    const-string v2, "\\u003c"

    .line 98
    .line 99
    aput-object v2, v0, v1

    .line 100
    .line 101
    const/16 v1, 0x3e

    .line 102
    .line 103
    const-string v2, "\\u003e"

    .line 104
    .line 105
    aput-object v2, v0, v1

    .line 106
    .line 107
    const/16 v1, 0x26

    .line 108
    .line 109
    const-string v2, "\\u0026"

    .line 110
    .line 111
    aput-object v2, v0, v1

    .line 112
    .line 113
    const/16 v1, 0x3d

    .line 114
    .line 115
    const-string v2, "\\u003d"

    .line 116
    .line 117
    aput-object v2, v0, v1

    .line 118
    .line 119
    const/16 v1, 0x27

    .line 120
    .line 121
    const-string v2, "\\u0027"

    .line 122
    .line 123
    aput-object v2, v0, v1

    .line 124
    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lx5/a;->b:[I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lx5/a;->c:I

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    if-nez v2, :cond_15

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lx5/a;->b:[I

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lx5/a;->b:[I

    .line 23
    .line 24
    iget v1, p0, Lx5/a;->c:I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lx5/a;->c:I

    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    const-string v0, ":"

    .line 34
    .line 35
    iput-object v0, p0, Lx5/a;->d:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lx5/a;->h:Z

    .line 39
    .line 40
    const-string v0, "out == null"

    .line 41
    .line 42
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public A(J)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public B(Ljava/lang/Number;)V
    .registers 6

    .line 1
    if-nez p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Lx5/a;->w()Lx5/a;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "-Infinity"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_7c

    .line 21
    .line 22
    const-string v1, "Infinity"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_7c

    .line 29
    .line 30
    const-string v1, "NaN"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_26

    .line 37
    .line 38
    goto :goto_7c

    .line 39
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-class v1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eq p1, v1, :cond_80

    .line 46
    .line 47
    const-class v1, Ljava/lang/Long;

    .line 48
    .line 49
    if-eq p1, v1, :cond_80

    .line 50
    .line 51
    const-class v1, Ljava/lang/Double;

    .line 52
    .line 53
    if-eq p1, v1, :cond_80

    .line 54
    .line 55
    const-class v1, Ljava/lang/Float;

    .line 56
    .line 57
    if-eq p1, v1, :cond_80

    .line 58
    .line 59
    const-class v1, Ljava/lang/Byte;

    .line 60
    .line 61
    if-eq p1, v1, :cond_80

    .line 62
    .line 63
    const-class v1, Ljava/lang/Short;

    .line 64
    .line 65
    if-eq p1, v1, :cond_80

    .line 66
    .line 67
    const-class v1, Ljava/math/BigDecimal;

    .line 68
    .line 69
    if-eq p1, v1, :cond_80

    .line 70
    .line 71
    const-class v1, Ljava/math/BigInteger;

    .line 72
    .line 73
    if-eq p1, v1, :cond_80

    .line 74
    .line 75
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    if-eq p1, v1, :cond_80

    .line 78
    .line 79
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    .line 81
    if-ne p1, v1, :cond_53

    .line 82
    .line 83
    goto :goto_80

    .line 84
    :cond_53
    sget-object v1, Lx5/a;->i:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_60

    .line 95
    .line 96
    goto :goto_80

    .line 97
    :cond_60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "String created by "

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " is not a valid JSON number: "

    .line 110
    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_7c
    :goto_7c
    iget-boolean p1, p0, Lx5/a;->e:Z

    .line 126
    .line 127
    if-eqz p1, :cond_89

    .line 128
    .line 129
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v1, "Numeric values must be finite, but was "

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public C(Ljava/lang/String;)V
    .registers 2

    .line 1
    if-nez p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Lx5/a;->w()Lx5/a;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lx5/a;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public D(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    const-string p1, "true"

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const-string p1, "false"

    .line 13
    .line 14
    :goto_d
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final E()V
    .registers 4

    .line 1
    iget-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_33

    .line 4
    .line 5
    invoke-virtual {p0}, Lx5/a;->x()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_13

    .line 11
    .line 12
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 13
    .line 14
    const/16 v1, 0x2c

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_16

    .line 20
    :cond_13
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_2b

    .line 22
    .line 23
    :goto_16
    invoke-virtual {p0}, Lx5/a;->v()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lx5/a;->b:[I

    .line 27
    .line 28
    iget v1, p0, Lx5/a;->c:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    aput v2, v0, v1

    .line 34
    .line 35
    iget-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lx5/a;->y(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Nesting problem."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_33
    return-void
.end method

.method public final a()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lx5/a;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_49

    .line 8
    .line 9
    iget-object v3, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 10
    .line 11
    if-eq v0, v1, :cond_40

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_32

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    const/4 v3, 0x7

    .line 18
    if-eq v0, v1, :cond_2a

    .line 19
    .line 20
    if-ne v0, v3, :cond_22

    .line 21
    .line 22
    iget-boolean v0, p0, Lx5/a;->e:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1a

    .line 25
    .line 26
    goto :goto_2a

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "JSON must have only one top-level value."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "Nesting problem."

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lx5/a;->b:[I

    .line 44
    .line 45
    iget v1, p0, Lx5/a;->c:I

    .line 46
    .line 47
    sub-int/2addr v1, v2

    .line 48
    aput v3, v0, v1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    iget-object v0, p0, Lx5/a;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lx5/a;->b:[I

    .line 57
    .line 58
    iget v1, p0, Lx5/a;->c:I

    .line 59
    .line 60
    sub-int/2addr v1, v2

    .line 61
    const/4 v2, 0x5

    .line 62
    aput v2, v0, v1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_40
    const/16 v0, 0x2c

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lx5/a;->v()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    iget-object v0, p0, Lx5/a;->b:[I

    .line 75
    .line 76
    iget v3, p0, Lx5/a;->c:I

    .line 77
    .line 78
    sub-int/2addr v3, v2

    .line 79
    aput v1, v0, v3

    .line 80
    .line 81
    invoke-virtual {p0}, Lx5/a;->v()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public c()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lx5/a;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Lx5/a;->b:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_15

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lx5/a;->b:[I

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lx5/a;->b:[I

    .line 23
    .line 24
    iget v1, p0, Lx5/a;->c:I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lx5/a;->c:I

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 34
    .line 35
    const/16 v1, 0x5b

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lx5/a;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_18

    .line 10
    .line 11
    if-ne v0, v1, :cond_14

    .line 12
    .line 13
    iget-object v2, p0, Lx5/a;->b:[I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    aget v0, v2, v0

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-ne v0, v1, :cond_18

    .line 20
    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lx5/a;->c:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    const-string v1, "Incomplete document"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public flush()V
    .registers 3

    .line 1
    iget v0, p0, Lx5/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "JsonWriter is closed."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public g()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lx5/a;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Lx5/a;->b:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_15

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lx5/a;->b:[I

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lx5/a;->b:[I

    .line 23
    .line 24
    iget v1, p0, Lx5/a;->c:I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lx5/a;->c:I

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 34
    .line 35
    const/16 v1, 0x7b

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final o(IIC)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lx5/a;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_11

    .line 6
    .line 7
    if-ne v0, p1, :cond_9

    .line 8
    .line 9
    goto :goto_11

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Nesting problem."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_11
    :goto_11
    iget-object p1, p0, Lx5/a;->g:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p1, :cond_26

    .line 21
    .line 22
    iget p1, p0, Lx5/a;->c:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    iput p1, p0, Lx5/a;->c:I

    .line 27
    .line 28
    if-ne v0, p2, :cond_20

    .line 29
    .line 30
    invoke-virtual {p0}, Lx5/a;->v()V

    .line 31
    .line 32
    .line 33
    :cond_20
    iget-object p1, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p3, "Dangling name: "

    .line 44
    .line 45
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lx5/a;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public s()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x5d

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lx5/a;->o(IIC)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t()V
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7d

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lx5/a;->o(IIC)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "name == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_18

    .line 9
    .line 10
    iget v0, p0, Lx5/a;->c:I

    .line 11
    .line 12
    if-eqz v0, :cond_10

    .line 13
    .line 14
    iput-object p1, p0, Lx5/a;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "JsonWriter is closed."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final v()V
    .registers 1

    .line 1
    return-void
.end method

.method public w()Lx5/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-boolean v0, p0, Lx5/a;->h:Z

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 10
    .line 11
    .line 12
    goto :goto_10

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lx5/a;->g:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 21
    .line 22
    const-string v1, "null"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final x()I
    .registers 3

    .line 1
    iget v0, p0, Lx5/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v1, p0, Lx5/a;->b:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "JsonWriter is closed."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final y(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lx5/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sget-object v0, Lx5/a;->k:[Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object v0, Lx5/a;->j:[Ljava/lang/String;

    .line 9
    .line 10
    :goto_9
    iget-object v1, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 11
    .line 12
    const/16 v2, 0x22

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_16
    if-ge v4, v3, :cond_41

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x80

    .line 30
    .line 31
    if-ge v6, v7, :cond_25

    .line 32
    .line 33
    aget-object v6, v0, v6

    .line 34
    .line 35
    if-nez v6, :cond_32

    .line 36
    .line 37
    goto :goto_3e

    .line 38
    :cond_25
    const/16 v7, 0x2028

    .line 39
    .line 40
    if-ne v6, v7, :cond_2c

    .line 41
    .line 42
    const-string v6, "\\u2028"

    .line 43
    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    const/16 v7, 0x2029

    .line 46
    .line 47
    if-ne v6, v7, :cond_3e

    .line 48
    .line 49
    const-string v6, "\\u2029"

    .line 50
    .line 51
    :cond_32
    :goto_32
    if-ge v5, v4, :cond_39

    .line 52
    .line 53
    sub-int v7, v4, v5

    .line 54
    .line 55
    invoke-virtual {v1, p1, v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v5, v4, 0x1

    .line 62
    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_16

    .line 66
    :cond_41
    if-ge v5, v3, :cond_47

    .line 67
    .line 68
    sub-int/2addr v3, v5

    .line 69
    invoke-virtual {v1, p1, v5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    :cond_47
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public z(D)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lx5/a;->E()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lx5/a;->e:Z

    .line 5
    .line 6
    if-nez v0, :cond_28

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_14

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_14

    .line 19
    .line 20
    goto :goto_28

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Numeric values must be finite, but was "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lx5/a;->a()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lx5/a;->a:Ljava/io/Writer;

    .line 45
    .line 46
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 51
    .line 52
    .line 53
    return-void
.end method
