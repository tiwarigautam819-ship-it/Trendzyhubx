###### Class k7.n (k7.n)
.class public abstract Lk7/n;
.super Lk7/m;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static p(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 11

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {v0}, La2/c;->d(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_55

    .line 18
    :cond_11
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    invoke-static {v3, v4}, Ld7/g;->g(II)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const v5, -0x7fffffff

    .line 30
    .line 31
    .line 32
    if-gez v4, :cond_33

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v1, v4, :cond_25

    .line 36
    .line 37
    goto :goto_55

    .line 38
    :cond_25
    const/16 v6, 0x2d

    .line 39
    .line 40
    if-ne v3, v6, :cond_2d

    .line 41
    .line 42
    const/high16 v5, -0x80000000

    .line 43
    .line 44
    move v3, v4

    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    const/16 v6, 0x2b

    .line 47
    .line 48
    if-ne v3, v6, :cond_55

    .line 49
    .line 50
    move v3, v2

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    move v3, v2

    .line 53
    move v4, v3

    .line 54
    :goto_35
    const v6, -0x38e38e3

    .line 55
    .line 56
    .line 57
    move v7, v6

    .line 58
    :goto_39
    if-ge v4, v1, :cond_5b

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-gez v8, :cond_46

    .line 69
    .line 70
    goto :goto_55

    .line 71
    :cond_46
    if-ge v2, v7, :cond_4f

    .line 72
    .line 73
    if-ne v7, v6, :cond_55

    .line 74
    .line 75
    div-int/lit8 v7, v5, 0xa

    .line 76
    .line 77
    if-ge v2, v7, :cond_4f

    .line 78
    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    mul-int/lit8 v2, v2, 0xa

    .line 81
    .line 82
    add-int v9, v5, v8

    .line 83
    .line 84
    if-ge v2, v9, :cond_57

    .line 85
    .line 86
    :cond_55
    :goto_55
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    :cond_57
    sub-int/2addr v2, v8

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_39

    .line 92
    :cond_5b
    if-eqz v3, :cond_62

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_62
    neg-int p0, v2

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
