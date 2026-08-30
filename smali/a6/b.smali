###### Class a6.b (a6.b)
.class public abstract La6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_a

    .line 6
    .line 7
    .line 8
    sput-object v0, La6/b;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_a
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method public static a(Lb6/b;II)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-ge v0, p2, :cond_1c

    .line 3
    .line 4
    sub-int v1, p1, v0

    .line 5
    .line 6
    move v2, v1

    .line 7
    :goto_6
    add-int v3, p1, v0

    .line 8
    .line 9
    if-gt v2, v3, :cond_19

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lb6/b;->b(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, v3}, Lb6/b;->b(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lb6/b;->b(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v2}, Lb6/b;->b(II)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_6

    .line 26
    :cond_19
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1c
    sub-int v0, p1, p2

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0}, Lb6/b;->b(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lb6/b;->b(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lb6/b;->b(II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p1, p2

    .line 43
    invoke-virtual {p0, p1, v0}, Lb6/b;->b(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lb6/b;->b(II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p2, p1, -0x1

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lb6/b;->b(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static b(Lb6/a;II)Lb6/a;
    .registers 14

    .line 1
    iget v0, p0, Lb6/a;->b:I

    .line 2
    .line 3
    div-int/2addr v0, p2

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-eq p2, v2, :cond_33

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    if-eq p2, v2, :cond_30

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-eq p2, v2, :cond_2d

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    if-eq p2, v2, :cond_2a

    .line 19
    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    if-ne p2, v2, :cond_1a

    .line 23
    .line 24
    sget-object v2, Lc6/a;->g:Lc6/a;

    .line 25
    .line 26
    goto :goto_35

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p1, "Unsupported word size "

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2a
    sget-object v2, Lc6/a;->h:Lc6/a;

    .line 44
    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    sget-object v2, Lc6/a;->l:Lc6/a;

    .line 47
    .line 48
    goto :goto_35

    .line 49
    :cond_30
    sget-object v2, Lc6/a;->i:Lc6/a;

    .line 50
    .line 51
    goto :goto_35

    .line 52
    :cond_33
    sget-object v2, Lc6/a;->j:Lc6/a;

    .line 53
    .line 54
    :goto_35
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Lc6/a;)V

    .line 55
    .line 56
    .line 57
    div-int v2, p1, p2

    .line 58
    .line 59
    new-array v3, v2, [I

    .line 60
    .line 61
    iget v4, p0, Lb6/a;->b:I

    .line 62
    .line 63
    div-int/2addr v4, p2

    .line 64
    const/4 v5, 0x0

    .line 65
    move v6, v5

    .line 66
    :goto_41
    if-ge v6, v4, :cond_61

    .line 67
    .line 68
    move v7, v5

    .line 69
    move v8, v7

    .line 70
    :goto_45
    if-ge v7, p2, :cond_5c

    .line 71
    .line 72
    mul-int v9, v6, p2

    .line 73
    .line 74
    add-int/2addr v9, v7

    .line 75
    invoke-virtual {p0, v9}, Lb6/a;->d(I)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_57

    .line 80
    .line 81
    sub-int v9, p2, v7

    .line 82
    .line 83
    const/4 v10, 0x1

    .line 84
    sub-int/2addr v9, v10

    .line 85
    shl-int v9, v10, v9

    .line 86
    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v9, v5

    .line 89
    :goto_58
    or-int/2addr v8, v9

    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_45

    .line 93
    :cond_5c
    aput v8, v3, v6

    .line 94
    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_41

    .line 98
    :cond_61
    sub-int p0, v2, v0

    .line 99
    .line 100
    invoke-virtual {v1, v3, p0}, Lcom/google/android/gms/internal/measurement/y4;->w([II)V

    .line 101
    .line 102
    .line 103
    rem-int/2addr p1, p2

    .line 104
    new-instance p0, Lb6/a;

    .line 105
    .line 106
    invoke-direct {p0}, Lb6/a;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v5, p1}, Lb6/a;->b(II)V

    .line 110
    .line 111
    .line 112
    :goto_6f
    if-ge v5, v2, :cond_79

    .line 113
    .line 114
    aget p1, v3, v5

    .line 115
    .line 116
    invoke-virtual {p0, p1, p2}, Lb6/a;->b(II)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_6f

    .line 122
    :cond_79
    return-object p0
.end method

.method public static c(Lb6/a;I)Lb6/a;
    .registers 11

    .line 1
    new-instance v0, Lb6/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb6/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lb6/a;->b:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    shl-int v3, v2, p1

    .line 10
    .line 11
    add-int/lit8 v3, v3, -0x2

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_e
    if-ge v5, v1, :cond_3e

    .line 16
    .line 17
    move v6, v4

    .line 18
    move v7, v6

    .line 19
    :goto_12
    if-ge v6, p1, :cond_27

    .line 20
    .line 21
    add-int v8, v5, v6

    .line 22
    .line 23
    if-ge v8, v1, :cond_1e

    .line 24
    .line 25
    invoke-virtual {p0, v8}, Lb6/a;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_24

    .line 30
    .line 31
    :cond_1e
    add-int/lit8 v8, p1, -0x1

    .line 32
    .line 33
    sub-int/2addr v8, v6

    .line 34
    shl-int v8, v2, v8

    .line 35
    .line 36
    or-int/2addr v7, v8

    .line 37
    :cond_24
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_12

    .line 40
    :cond_27
    and-int v6, v7, v3

    .line 41
    .line 42
    if-ne v6, v3, :cond_31

    .line 43
    .line 44
    invoke-virtual {v0, v6, p1}, Lb6/a;->b(II)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    add-int/lit8 v5, v5, -0x1

    .line 48
    .line 49
    goto :goto_3c

    .line 50
    :cond_31
    if-nez v6, :cond_39

    .line 51
    .line 52
    or-int/lit8 v6, v7, 0x1

    .line 53
    .line 54
    invoke-virtual {v0, v6, p1}, Lb6/a;->b(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_2e

    .line 58
    :cond_39
    invoke-virtual {v0, v7, p1}, Lb6/a;->b(II)V

    .line 59
    .line 60
    .line 61
    :goto_3c
    add-int/2addr v5, p1

    .line 62
    goto :goto_e

    .line 63
    :cond_3e
    return-object v0
.end method
