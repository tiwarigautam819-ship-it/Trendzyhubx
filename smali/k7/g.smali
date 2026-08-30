###### Class k7.g (k7.g)
.class public abstract Lk7/g;
.super Lk7/o;


# direct methods
.method public static A(Ljava/lang/CharSequence;CII)I
    .registers 5

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_6
    const-string p3, "<this>"

    .line 8
    .line 9
    invoke-static {p3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    instance-of p3, p0, Ljava/lang/String;

    .line 13
    .line 14
    if-nez p3, :cond_19

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    new-array p3, p3, [C

    .line 18
    .line 19
    aput-char p1, p3, v0

    .line 20
    .line 21
    invoke-static {p0, p3, p2, v0}, Lk7/g;->C(Ljava/lang/CharSequence;[CIZ)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_19
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public static synthetic B(Ljava/lang/CharSequence;Ljava/lang/String;II)I
    .registers 5

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_6
    invoke-static {p0, p1, p2, v0}, Lk7/g;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final C(Ljava/lang/CharSequence;[CIZ)I
    .registers 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p3, :cond_2f

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-ne v1, v0, :cond_2f

    .line 11
    .line 12
    instance-of v1, p0, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_2f

    .line 15
    .line 16
    array-length p3, p1

    .line 17
    if-eqz p3, :cond_27

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p3, v0, :cond_1f

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    aget-char p1, p1, p3

    .line 24
    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p1, "Array has more than one element."

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_27
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 41
    .line 42
    const-string p1, "Array is empty."

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2f
    new-instance v1, Lh7/c;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-gez p2, :cond_35

    .line 52
    .line 53
    move p2, v2

    .line 54
    :cond_35
    invoke-static {p0}, Lk7/g;->y(Ljava/lang/CharSequence;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-direct {v1, p2, v3, v0}, Lh7/a;-><init>(III)V

    .line 59
    .line 60
    .line 61
    iget v3, v1, Lh7/a;->b:I

    .line 62
    .line 63
    iget v1, v1, Lh7/a;->c:I

    .line 64
    .line 65
    if-lez v1, :cond_47

    .line 66
    .line 67
    if-gt p2, v3, :cond_45

    .line 68
    .line 69
    goto :goto_49

    .line 70
    :cond_45
    move v0, v2

    .line 71
    goto :goto_49

    .line 72
    :cond_47
    if-lt p2, v3, :cond_45

    .line 73
    .line 74
    :goto_49
    if-eqz v0, :cond_4c

    .line 75
    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move p2, v3

    .line 78
    :goto_4d
    if-eqz v0, :cond_74

    .line 79
    .line 80
    if-ne p2, v3, :cond_5c

    .line 81
    .line 82
    if-eqz v0, :cond_56

    .line 83
    .line 84
    move v4, p2

    .line 85
    move v0, v2

    .line 86
    goto :goto_5e

    .line 87
    :cond_56
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5c
    add-int v4, p2, v1

    .line 94
    .line 95
    :goto_5e
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    array-length v6, p1

    .line 100
    move v7, v2

    .line 101
    :goto_64
    if-ge v7, v6, :cond_72

    .line 102
    .line 103
    aget-char v8, p1, v7

    .line 104
    .line 105
    invoke-static {v8, v5, p3}, La2/c;->e(CCZ)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_6f

    .line 110
    .line 111
    return p2

    .line 112
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    goto :goto_64

    .line 115
    :cond_72
    move p2, v4

    .line 116
    goto :goto_4d

    .line 117
    :cond_74
    const/4 p0, -0x1

    .line 118
    return p0
.end method

.method public static D(Ljava/lang/String;CII)I
    .registers 4

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_8

    .line 4
    .line 5
    invoke-static {p0}, Lk7/g;->y(Ljava/lang/CharSequence;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_8
    const-string p3, "<this>"

    .line 10
    .line 11
    invoke-static {p3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static E(Ljava/lang/CharSequence;[Ljava/lang/String;I)Lk7/c;
    .registers 6

    .line 1
    invoke-static {p2}, Lk7/g;->H(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ls6/f;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lk7/c;

    .line 9
    .line 10
    new-instance v1, Lk7/p;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, p1}, Lk7/p;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, p2, v1}, Lk7/c;-><init>(Ljava/lang/CharSequence;ILc7/p;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final F(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .registers 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ltz p3, :cond_39

    .line 13
    .line 14
    if-ltz p1, :cond_39

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, p4

    .line 21
    if-gt p1, v1, :cond_39

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int/2addr v1, p4

    .line 28
    if-le p3, v1, :cond_1e

    .line 29
    .line 30
    goto :goto_39

    .line 31
    :cond_1e
    move v1, v0

    .line 32
    :goto_1f
    if-ge v1, p4, :cond_37

    .line 33
    .line 34
    add-int v2, p1, v1

    .line 35
    .line 36
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int v3, p3, v1

    .line 41
    .line 42
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v2, v3, p5}, La2/c;->e(CCZ)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_34

    .line 51
    .line 52
    return v0

    .line 53
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1f

    .line 56
    :cond_37
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_39
    :goto_39
    return v0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_14

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "substring(...)"

    .line 17
    .line 18
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-object p0
.end method

.method public static final H(I)V
    .registers 2

    .line 1
    if-ltz p0, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "Limit must be non-negative, but was "

    .line 5
    .line 6
    invoke-static {p0, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static final I(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/util/List;
    .registers 11

    .line 1
    invoke-static {p2}, Lk7/g;->H(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0, v0}, Lk7/g;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_52

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne p2, v3, :cond_f

    .line 14
    .line 15
    goto :goto_52

    .line 16
    :cond_f
    if-lez p2, :cond_13

    .line 17
    .line 18
    move v4, v3

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v4, v0

    .line 21
    :goto_14
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v6, 0xa

    .line 24
    .line 25
    if-eqz v4, :cond_1e

    .line 26
    .line 27
    if-le p2, v6, :cond_1d

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v6, p2

    .line 31
    :cond_1e
    :goto_1e
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    move v6, v0

    .line 35
    :cond_22
    invoke-interface {p0, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    add-int/2addr v6, v1

    .line 51
    if-eqz v4, :cond_3c

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v7, p2, -0x1

    .line 58
    .line 59
    if-eq v1, v7, :cond_42

    .line 60
    .line 61
    :cond_3c
    invoke-static {p0, p1, v6, v0}, Lk7/g;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v1, v2, :cond_22

    .line 66
    .line 67
    :cond_42
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-interface {p0, v6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-object v5

    .line 83
    :cond_52
    :goto_52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method public static J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;
    .registers 6

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_6

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_6
    const-string p3, "<this>"

    .line 8
    .line 9
    invoke-static {p3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    array-length p3, p1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p3, v1, :cond_1d

    .line 15
    .line 16
    aget-object p3, p1, v0

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_18

    .line 23
    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    invoke-static {p0, p3, p2}, Lk7/g;->I(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1d
    :goto_1d
    invoke-static {p0, p1, p2}, Lk7/g;->E(Ljava/lang/CharSequence;[Ljava/lang/String;I)Lk7/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lj7/i;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lj7/i;-><init>(Lk7/c;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {p2}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lj7/i;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    :goto_33
    move-object p3, p2

    .line 53
    check-cast p3, Lk7/b;

    .line 54
    .line 55
    invoke-virtual {p3}, Lk7/b;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4a

    .line 60
    .line 61
    invoke-virtual {p3}, Lk7/b;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    check-cast p3, Lh7/c;

    .line 66
    .line 67
    invoke-static {p0, p3}, Lk7/g;->L(Ljava/lang/CharSequence;Lh7/c;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_33

    .line 75
    :cond_4a
    return-object p1
.end method

.method public static K(Ljava/lang/String;[C)Ljava/util/List;
    .registers 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_15

    .line 10
    .line 11
    aget-char p1, p1, v2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1, v2}, Lk7/g;->I(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-static {v2}, Lk7/g;->H(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lk7/c;

    .line 26
    .line 27
    new-instance v1, Lk7/p;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, v3, p1}, Lk7/p;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, v2, v1}, Lk7/c;-><init>(Ljava/lang/CharSequence;ILc7/p;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lj7/i;

    .line 37
    .line 38
    invoke-direct {p1, v0}, Lj7/i;-><init>(Lk7/c;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {p1}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lj7/i;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_35
    move-object v1, p1

    .line 55
    check-cast v1, Lk7/b;

    .line 56
    .line 57
    invoke-virtual {v1}, Lk7/b;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4c

    .line 62
    .line 63
    invoke-virtual {v1}, Lk7/b;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lh7/c;

    .line 68
    .line 69
    invoke-static {p0, v1}, Lk7/g;->L(Ljava/lang/CharSequence;Lh7/c;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_35

    .line 77
    :cond_4c
    return-object v0
.end method

.method public static final L(Ljava/lang/CharSequence;Lh7/c;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "range"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lh7/a;->a:I

    .line 12
    .line 13
    iget p1, p1, Lh7/a;->b:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "delimiter"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, p1, v0, v1}, Lk7/g;->B(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_f

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "substring(...)"

    .line 30
    .line 31
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "missingDelimiterValue"

    .line 7
    .line 8
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x6

    .line 13
    const/16 v2, 0x2e

    .line 14
    .line 15
    invoke-static {p0, v2, v0, v1}, Lk7/g;->D(Ljava/lang/String;CII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v0, v1, :cond_16

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "substring(...)"

    .line 34
    .line 35
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static O(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-ltz p0, :cond_14

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le p0, v0, :cond_9

    .line 8
    .line 9
    move p0, v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "substring(...)"

    .line 16
    .line 17
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string p1, "Requested character count "

    .line 22
    .line 23
    const-string v0, " is less than zero."

    .line 24
    .line 25
    invoke-static {p0, p1, v0}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_e
    if-gt v3, v0, :cond_38

    .line 16
    .line 17
    if-nez v4, :cond_14

    .line 18
    .line 19
    move v5, v3

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v5, v0

    .line 22
    :goto_15
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_28

    .line 31
    .line 32
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_26

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :cond_26
    move v5, v2

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    :goto_28
    move v5, v1

    .line 42
    :goto_29
    if-nez v4, :cond_32

    .line 43
    .line 44
    if-nez v5, :cond_2f

    .line 45
    .line 46
    move v4, v1

    .line 47
    goto :goto_e

    .line 48
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_e

    .line 51
    :cond_32
    if-nez v5, :cond_35

    .line 52
    .line 53
    goto :goto_38

    .line 54
    :cond_35
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    goto :goto_e

    .line 57
    :cond_38
    :goto_38
    add-int/2addr v0, v1

    .line 58
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static w(Ljava/lang/CharSequence;C)Z
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v1, v0}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ltz p0, :cond_f

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_f
    return v1
.end method

.method public static x(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, p1, v1, v0}, Lk7/g;->B(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ltz p0, :cond_14

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_14
    return v1
.end method

.method public static final y(Ljava/lang/CharSequence;)I
    .registers 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    .line 12
    return p0
.end method

.method public static final z(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .registers 16

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "string"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_18

    .line 12
    .line 13
    instance-of v0, p0, Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_18

    .line 18
    :cond_11
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, -0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    new-instance v3, Lh7/c;

    .line 32
    .line 33
    if-gez p2, :cond_23

    .line 34
    .line 35
    move p2, v2

    .line 36
    :cond_23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le v0, v2, :cond_2a

    .line 41
    .line 42
    move v0, v2

    .line 43
    :cond_2a
    const/4 v2, 0x1

    .line 44
    invoke-direct {v3, p2, v0, v2}, Lh7/a;-><init>(III)V

    .line 45
    .line 46
    .line 47
    instance-of p2, p0, Ljava/lang/String;

    .line 48
    .line 49
    iget v0, v3, Lh7/a;->c:I

    .line 50
    .line 51
    iget v2, v3, Lh7/a;->b:I

    .line 52
    .line 53
    iget v3, v3, Lh7/a;->a:I

    .line 54
    .line 55
    if-eqz p2, :cond_5e

    .line 56
    .line 57
    instance-of p2, p1, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p2, :cond_5e

    .line 60
    .line 61
    if-lez v0, :cond_40

    .line 62
    .line 63
    if-le v3, v2, :cond_44

    .line 64
    .line 65
    :cond_40
    if-gez v0, :cond_7e

    .line 66
    .line 67
    if-gt v2, v3, :cond_7e

    .line 68
    .line 69
    :cond_44
    move v5, v3

    .line 70
    :goto_45
    move-object v8, p0

    .line 71
    check-cast v8, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v4, 0x0

    .line 78
    move-object v7, p1

    .line 79
    move v9, p3

    .line 80
    invoke-static/range {v4 .. v9}, Lk7/o;->s(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    move-object v6, v7

    .line 85
    if-eqz p1, :cond_58

    .line 86
    .line 87
    move v1, v5

    .line 88
    goto :goto_7e

    .line 89
    :cond_58
    if-eq v5, v2, :cond_7e

    .line 90
    .line 91
    add-int/2addr v5, v0

    .line 92
    move-object p1, v6

    .line 93
    move p3, v9

    .line 94
    goto :goto_45

    .line 95
    :cond_5e
    move-object v6, p1

    .line 96
    move v9, p3

    .line 97
    if-lez v0, :cond_64

    .line 98
    .line 99
    if-le v3, v2, :cond_68

    .line 100
    .line 101
    :cond_64
    if-gez v0, :cond_7e

    .line 102
    .line 103
    if-gt v2, v3, :cond_7e

    .line 104
    .line 105
    :cond_68
    :goto_68
    const/4 v7, 0x0

    .line 106
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    move-object v8, p0

    .line 111
    move v11, v9

    .line 112
    move v9, v3

    .line 113
    invoke-static/range {v6 .. v11}, Lk7/g;->F(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    move v9, v11

    .line 118
    if-eqz p0, :cond_79

    .line 119
    .line 120
    move v1, v3

    .line 121
    goto :goto_7e

    .line 122
    :cond_79
    if-eq v3, v2, :cond_7e

    .line 123
    .line 124
    add-int/2addr v3, v0

    .line 125
    move-object p0, v8

    .line 126
    goto :goto_68

    .line 127
    :cond_7e
    :goto_7e
    return v1
.end method
