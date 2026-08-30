###### Class f6.g (f6.g)
.class public final Lf6/g;
.super Ly1/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[[I


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lf6/g;->b:[I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    filled-new-array {v1, v0, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sput-object v2, Lf6/g;->c:[I

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    new-array v2, v2, [[I

    .line 18
    .line 19
    filled-new-array {v0, v0, v1, v1, v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    filled-new-array {v1, v0, v0, v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, v0

    .line 31
    .line 32
    filled-new-array {v0, v1, v0, v0, v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x2

    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    filled-new-array {v1, v1, v0, v0, v0}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v2, v1

    .line 44
    .line 45
    filled-new-array {v0, v0, v1, v0, v1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x4

    .line 50
    aput-object v3, v2, v4

    .line 51
    .line 52
    filled-new-array {v1, v0, v1, v0, v0}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x5

    .line 57
    aput-object v3, v2, v4

    .line 58
    .line 59
    filled-new-array {v0, v1, v1, v0, v0}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x6

    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    filled-new-array {v0, v0, v0, v1, v1}, [I

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/4 v4, 0x7

    .line 71
    aput-object v3, v2, v4

    .line 72
    .line 73
    filled-new-array {v1, v0, v0, v1, v0}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    aput-object v3, v2, v4

    .line 80
    .line 81
    filled-new-array {v0, v1, v0, v1, v0}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    aput-object v0, v2, v1

    .line 88
    .line 89
    sput-object v2, Lf6/g;->d:[[I

    .line 90
    .line 91
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lf6/g;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static A([II)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x9

    .line 4
    .line 5
    if-ge v1, v2, :cond_14

    .line 6
    .line 7
    rsub-int/lit8 v2, v1, 0x8

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    shl-int v2, v3, v2

    .line 11
    .line 12
    and-int/2addr v2, p1

    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    move v3, v0

    .line 16
    :cond_f
    aput v3, p0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_14
    return-void
.end method

.method public static w([ZI[I)V
    .registers 8

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_14

    .line 5
    .line 6
    aget v3, p2, v2

    .line 7
    .line 8
    add-int/lit8 v4, p1, 0x1

    .line 9
    .line 10
    if-eqz v3, :cond_d

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v3, v1

    .line 15
    :goto_e
    aput-boolean v3, p0, p1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    move p1, v4

    .line 20
    goto :goto_3

    .line 21
    :cond_14
    return-void
.end method

.method public static x(ILjava/lang/String;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_1d

    .line 10
    .line 11
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    mul-int/2addr v4, v3

    .line 22
    add-int/2addr v2, v4

    .line 23
    add-int/2addr v3, v1

    .line 24
    if-le v3, p0, :cond_1a

    .line 25
    .line 26
    move v3, v1

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    rem-int/lit8 v2, v2, 0x2f

    .line 31
    .line 32
    return v2
.end method

.method public static y(ILjava/lang/String;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt p0, v0, :cond_8

    .line 7
    .line 8
    goto :goto_2c

    .line 9
    :cond_8
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0xf1

    .line 14
    .line 15
    if-ne v2, v3, :cond_12

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :cond_12
    const/16 v3, 0x30

    .line 20
    .line 21
    if-lt v2, v3, :cond_2c

    .line 22
    .line 23
    const/16 v4, 0x39

    .line 24
    .line 25
    if-le v2, v4, :cond_1b

    .line 26
    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    add-int/2addr p0, v1

    .line 29
    if-lt p0, v0, :cond_1f

    .line 30
    .line 31
    goto :goto_2a

    .line 32
    :cond_1f
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-lt p0, v3, :cond_2a

    .line 37
    .line 38
    if-le p0, v4, :cond_28

    .line 39
    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const/4 p0, 0x3

    .line 42
    return p0

    .line 43
    :cond_2a
    :goto_2a
    const/4 p0, 0x2

    .line 44
    return p0

    .line 45
    :cond_2c
    :goto_2c
    return v1
.end method

.method public static z([II)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_14

    .line 5
    .line 6
    rsub-int/lit8 v1, v0, 0x8

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    shl-int v1, v2, v1

    .line 10
    .line 11
    and-int/2addr v1, p1

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v2, 0x2

    .line 16
    :goto_f
    aput v2, p0, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_14
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;
    .registers 5

    .line 1
    iget v0, p0, Lf6/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_66

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p2, v0, :cond_d

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Ly1/g;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p3, "Can only encode CODE_93, but got "

    .line 17
    .line 18
    invoke-static {p2}, Lq2/x;->n(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :pswitch_1d
    const/4 v0, 0x3

    .line 31
    if-ne p2, v0, :cond_25

    .line 32
    .line 33
    invoke-super {p0, p1, p2, p3}, Ly1/g;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p3, "Can only encode CODE_39, but got "

    .line 41
    .line 42
    invoke-static {p2}, Lq2/x;->n(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :pswitch_35
    const/4 v0, 0x5

    .line 55
    if-ne p2, v0, :cond_3d

    .line 56
    .line 57
    invoke-super {p0, p1, p2, p3}, Ly1/g;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p3, "Can only encode CODE_128, but got "

    .line 65
    .line 66
    invoke-static {p2}, Lq2/x;->n(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :pswitch_4d
    const/16 v0, 0x9

    .line 79
    .line 80
    if-ne p2, v0, :cond_56

    .line 81
    .line 82
    invoke-super {p0, p1, p2, p3}, Ly1/g;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string p3, "Can only encode ITF, but got "

    .line 90
    .line 91
    invoke-static {p2}, Lq2/x;->n(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_35
        :pswitch_1d
    .end packed-switch
.end method

.method public final k(Ljava/lang/String;)[Z
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lf6/g;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_3de

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x50

    .line 15
    .line 16
    if-gt v2, v3, :cond_8a

    .line 17
    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    new-array v4, v3, [I

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    add-int/lit8 v5, v5, 0x4

    .line 27
    .line 28
    mul-int/2addr v5, v3

    .line 29
    const/4 v6, 0x1

    .line 30
    add-int/2addr v5, v6

    .line 31
    sget-object v7, Lf6/d;->a:[I

    .line 32
    .line 33
    const/16 v8, 0x2f

    .line 34
    .line 35
    aget v7, v7, v8

    .line 36
    .line 37
    invoke-static {v4, v7}, Lf6/g;->A([II)V

    .line 38
    .line 39
    .line 40
    new-array v5, v5, [Z

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static {v5, v7, v4}, Lf6/g;->w([ZI[I)V

    .line 44
    .line 45
    .line 46
    :goto_2d
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 47
    .line 48
    if-ge v7, v2, :cond_48

    .line 49
    .line 50
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    sget-object v10, Lf6/d;->a:[I

    .line 59
    .line 60
    aget v9, v10, v9

    .line 61
    .line 62
    invoke-static {v4, v9}, Lf6/g;->A([II)V

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v3, v4}, Lf6/g;->w([ZI[I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x9

    .line 69
    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_2d

    .line 73
    :cond_48
    const/16 v2, 0x14

    .line 74
    .line 75
    invoke-static {v2, v1}, Lf6/g;->x(ILjava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sget-object v7, Lf6/d;->a:[I

    .line 80
    .line 81
    aget v10, v7, v2

    .line 82
    .line 83
    invoke-static {v4, v10}, Lf6/g;->A([II)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v3, v4}, Lf6/g;->w([ZI[I)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v10, v3, 0x9

    .line 90
    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/16 v2, 0xf

    .line 111
    .line 112
    invoke-static {v2, v1}, Lf6/g;->x(ILjava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    aget v1, v7, v1

    .line 117
    .line 118
    invoke-static {v4, v1}, Lf6/g;->A([II)V

    .line 119
    .line 120
    .line 121
    invoke-static {v5, v10, v4}, Lf6/g;->w([ZI[I)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v1, v3, 0x12

    .line 125
    .line 126
    aget v2, v7, v8

    .line 127
    .line 128
    invoke-static {v4, v2}, Lf6/g;->A([II)V

    .line 129
    .line 130
    .line 131
    invoke-static {v5, v1, v4}, Lf6/g;->w([ZI[I)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1b

    .line 135
    .line 136
    aput-boolean v6, v5, v3

    .line 137
    .line 138
    return-object v5

    .line 139
    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string v3, "Requested contents should be less than 80 digits long, but got "

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1

    .line 155
    :pswitch_9a
    sget-object v2, Lf6/c;->b:[I

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    const-string v4, "Requested contents should be less than 80 digits long, but got "

    .line 162
    .line 163
    const/16 v5, 0x50

    .line 164
    .line 165
    if-gt v3, v5, :cond_20d

    .line 166
    .line 167
    const/4 v6, 0x0

    .line 168
    move v7, v6

    .line 169
    :goto_a8
    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 170
    .line 171
    if-ge v7, v3, :cond_1b2

    .line 172
    .line 173
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-gez v9, :cond_1ae

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    move v9, v6

    .line 193
    :goto_c0
    if-ge v9, v3, :cond_197

    .line 194
    .line 195
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_18e

    .line 200
    .line 201
    const/16 v11, 0x20

    .line 202
    .line 203
    if-eq v10, v11, :cond_18a

    .line 204
    .line 205
    const/16 v12, 0x40

    .line 206
    .line 207
    if-eq v10, v12, :cond_184

    .line 208
    .line 209
    const/16 v12, 0x60

    .line 210
    .line 211
    if-eq v10, v12, :cond_17e

    .line 212
    .line 213
    const/16 v12, 0x2d

    .line 214
    .line 215
    if-eq v10, v12, :cond_18a

    .line 216
    .line 217
    const/16 v12, 0x2e

    .line 218
    .line 219
    if-eq v10, v12, :cond_18a

    .line 220
    .line 221
    const/16 v12, 0x1a

    .line 222
    .line 223
    if-gt v10, v12, :cond_ed

    .line 224
    .line 225
    const/16 v11, 0x24

    .line 226
    .line 227
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    add-int/lit8 v10, v10, 0x40

    .line 231
    .line 232
    int-to-char v10, v10

    .line 233
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    goto/16 :goto_193

    .line 237
    .line 238
    :cond_ed
    const/16 v12, 0x25

    .line 239
    .line 240
    if-ge v10, v11, :cond_fc

    .line 241
    .line 242
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    add-int/lit8 v10, v10, 0x26

    .line 246
    .line 247
    int-to-char v10, v10

    .line 248
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    goto/16 :goto_193

    .line 252
    .line 253
    :cond_fc
    const/16 v11, 0x2c

    .line 254
    .line 255
    const/16 v13, 0x2f

    .line 256
    .line 257
    if-le v10, v11, :cond_174

    .line 258
    .line 259
    if-eq v10, v13, :cond_174

    .line 260
    .line 261
    const/16 v11, 0x3a

    .line 262
    .line 263
    if-ne v10, v11, :cond_109

    .line 264
    .line 265
    goto :goto_174

    .line 266
    :cond_109
    const/16 v11, 0x39

    .line 267
    .line 268
    if-gt v10, v11, :cond_113

    .line 269
    .line 270
    int-to-char v10, v10

    .line 271
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    goto/16 :goto_193

    .line 275
    .line 276
    :cond_113
    const/16 v11, 0x3f

    .line 277
    .line 278
    if-gt v10, v11, :cond_122

    .line 279
    .line 280
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    add-int/lit8 v10, v10, 0xb

    .line 284
    .line 285
    int-to-char v10, v10

    .line 286
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    goto/16 :goto_193

    .line 290
    .line 291
    :cond_122
    const/16 v11, 0x5a

    .line 292
    .line 293
    if-gt v10, v11, :cond_12b

    .line 294
    .line 295
    int-to-char v10, v10

    .line 296
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    goto :goto_193

    .line 300
    :cond_12b
    const/16 v11, 0x5f

    .line 301
    .line 302
    if-gt v10, v11, :cond_139

    .line 303
    .line 304
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    add-int/lit8 v10, v10, -0x10

    .line 308
    .line 309
    int-to-char v10, v10

    .line 310
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    goto :goto_193

    .line 314
    :cond_139
    const/16 v11, 0x7a

    .line 315
    .line 316
    if-gt v10, v11, :cond_149

    .line 317
    .line 318
    const/16 v11, 0x2b

    .line 319
    .line 320
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    add-int/lit8 v10, v10, -0x20

    .line 324
    .line 325
    int-to-char v10, v10

    .line 326
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    goto :goto_193

    .line 330
    :cond_149
    const/16 v11, 0x7f

    .line 331
    .line 332
    if-gt v10, v11, :cond_157

    .line 333
    .line 334
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    add-int/lit8 v10, v10, -0x2b

    .line 338
    .line 339
    int-to-char v10, v10

    .line 340
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    goto :goto_193

    .line 344
    :cond_157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 345
    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v4, "Requested content contains a non-encodable character: \'"

    .line 349
    .line 350
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v1, "\'"

    .line 361
    .line 362
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v2

    .line 373
    :cond_174
    :goto_174
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    add-int/lit8 v10, v10, 0x20

    .line 377
    .line 378
    int-to-char v10, v10

    .line 379
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    goto :goto_193

    .line 383
    :cond_17e
    const-string v10, "%W"

    .line 384
    .line 385
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    goto :goto_193

    .line 389
    :cond_184
    const-string v10, "%V"

    .line 390
    .line 391
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    goto :goto_193

    .line 395
    :cond_18a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    goto :goto_193

    .line 399
    :cond_18e
    const-string v10, "%U"

    .line 400
    .line 401
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    :goto_193
    add-int/lit8 v9, v9, 0x1

    .line 405
    .line 406
    goto/16 :goto_c0

    .line 407
    .line 408
    :cond_197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-gt v3, v5, :cond_1a2

    .line 417
    .line 418
    goto :goto_1b2

    .line 419
    :cond_1a2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 420
    .line 421
    const-string v2, " (extended full ASCII mode)"

    .line 422
    .line 423
    invoke-static {v3, v4, v2}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v1

    .line 431
    :cond_1ae
    add-int/lit8 v7, v7, 0x1

    .line 432
    .line 433
    goto/16 :goto_a8

    .line 434
    .line 435
    :cond_1b2
    :goto_1b2
    const/16 v4, 0x9

    .line 436
    .line 437
    new-array v5, v4, [I

    .line 438
    .line 439
    add-int/lit8 v7, v3, 0x19

    .line 440
    .line 441
    move v9, v6

    .line 442
    :goto_1b9
    if-ge v9, v3, :cond_1d4

    .line 443
    .line 444
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    .line 449
    .line 450
    .line 451
    move-result v10

    .line 452
    aget v10, v2, v10

    .line 453
    .line 454
    invoke-static {v5, v10}, Lf6/g;->z([II)V

    .line 455
    .line 456
    .line 457
    move v10, v6

    .line 458
    :goto_1c9
    if-ge v10, v4, :cond_1d1

    .line 459
    .line 460
    aget v11, v5, v10

    .line 461
    .line 462
    add-int/2addr v7, v11

    .line 463
    add-int/lit8 v10, v10, 0x1

    .line 464
    .line 465
    goto :goto_1c9

    .line 466
    :cond_1d1
    add-int/lit8 v9, v9, 0x1

    .line 467
    .line 468
    goto :goto_1b9

    .line 469
    :cond_1d4
    new-array v4, v7, [Z

    .line 470
    .line 471
    const/16 v7, 0x94

    .line 472
    .line 473
    invoke-static {v5, v7}, Lf6/g;->z([II)V

    .line 474
    .line 475
    .line 476
    const/4 v9, 0x1

    .line 477
    invoke-static {v4, v6, v5, v9}, Ly1/g;->d([ZI[IZ)I

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    filled-new-array {v9}, [I

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    invoke-static {v4, v10, v11, v6}, Ly1/g;->d([ZI[IZ)I

    .line 486
    .line 487
    .line 488
    move-result v12

    .line 489
    add-int/2addr v12, v10

    .line 490
    move v10, v6

    .line 491
    :goto_1ea
    if-ge v10, v3, :cond_206

    .line 492
    .line 493
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 494
    .line 495
    .line 496
    move-result v13

    .line 497
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    aget v13, v2, v13

    .line 502
    .line 503
    invoke-static {v5, v13}, Lf6/g;->z([II)V

    .line 504
    .line 505
    .line 506
    invoke-static {v4, v12, v5, v9}, Ly1/g;->d([ZI[IZ)I

    .line 507
    .line 508
    .line 509
    move-result v13

    .line 510
    add-int/2addr v13, v12

    .line 511
    invoke-static {v4, v13, v11, v6}, Ly1/g;->d([ZI[IZ)I

    .line 512
    .line 513
    .line 514
    move-result v12

    .line 515
    add-int/2addr v12, v13

    .line 516
    add-int/lit8 v10, v10, 0x1

    .line 517
    .line 518
    goto :goto_1ea

    .line 519
    :cond_206
    invoke-static {v5, v7}, Lf6/g;->z([II)V

    .line 520
    .line 521
    .line 522
    invoke-static {v4, v12, v5, v9}, Ly1/g;->d([ZI[IZ)I

    .line 523
    .line 524
    .line 525
    return-object v4

    .line 526
    :cond_20d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 527
    .line 528
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    throw v1

    .line 540
    :pswitch_21b
    sget-object v2, Lf6/c;->a:[[I

    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-lez v3, :cond_35c

    .line 547
    .line 548
    const/16 v4, 0x50

    .line 549
    .line 550
    if-gt v3, v4, :cond_35c

    .line 551
    .line 552
    const/4 v5, 0x0

    .line 553
    :goto_228
    if-ge v5, v3, :cond_249

    .line 554
    .line 555
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 556
    .line 557
    .line 558
    move-result v6

    .line 559
    packed-switch v6, :pswitch_data_3e8

    .line 560
    .line 561
    .line 562
    const/16 v7, 0x7f

    .line 563
    .line 564
    if-gt v6, v7, :cond_236

    .line 565
    .line 566
    goto :goto_246

    .line 567
    :cond_236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 568
    .line 569
    const-string v2, "Bad character in input: "

    .line 570
    .line 571
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v1

    .line 583
    :goto_246
    :pswitch_246
    add-int/lit8 v5, v5, 0x1

    .line 584
    .line 585
    goto :goto_228

    .line 586
    :cond_249
    new-instance v5, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .line 590
    .line 591
    const/4 v6, 0x1

    .line 592
    move v10, v6

    .line 593
    const/4 v7, 0x0

    .line 594
    const/4 v8, 0x0

    .line 595
    const/4 v9, 0x0

    .line 596
    :cond_253
    :goto_253
    if-ge v7, v3, :cond_319

    .line 597
    .line 598
    invoke-static {v7, v1}, Lf6/g;->y(ILjava/lang/String;)I

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    const/16 v13, 0x60

    .line 603
    .line 604
    const/4 v14, 0x2

    .line 605
    const/16 v15, 0x20

    .line 606
    .line 607
    const/16 v4, 0x64

    .line 608
    .line 609
    const/16 v16, 0x67

    .line 610
    .line 611
    const/16 v11, 0x65

    .line 612
    .line 613
    if-ne v12, v14, :cond_26a

    .line 614
    .line 615
    :cond_266
    move v13, v4

    .line 616
    :goto_267
    move/from16 v17, v15

    .line 617
    .line 618
    goto :goto_2be

    .line 619
    :cond_26a
    if-ne v12, v6, :cond_27e

    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 622
    .line 623
    .line 624
    move-result v12

    .line 625
    if-ge v7, v12, :cond_266

    .line 626
    .line 627
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    if-lt v12, v15, :cond_27c

    .line 632
    .line 633
    if-ne v9, v11, :cond_266

    .line 634
    .line 635
    if-ge v12, v13, :cond_266

    .line 636
    .line 637
    :cond_27c
    move v13, v11

    .line 638
    goto :goto_267

    .line 639
    :cond_27e
    const/16 v13, 0x63

    .line 640
    .line 641
    if-ne v9, v13, :cond_283

    .line 642
    .line 643
    goto :goto_267

    .line 644
    :cond_283
    const/4 v13, 0x3

    .line 645
    move/from16 v17, v15

    .line 646
    .line 647
    const/4 v15, 0x4

    .line 648
    if-ne v9, v4, :cond_2b3

    .line 649
    .line 650
    if-ne v12, v15, :cond_28d

    .line 651
    .line 652
    :cond_28b
    :goto_28b
    move v13, v4

    .line 653
    goto :goto_2be

    .line 654
    :cond_28d
    add-int/lit8 v12, v7, 0x2

    .line 655
    .line 656
    invoke-static {v12, v1}, Lf6/g;->y(ILjava/lang/String;)I

    .line 657
    .line 658
    .line 659
    move-result v12

    .line 660
    if-eq v12, v6, :cond_28b

    .line 661
    .line 662
    if-ne v12, v14, :cond_298

    .line 663
    .line 664
    goto :goto_28b

    .line 665
    :cond_298
    if-ne v12, v15, :cond_2a5

    .line 666
    .line 667
    add-int/lit8 v12, v7, 0x3

    .line 668
    .line 669
    invoke-static {v12, v1}, Lf6/g;->y(ILjava/lang/String;)I

    .line 670
    .line 671
    .line 672
    move-result v12

    .line 673
    if-ne v12, v13, :cond_28b

    .line 674
    .line 675
    :cond_2a2
    :goto_2a2
    const/16 v13, 0x63

    .line 676
    .line 677
    goto :goto_2be

    .line 678
    :cond_2a5
    add-int/lit8 v12, v7, 0x4

    .line 679
    .line 680
    :goto_2a7
    invoke-static {v12, v1}, Lf6/g;->y(ILjava/lang/String;)I

    .line 681
    .line 682
    .line 683
    move-result v15

    .line 684
    if-ne v15, v13, :cond_2b0

    .line 685
    .line 686
    add-int/lit8 v12, v12, 0x2

    .line 687
    .line 688
    goto :goto_2a7

    .line 689
    :cond_2b0
    if-ne v15, v14, :cond_2a2

    .line 690
    .line 691
    goto :goto_28b

    .line 692
    :cond_2b3
    if-ne v12, v15, :cond_2bb

    .line 693
    .line 694
    add-int/lit8 v12, v7, 0x1

    .line 695
    .line 696
    invoke-static {v12, v1}, Lf6/g;->y(ILjava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v12

    .line 700
    :cond_2bb
    if-ne v12, v13, :cond_28b

    .line 701
    .line 702
    goto :goto_2a2

    .line 703
    :goto_2be
    if-ne v13, v9, :cond_2fa

    .line 704
    .line 705
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 706
    .line 707
    .line 708
    move-result v12

    .line 709
    packed-switch v12, :pswitch_data_3f4

    .line 710
    .line 711
    .line 712
    if-eq v9, v4, :cond_2e3

    .line 713
    .line 714
    if-eq v9, v11, :cond_2d8

    .line 715
    .line 716
    add-int/lit8 v4, v7, 0x2

    .line 717
    .line 718
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    move-result v13

    .line 726
    add-int/lit8 v7, v7, 0x1

    .line 727
    .line 728
    goto :goto_2f8

    .line 729
    :cond_2d8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    add-int/lit8 v13, v4, -0x20

    .line 734
    .line 735
    if-gez v13, :cond_2f8

    .line 736
    .line 737
    add-int/lit8 v13, v4, 0x40

    .line 738
    .line 739
    goto :goto_2f8

    .line 740
    :cond_2e3
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    add-int/lit8 v13, v4, -0x20

    .line 745
    .line 746
    goto :goto_2f8

    .line 747
    :pswitch_2ea
    if-ne v9, v11, :cond_2ee

    .line 748
    .line 749
    move v13, v11

    .line 750
    goto :goto_2f8

    .line 751
    :cond_2ee
    move v13, v4

    .line 752
    goto :goto_2f8

    .line 753
    :pswitch_2f0
    const/16 v13, 0x60

    .line 754
    .line 755
    goto :goto_2f8

    .line 756
    :pswitch_2f3
    const/16 v13, 0x61

    .line 757
    .line 758
    goto :goto_2f8

    .line 759
    :pswitch_2f6
    const/16 v13, 0x66

    .line 760
    .line 761
    :cond_2f8
    :goto_2f8
    add-int/2addr v7, v6

    .line 762
    goto :goto_30c

    .line 763
    :cond_2fa
    if-nez v9, :cond_309

    .line 764
    .line 765
    if-eq v13, v4, :cond_306

    .line 766
    .line 767
    if-eq v13, v11, :cond_303

    .line 768
    .line 769
    const/16 v11, 0x69

    .line 770
    .line 771
    goto :goto_30a

    .line 772
    :cond_303
    move/from16 v11, v16

    .line 773
    .line 774
    goto :goto_30a

    .line 775
    :cond_306
    const/16 v11, 0x68

    .line 776
    .line 777
    goto :goto_30a

    .line 778
    :cond_309
    move v11, v13

    .line 779
    :goto_30a
    move v9, v13

    .line 780
    move v13, v11

    .line 781
    :goto_30c
    aget-object v4, v2, v13

    .line 782
    .line 783
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    mul-int/2addr v13, v10

    .line 787
    add-int/2addr v8, v13

    .line 788
    if-eqz v7, :cond_253

    .line 789
    .line 790
    add-int/lit8 v10, v10, 0x1

    .line 791
    .line 792
    goto/16 :goto_253

    .line 793
    .line 794
    :cond_319
    const/16 v16, 0x67

    .line 795
    .line 796
    rem-int/lit8 v8, v8, 0x67

    .line 797
    .line 798
    aget-object v1, v2, v8

    .line 799
    .line 800
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    const/16 v1, 0x6a

    .line 804
    .line 805
    aget-object v1, v2, v1

    .line 806
    .line 807
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    const/4 v2, 0x0

    .line 815
    const/4 v3, 0x0

    .line 816
    :cond_32f
    if-ge v3, v1, :cond_343

    .line 817
    .line 818
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    add-int/lit8 v3, v3, 0x1

    .line 823
    .line 824
    check-cast v4, [I

    .line 825
    .line 826
    array-length v7, v4

    .line 827
    const/4 v8, 0x0

    .line 828
    :goto_33b
    if-ge v8, v7, :cond_32f

    .line 829
    .line 830
    aget v9, v4, v8

    .line 831
    .line 832
    add-int/2addr v2, v9

    .line 833
    add-int/lit8 v8, v8, 0x1

    .line 834
    .line 835
    goto :goto_33b

    .line 836
    :cond_343
    new-array v1, v2, [Z

    .line 837
    .line 838
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    const/4 v3, 0x0

    .line 843
    const/4 v4, 0x0

    .line 844
    :goto_34b
    if-ge v3, v2, :cond_35b

    .line 845
    .line 846
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    add-int/lit8 v3, v3, 0x1

    .line 851
    .line 852
    check-cast v7, [I

    .line 853
    .line 854
    invoke-static {v1, v4, v7, v6}, Ly1/g;->d([ZI[IZ)I

    .line 855
    .line 856
    .line 857
    move-result v7

    .line 858
    add-int/2addr v4, v7

    .line 859
    goto :goto_34b

    .line 860
    :cond_35b
    return-object v1

    .line 861
    :cond_35c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 862
    .line 863
    const-string v2, "Contents length should be between 1 and 80 characters, but got "

    .line 864
    .line 865
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v1

    .line 877
    :pswitch_36c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    rem-int/lit8 v3, v2, 0x2

    .line 882
    .line 883
    if-nez v3, :cond_3d5

    .line 884
    .line 885
    const/16 v3, 0x50

    .line 886
    .line 887
    if-gt v2, v3, :cond_3c5

    .line 888
    .line 889
    mul-int/lit8 v3, v2, 0x9

    .line 890
    .line 891
    add-int/lit8 v3, v3, 0x9

    .line 892
    .line 893
    new-array v3, v3, [Z

    .line 894
    .line 895
    sget-object v4, Lf6/g;->b:[I

    .line 896
    .line 897
    const/4 v5, 0x0

    .line 898
    const/4 v6, 0x1

    .line 899
    invoke-static {v3, v5, v4, v6}, Ly1/g;->d([ZI[IZ)I

    .line 900
    .line 901
    .line 902
    move-result v4

    .line 903
    move v7, v5

    .line 904
    :goto_387
    if-ge v7, v2, :cond_3bf

    .line 905
    .line 906
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 907
    .line 908
    .line 909
    move-result v8

    .line 910
    const/16 v9, 0xa

    .line 911
    .line 912
    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    .line 913
    .line 914
    .line 915
    move-result v8

    .line 916
    add-int/lit8 v10, v7, 0x1

    .line 917
    .line 918
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 919
    .line 920
    .line 921
    move-result v10

    .line 922
    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    .line 923
    .line 924
    .line 925
    move-result v10

    .line 926
    new-array v9, v9, [I

    .line 927
    .line 928
    move v11, v5

    .line 929
    :goto_3a0
    const/4 v12, 0x5

    .line 930
    if-ge v11, v12, :cond_3b7

    .line 931
    .line 932
    mul-int/lit8 v12, v11, 0x2

    .line 933
    .line 934
    sget-object v13, Lf6/g;->d:[[I

    .line 935
    .line 936
    aget-object v14, v13, v8

    .line 937
    .line 938
    aget v14, v14, v11

    .line 939
    .line 940
    aput v14, v9, v12

    .line 941
    .line 942
    add-int/2addr v12, v6

    .line 943
    aget-object v13, v13, v10

    .line 944
    .line 945
    aget v13, v13, v11

    .line 946
    .line 947
    aput v13, v9, v12

    .line 948
    .line 949
    add-int/lit8 v11, v11, 0x1

    .line 950
    .line 951
    goto :goto_3a0

    .line 952
    :cond_3b7
    invoke-static {v3, v4, v9, v6}, Ly1/g;->d([ZI[IZ)I

    .line 953
    .line 954
    .line 955
    move-result v8

    .line 956
    add-int/2addr v4, v8

    .line 957
    add-int/lit8 v7, v7, 0x2

    .line 958
    .line 959
    goto :goto_387

    .line 960
    :cond_3bf
    sget-object v1, Lf6/g;->c:[I

    .line 961
    .line 962
    invoke-static {v3, v4, v1, v6}, Ly1/g;->d([ZI[IZ)I

    .line 963
    .line 964
    .line 965
    return-object v3

    .line 966
    :cond_3c5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 967
    .line 968
    const-string v3, "Requested contents should be less than 80 digits long, but got "

    .line 969
    .line 970
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    throw v1

    .line 982
    :cond_3d5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    const-string v2, "The length of the input should be even"

    .line 985
    .line 986
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    throw v1

    .line 990
    nop

    .line 991
    :pswitch_data_3de
    .packed-switch 0x0
        :pswitch_36c
        :pswitch_21b
        :pswitch_9a
    .end packed-switch

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :pswitch_data_3e8
    .packed-switch 0xf1
        :pswitch_246
        :pswitch_246
        :pswitch_246
        :pswitch_246
    .end packed-switch

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    :pswitch_data_3f4
    .packed-switch 0xf1
        :pswitch_2f6
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ea
    .end packed-switch
.end method
