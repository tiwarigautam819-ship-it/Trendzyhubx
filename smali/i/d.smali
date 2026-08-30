###### Class i.d (i.d)
.class public final Li/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public a:[I

.field public b:I

.field public c:I


# virtual methods
.method public final getInterpolation(F)F
    .registers 6

    .line 1
    iget v0, p0, Li/d;->c:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    iget v0, p0, Li/d;->b:I

    .line 10
    .line 11
    iget-object v1, p0, Li/d;->a:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v0, :cond_17

    .line 15
    .line 16
    aget v3, v1, v2

    .line 17
    .line 18
    if-lt p1, v3, :cond_17

    .line 19
    .line 20
    sub-int/2addr p1, v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_d

    .line 24
    :cond_17
    if-ge v2, v0, :cond_1f

    .line 25
    .line 26
    int-to-float p1, p1

    .line 27
    iget v1, p0, Li/d;->c:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr p1, v1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    int-to-float v1, v2

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr v1, v0

    .line 36
    add-float/2addr v1, p1

    .line 37
    return v1
.end method
