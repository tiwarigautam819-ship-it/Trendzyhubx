###### Class com.engagelab.privates.inapp.view.RoundedImageView (com.engagelab.privates.inapp.view.RoundedImageView)
.class public Lcom/engagelab/privates/inapp/view/RoundedImageView;
.super Landroid/widget/ImageView;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private defaultRadius:I

.field private height:F

.field private leftBottomRadius:I

.field private leftTopRadius:I

.field private radius:I

.field private rightBottomRadius:I

.field private rightTopRadius:I

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/engagelab/privates/inapp/view/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/engagelab/privates/inapp/view/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x2d

    .line 6
    iput p3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->defaultRadius:I

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->defaultRadius:I

    .line 2
    .line 3
    iput p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 4
    .line 5
    iput p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 6
    .line 7
    iput p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 8
    .line 9
    iput p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 2
    .line 3
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 10
    .line 11
    iget v2, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    iget v0, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 19
    .line 20
    iget v2, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v2, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 27
    .line 28
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    iget v0, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    cmpl-float v0, v0, v1

    .line 39
    .line 40
    if-ltz v0, :cond_85

    .line 41
    .line 42
    iget v0, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 43
    .line 44
    int-to-float v1, v2

    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-lez v0, :cond_85

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/Path;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 55
    .line 56
    int-to-float v1, v1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 62
    .line 63
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    sub-float/2addr v1, v3

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 71
    .line 72
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 79
    .line 80
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 81
    .line 82
    iget v4, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 83
    .line 84
    int-to-float v4, v4

    .line 85
    sub-float/2addr v3, v4

    .line 86
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 90
    .line 91
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 92
    .line 93
    iget v4, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 94
    .line 95
    int-to-float v4, v4

    .line 96
    sub-float v4, v1, v4

    .line 97
    .line 98
    invoke-virtual {v0, v1, v3, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 102
    .line 103
    int-to-float v1, v1

    .line 104
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 110
    .line 111
    iget v3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 112
    .line 113
    int-to-float v3, v3

    .line 114
    sub-float v3, v1, v3

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 117
    .line 118
    .line 119
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 120
    .line 121
    int-to-float v1, v1

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 132
    .line 133
    .line 134
    :cond_85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    int-to-float p2, p2

    .line 10
    iput p2, p1, Lcom/engagelab/privates/inapp/view/RoundedImageView;->width:F

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-float p2, p2

    .line 17
    iput p2, p1, Lcom/engagelab/privates/inapp/view/RoundedImageView;->height:F

    .line 18
    .line 19
    return-void
.end method

.method public setRadius(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftTopRadius:I

    .line 2
    .line 3
    iput p2, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightTopRadius:I

    .line 4
    .line 5
    iput p3, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->rightBottomRadius:I

    .line 6
    .line 7
    iput p4, p0, Lcom/engagelab/privates/inapp/view/RoundedImageView;->leftBottomRadius:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
