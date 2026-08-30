###### Class f6.h (f6.h)
.class public abstract Lf6/h;
.super Lx2/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[[I

.field public static final e:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lf6/h;->a:[I

    .line 7
    .line 8
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lf6/h;->b:[I

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v2, v1, [I

    .line 16
    .line 17
    fill-array-data v2, :array_8c

    .line 18
    .line 19
    .line 20
    sput-object v2, Lf6/h;->c:[I

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    new-array v3, v2, [[I

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x2

    .line 28
    filled-new-array {v4, v5, v0, v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x0

    .line 33
    aput-object v6, v3, v7

    .line 34
    .line 35
    filled-new-array {v5, v5, v5, v0}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    aput-object v6, v3, v0

    .line 40
    .line 41
    filled-new-array {v5, v0, v5, v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    aput-object v6, v3, v5

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    filled-new-array {v0, v6, v0, v0}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    aput-object v8, v3, v4

    .line 53
    .line 54
    filled-new-array {v0, v0, v4, v5}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    aput-object v8, v3, v6

    .line 59
    .line 60
    filled-new-array {v0, v5, v4, v0}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/4 v9, 0x5

    .line 65
    aput-object v8, v3, v9

    .line 66
    .line 67
    filled-new-array {v0, v0, v0, v6}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    aput-object v6, v3, v1

    .line 72
    .line 73
    filled-new-array {v0, v4, v0, v5}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v6, 0x7

    .line 78
    aput-object v1, v3, v6

    .line 79
    .line 80
    filled-new-array {v0, v5, v0, v4}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v6, 0x8

    .line 85
    .line 86
    aput-object v1, v3, v6

    .line 87
    .line 88
    filled-new-array {v4, v0, v0, v5}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/16 v4, 0x9

    .line 93
    .line 94
    aput-object v1, v3, v4

    .line 95
    .line 96
    sput-object v3, Lf6/h;->d:[[I

    .line 97
    .line 98
    const/16 v1, 0x14

    .line 99
    .line 100
    new-array v4, v1, [[I

    .line 101
    .line 102
    sput-object v4, Lf6/h;->e:[[I

    .line 103
    .line 104
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    :goto_6a
    if-ge v2, v1, :cond_8a

    .line 108
    .line 109
    sget-object v3, Lf6/h;->d:[[I

    .line 110
    .line 111
    add-int/lit8 v4, v2, -0xa

    .line 112
    .line 113
    aget-object v3, v3, v4

    .line 114
    .line 115
    array-length v4, v3

    .line 116
    new-array v4, v4, [I

    .line 117
    .line 118
    move v5, v7

    .line 119
    :goto_76
    array-length v6, v3

    .line 120
    if-ge v5, v6, :cond_83

    .line 121
    .line 122
    array-length v6, v3

    .line 123
    sub-int/2addr v6, v5

    .line 124
    sub-int/2addr v6, v0

    .line 125
    aget v6, v3, v6

    .line 126
    .line 127
    aput v6, v4, v5

    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_76

    .line 132
    :cond_83
    sget-object v3, Lf6/h;->e:[[I

    .line 133
    .line 134
    aput-object v4, v3, v2

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_6a

    .line 139
    :cond_8a
    return-void

    .line 140
    nop

    .line 141
    :array_8c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public static r(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_1f

    .line 9
    :cond_8
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v0, v2

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lf6/h;->s(Ljava/lang/CharSequence;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-ne p0, v3, :cond_1f

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static s(Ljava/lang/CharSequence;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    const/16 v3, 0x9

    .line 9
    .line 10
    if-ltz v1, :cond_28

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    add-int/lit8 v4, v4, -0x30

    .line 17
    .line 18
    if-ltz v4, :cond_19

    .line 19
    .line 20
    if-gt v4, v3, :cond_19

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    add-int/lit8 v1, v1, -0x2

    .line 24
    .line 25
    goto :goto_7

    .line 26
    :cond_19
    sget-object p0, Ly5/b;->c:Ly5/b;

    .line 27
    .line 28
    sget-boolean p0, Ly5/c;->a:Z

    .line 29
    .line 30
    if-eqz p0, :cond_25

    .line 31
    .line 32
    new-instance p0, Ly5/b;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_27

    .line 38
    :cond_25
    sget-object p0, Ly5/b;->c:Ly5/b;

    .line 39
    .line 40
    :goto_27
    throw p0

    .line 41
    :cond_28
    mul-int/lit8 v2, v2, 0x3

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x2

    .line 44
    .line 45
    :goto_2c
    if-ltz v0, :cond_4b

    .line 46
    .line 47
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/lit8 v1, v1, -0x30

    .line 52
    .line 53
    if-ltz v1, :cond_3c

    .line 54
    .line 55
    if-gt v1, v3, :cond_3c

    .line 56
    .line 57
    add-int/2addr v2, v1

    .line 58
    add-int/lit8 v0, v0, -0x2

    .line 59
    .line 60
    goto :goto_2c

    .line 61
    :cond_3c
    sget-object p0, Ly5/b;->c:Ly5/b;

    .line 62
    .line 63
    sget-boolean p0, Ly5/c;->a:Z

    .line 64
    .line 65
    if-eqz p0, :cond_48

    .line 66
    .line 67
    new-instance p0, Ly5/b;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 70
    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    sget-object p0, Ly5/b;->c:Ly5/b;

    .line 74
    .line 75
    :goto_4a
    throw p0

    .line 76
    :cond_4b
    rsub-int p0, v2, 0x3e8

    .line 77
    .line 78
    rem-int/lit8 p0, p0, 0xa

    .line 79
    .line 80
    return p0
.end method
