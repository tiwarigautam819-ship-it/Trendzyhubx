###### Class h1.f (h1.f)
.class public final Lh1/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public a:[Lc0/e;


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    check-cast p2, [Lc0/e;

    .line 2
    .line 3
    check-cast p3, [Lc0/e;

    .line 4
    .line 5
    invoke-static {p2, p3}, Lt4/b;->a([Lc0/e;[Lc0/e;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4b

    .line 10
    .line 11
    iget-object v0, p0, Lh1/f;->a:[Lc0/e;

    .line 12
    .line 13
    invoke-static {v0, p2}, Lt4/b;->a([Lc0/e;[Lc0/e;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_18

    .line 18
    .line 19
    invoke-static {p2}, Lt4/b;->f([Lc0/e;)[Lc0/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lh1/f;->a:[Lc0/e;

    .line 24
    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_1a
    array-length v2, p2

    .line 28
    if-ge v1, v2, :cond_48

    .line 29
    .line 30
    iget-object v2, p0, Lh1/f;->a:[Lc0/e;

    .line 31
    .line 32
    aget-object v2, v2, v1

    .line 33
    .line 34
    aget-object v3, p2, v1

    .line 35
    .line 36
    aget-object v4, p3, v1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-char v5, v3, Lc0/e;->a:C

    .line 42
    .line 43
    iput-char v5, v2, Lc0/e;->a:C

    .line 44
    .line 45
    move v5, v0

    .line 46
    :goto_2d
    iget-object v6, v3, Lc0/e;->b:[F

    .line 47
    .line 48
    array-length v7, v6

    .line 49
    if-ge v5, v7, :cond_45

    .line 50
    .line 51
    iget-object v7, v2, Lc0/e;->b:[F

    .line 52
    .line 53
    aget v6, v6, v5

    .line 54
    .line 55
    const/high16 v8, 0x3f800000    # 1.0f

    .line 56
    .line 57
    sub-float/2addr v8, p1

    .line 58
    mul-float/2addr v8, v6

    .line 59
    iget-object v6, v4, Lc0/e;->b:[F

    .line 60
    .line 61
    aget v6, v6, v5

    .line 62
    .line 63
    mul-float/2addr v6, p1

    .line 64
    add-float/2addr v6, v8

    .line 65
    aput v6, v7, v5

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_2d

    .line 70
    :cond_45
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_1a

    .line 73
    :cond_48
    iget-object p1, p0, Lh1/f;->a:[Lc0/e;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p2, "Can\'t interpolate between two incompatible pathData"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
