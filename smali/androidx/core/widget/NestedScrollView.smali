###### Class androidx.core.widget.NestedScrollView (androidx.core.widget.NestedScrollView)
.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/p;
.implements Lj0/n;


# static fields
.field public static final J:F

.field public static final K:Lm0/e;

.field public static final L:[I


# instance fields
.field public final A:[I

.field public final B:[I

.field public C:I

.field public D:I

.field public E:Lm0/h;

.field public final F:Lj0/q;

.field public final G:Lcom/google/firebase/messaging/p;

.field public H:F

.field public final I:Lj0/g;

.field public final a:F

.field public b:J

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/widget/OverScroller;

.field public final e:Landroid/widget/EdgeEffect;

.field public final f:Landroid/widget/EdgeEffect;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Landroid/view/VelocityTracker;

.field public m:Z

.field public v:Z

.field public final w:I

.field public final x:I

.field public final y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    sput v0, Landroidx/core/widget/NestedScrollView;->J:F

    .line 22
    .line 23
    new-instance v0, Lm0/e;

    .line 24
    .line 25
    invoke-direct {v0}, Lj0/b;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/core/widget/NestedScrollView;->K:Lm0/e;

    .line 29
    .line 30
    const v0, 0x101017a

    .line 31
    .line 32
    .line 33
    filled-new-array {v0}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Landroidx/core/widget/NestedScrollView;->L:[I

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    const v0, 0x7f0400d8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    .line 22
    .line 23
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->v:Z

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v4, v3, [I

    .line 32
    .line 33
    iput-object v4, p0, Landroidx/core/widget/NestedScrollView;->A:[I

    .line 34
    .line 35
    new-array v3, v3, [I

    .line 36
    .line 37
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->B:[I

    .line 38
    .line 39
    new-instance v3, Lo5/c;

    .line 40
    .line 41
    const/16 v4, 0x14

    .line 42
    .line 43
    invoke-direct {v3, v4, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lj0/g;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-direct {v4, v5, v3}, Lj0/g;-><init>(Landroid/content/Context;Lo5/c;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Landroidx/core/widget/NestedScrollView;->I:Lj0/g;

    .line 56
    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v4, 0x1f

    .line 60
    .line 61
    if-lt v3, v4, :cond_43

    .line 62
    .line 63
    invoke-static {p1, p2}, Lm0/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    new-instance v5, Landroid/widget/EdgeEffect;

    .line 69
    .line 70
    invoke-direct {v5, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    :goto_48
    iput-object v5, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    if-lt v3, v4, :cond_51

    .line 76
    .line 77
    invoke-static {p1, p2}, Lm0/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_56

    .line 82
    :cond_51
    new-instance v3, Landroid/widget/EdgeEffect;

    .line 83
    .line 84
    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    :goto_56
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .line 99
    const/high16 v4, 0x43200000    # 160.0f

    .line 100
    .line 101
    mul-float/2addr v3, v4

    .line 102
    const v4, 0x43c10b3d

    .line 103
    .line 104
    .line 105
    mul-float/2addr v3, v4

    .line 106
    const v4, 0x3f570a3d    # 0.84f

    .line 107
    .line 108
    .line 109
    mul-float/2addr v3, v4

    .line 110
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->a:F

    .line 111
    .line 112
    new-instance v3, Landroid/widget/OverScroller;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-direct {v3, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 124
    .line 125
    .line 126
    const/high16 v3, 0x40000

    .line 127
    .line 128
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->w:I

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->x:I

    .line 153
    .line 154
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->y:I

    .line 159
    .line 160
    sget-object v3, Landroidx/core/widget/NestedScrollView;->L:[I

    .line 161
    .line 162
    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lj0/q;

    .line 177
    .line 178
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->F:Lj0/q;

    .line 182
    .line 183
    new-instance p1, Lcom/google/firebase/messaging/p;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object p0, p1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 193
    .line 194
    .line 195
    sget-object p1, Landroidx/core/widget/NestedScrollView;->K:Lm0/e;

    .line 196
    .line 197
    invoke-static {p0, p1}, Lj0/k0;->h(Landroid/view/View;Lj0/b;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public static m(Landroid/view/View;Landroidx/core/widget/NestedScrollView;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_3

    .line 2
    .line 3
    goto :goto_13

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v0, :cond_15

    .line 11
    .line 12
    check-cast p0, Landroid/view/View;

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/View;Landroidx/core/widget/NestedScrollView;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_15

    .line 19
    .line 20
    :goto_13
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->F:Lj0/q;

    .line 3
    .line 4
    if-ne p4, p1, :cond_8

    .line 5
    .line 6
    iput p3, p2, Lj0/q;->b:I

    .line 7
    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput p3, p2, Lj0/q;->a:I

    .line 10
    .line 11
    :goto_a
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .registers 4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 6
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 12
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/view/View;I)V
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->F:Lj0/q;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, p1, :cond_9

    .line 6
    .line 7
    iput v1, v0, Lj0/q;->b:I

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput v1, v0, Lj0/q;->a:I

    .line 11
    .line 12
    :goto_b
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    invoke-virtual {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeHorizontalScrollOffset()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeHorizontalScrollRange()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeScroll()V
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->D:I

    .line 24
    .line 25
    sub-int v2, v1, v2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 32
    .line 33
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 34
    .line 35
    const/high16 v4, 0x3f000000    # 0.5f

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/high16 v8, 0x40800000    # 4.0f

    .line 39
    .line 40
    if-lez v2, :cond_49

    .line 41
    .line 42
    invoke-static {v6}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    cmpl-float v9, v9, v5

    .line 47
    .line 48
    if-eqz v9, :cond_49

    .line 49
    .line 50
    neg-int v5, v2

    .line 51
    int-to-float v5, v5

    .line 52
    mul-float/2addr v5, v8

    .line 53
    int-to-float v9, v3

    .line 54
    div-float/2addr v5, v9

    .line 55
    neg-int v3, v3

    .line 56
    int-to-float v3, v3

    .line 57
    div-float/2addr v3, v8

    .line 58
    invoke-static {v6, v5, v4}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    mul-float/2addr v4, v3

    .line 63
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eq v3, v2, :cond_47

    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->finish()V

    .line 70
    .line 71
    .line 72
    :cond_47
    :goto_47
    sub-int/2addr v2, v3

    .line 73
    goto :goto_67

    .line 74
    :cond_49
    if-gez v2, :cond_67

    .line 75
    .line 76
    invoke-static {v7}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    cmpl-float v5, v9, v5

    .line 81
    .line 82
    if-eqz v5, :cond_67

    .line 83
    .line 84
    int-to-float v5, v2

    .line 85
    mul-float/2addr v5, v8

    .line 86
    int-to-float v3, v3

    .line 87
    div-float/2addr v5, v3

    .line 88
    div-float/2addr v3, v8

    .line 89
    invoke-static {v7, v5, v4}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    mul-float/2addr v4, v3

    .line 94
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eq v3, v2, :cond_47

    .line 99
    .line 100
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 101
    .line 102
    .line 103
    goto :goto_47

    .line 104
    :cond_67
    :goto_67
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->D:I

    .line 105
    .line 106
    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->B:[I

    .line 107
    .line 108
    const/4 v8, 0x1

    .line 109
    const/4 v9, 0x0

    .line 110
    aput v9, v15, v8

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v3, 0x1

    .line 114
    const/4 v1, 0x0

    .line 115
    move-object v4, v15

    .line 116
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->i(III[I[I)Z

    .line 117
    .line 118
    .line 119
    aget v1, v15, v8

    .line 120
    .line 121
    sub-int/2addr v2, v1

    .line 122
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {}, Lf0/a;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_90

    .line 131
    .line 132
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v0, v3}, Lm0/f;->a(Landroidx/core/widget/NestedScrollView;F)V

    .line 143
    .line 144
    .line 145
    :cond_90
    if-eqz v2, :cond_b8

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-virtual {v0, v2, v4, v3, v1}, Landroidx/core/widget/NestedScrollView;->q(IIII)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    sub-int v10, v4, v3

    .line 163
    .line 164
    sub-int v12, v2, v10

    .line 165
    .line 166
    aput v9, v15, v8

    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    move v2, v8

    .line 170
    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    iget-object v13, v0, Landroidx/core/widget/NestedScrollView;->A:[I

    .line 174
    .line 175
    const/4 v14, 0x1

    .line 176
    move v3, v2

    .line 177
    invoke-virtual/range {v8 .. v15}, Lcom/google/firebase/messaging/p;->c(IIII[II[I)Z

    .line 178
    .line 179
    .line 180
    aget v2, v15, v3

    .line 181
    .line 182
    sub-int v2, v12, v2

    .line 183
    .line 184
    goto :goto_b9

    .line 185
    :cond_b8
    move v3, v8

    .line 186
    :goto_b9
    if-eqz v2, :cond_f0

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_c5

    .line 193
    .line 194
    if-ne v4, v3, :cond_e8

    .line 195
    .line 196
    if-lez v1, :cond_e8

    .line 197
    .line 198
    :cond_c5
    if-gez v2, :cond_d8

    .line 199
    .line 200
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_e8

    .line 205
    .line 206
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    float-to-int v1, v1

    .line 213
    invoke-virtual {v6, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_e8

    .line 217
    :cond_d8
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_e8

    .line 222
    .line 223
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 224
    .line 225
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    float-to-int v1, v1

    .line 230
    invoke-virtual {v7, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 231
    .line 232
    .line 233
    :cond_e8
    :goto_e8
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 234
    .line 235
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 239
    .line 240
    .line 241
    :cond_f0
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_fc

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_fc
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final computeVerticalScrollRange()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return v1

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    .line 39
    add-int/2addr v2, v3

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-int v1, v2, v1

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-gez v3, :cond_35

    .line 51
    .line 52
    sub-int/2addr v2, v3

    .line 53
    return v2

    .line 54
    :cond_35
    if-le v3, v0, :cond_3a

    .line 55
    .line 56
    sub-int/2addr v3, v0

    .line 57
    add-int/2addr v3, v2

    .line 58
    return v3

    .line 59
    :cond_3a
    return v2
.end method

.method public final d(Landroid/view/View;IIIII)V
    .registers 7

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public final dispatchNestedFling(FFZ)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2f

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2f

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    :try_start_11
    invoke-interface {v1, v0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 19
    .line 20
    .line 21
    move-result p1
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_11 .. :try_end_15} :catch_16

    .line 22
    return p1

    .line 23
    :catch_16
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "ViewParent "

    .line 27
    .line 28
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p3, " does not implement interface method onNestedFling"

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, "ViewParentCompat"

    .line 44
    .line 45
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_2f
    return v2
.end method

.method public final dispatchNestedPreFling(FF)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/messaging/p;->b(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->i(III[I[I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .registers 14

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 4
    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/messaging/p;->c(IIII[II[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_5f

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_35

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    add-int/2addr v8, v7

    .line 48
    sub-int/2addr v4, v8

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v7, v3

    .line 55
    :goto_36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_4b

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    add-int/2addr v9, v8

    .line 70
    sub-int/2addr v5, v9

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v6, v8

    .line 76
    :cond_4b
    int-to-float v7, v7

    .line 77
    int-to-float v6, v6

    .line 78
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5c

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 91
    .line 92
    .line 93
    :cond_5c
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_c1

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v0, v5

    .line 125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_90

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    add-int/2addr v6, v3

    .line 140
    sub-int/2addr v4, v6

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    :cond_90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_a5

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    add-int/2addr v7, v6

    .line 160
    sub-int/2addr v5, v7

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    sub-int/2addr v0, v6

    .line 166
    :cond_a5
    sub-int/2addr v3, v4

    .line 167
    int-to-float v3, v3

    .line 168
    int-to-float v0, v0

    .line 169
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    .line 171
    .line 172
    int-to-float v0, v4

    .line 173
    const/4 v3, 0x0

    .line 174
    const/high16 v6, 0x43340000    # 180.0f

    .line 175
    .line 176
    invoke-virtual {p1, v6, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_be

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 189
    .line 190
    .line 191
    :cond_be
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 192
    .line 193
    .line 194
    :cond_c1
    return-void
.end method

.method public final e(III[I)V
    .registers 11

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->i(III[I[I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    .line 1
    and-int/lit8 p1, p3, 0x2

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public final g(I)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_7

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v1, :cond_34

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {p0, v1, v2, v5}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_34

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/graphics/Rect;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->t(IIIZ)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 50
    .line 51
    .line 52
    goto :goto_7b

    .line 53
    :cond_34
    const/16 v1, 0x21

    .line 54
    .line 55
    const/16 v5, 0x82

    .line 56
    .line 57
    if-ne p1, v1, :cond_45

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge v1, v2, :cond_45

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_71

    .line 70
    :cond_45
    if-ne p1, v5, :cond_71

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_71

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 93
    .line 94
    add-int/2addr v1, v6

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    add-int/2addr v7, v6

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    sub-int/2addr v7, v6

    .line 109
    sub-int/2addr v1, v7

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    :cond_71
    :goto_71
    if-nez v2, :cond_74

    .line 115
    .line 116
    return v3

    .line 117
    :cond_74
    if-ne p1, v5, :cond_77

    .line 118
    .line 119
    goto :goto_78

    .line 120
    :cond_77
    neg-int v2, v2

    .line 121
    :goto_78
    invoke-virtual {p0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->t(IIIZ)I

    .line 122
    .line 123
    .line 124
    :goto_7b
    if-eqz v0, :cond_9c

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_9c

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p0, v0, v3, p1}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9c

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/high16 v0, 0x20000

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 155
    .line 156
    .line 157
    :cond_9c
    return v4
.end method

.method public getBottomFadingEdgeStrength()F
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    sub-int/2addr v3, v4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    sub-int/2addr v0, v3

    .line 46
    if-ge v0, v2, :cond_33

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    int-to-float v1, v2

    .line 50
    div-float/2addr v0, v1

    .line 51
    return v0

    .line 52
    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    .line 54
    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    float-to-int v0, v0

    .line 10
    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->F:Lj0/q;

    .line 2
    .line 3
    iget v1, v0, Lj0/q;->a:I

    .line 4
    .line 5
    iget v0, v0, Lj0/q;->b:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getScrollRange()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2f

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-int/2addr v2, v3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v2, v3

    .line 42
    sub-int/2addr v0, v2

    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_2f
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v1, v0, :cond_16

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr v1, v0

    .line 22
    return v1

    .line 23
    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    return v0
.end method

.method public getVerticalScrollFactorCompat()F
    .registers 6

    .line 1
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->H:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_35

    .line 7
    .line 8
    new-instance v0, Landroid/util/TypedValue;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x101004d

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2d

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->H:F

    .line 44
    .line 45
    goto :goto_35

    .line 46
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "Expected theme to define listPreferredItemHeight."

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_35
    :goto_35
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->H:F

    .line 55
    .line 56
    return v0
.end method

.method public final h(Landroid/graphics/Rect;)I
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int v3, v2, v0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-lez v5, :cond_1b

    .line 26
    .line 27
    add-int/2addr v2, v4

    .line 28
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    .line 46
    add-int/2addr v8, v9

    .line 47
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 48
    .line 49
    add-int/2addr v8, v9

    .line 50
    if-ge v7, v8, :cond_36

    .line 51
    .line 52
    sub-int v4, v3, v4

    .line 53
    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v4, v3

    .line 56
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    if-le v7, v4, :cond_59

    .line 59
    .line 60
    iget v8, p1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    if-le v8, v2, :cond_59

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-le v1, v0, :cond_49

    .line 69
    .line 70
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    sub-int/2addr p1, v2

    .line 73
    goto :goto_4c

    .line 74
    :cond_49
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    sub-int/2addr p1, v4

    .line 77
    :goto_4c
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    .line 83
    add-int/2addr v0, v1

    .line 84
    sub-int/2addr v0, v3

    .line 85
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_59
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    if-ge v3, v2, :cond_78

    .line 93
    .line 94
    if-ge v7, v4, :cond_78

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-le v3, v0, :cond_6a

    .line 101
    .line 102
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 103
    .line 104
    sub-int/2addr v4, p1

    .line 105
    sub-int/2addr v1, v4

    .line 106
    goto :goto_6e

    .line 107
    :cond_6a
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    sub-int/2addr v2, p1

    .line 110
    sub-int/2addr v1, v2

    .line 111
    :goto_6e
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    neg-int p1, p1

    .line 116
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1

    .line 121
    :cond_78
    return v1
.end method

.method public final hasNestedScrollingParent()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_b
    return v1
.end method

.method public final i(III[I[I)Z
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_86

    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_13

    .line 17
    .line 18
    goto/16 :goto_86

    .line 19
    .line 20
    :cond_13
    const/4 v4, 0x1

    .line 21
    if-nez p1, :cond_20

    .line 22
    .line 23
    if-eqz p2, :cond_19

    .line 24
    .line 25
    goto :goto_20

    .line 26
    :cond_19
    if-eqz p5, :cond_86

    .line 27
    .line 28
    aput v3, p5, v3

    .line 29
    .line 30
    aput v3, p5, v4

    .line 31
    .line 32
    return v3

    .line 33
    :cond_20
    :goto_20
    if-eqz p5, :cond_2a

    .line 34
    .line 35
    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 36
    .line 37
    .line 38
    aget v5, p5, v3

    .line 39
    .line 40
    aget v6, p5, v4

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    move v5, v3

    .line 44
    move v6, v5

    .line 45
    :goto_2c
    if-nez p4, :cond_3d

    .line 46
    .line 47
    iget-object p4, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p4, [I

    .line 50
    .line 51
    if-nez p4, :cond_39

    .line 52
    .line 53
    const/4 p4, 0x2

    .line 54
    new-array p4, p4, [I

    .line 55
    .line 56
    iput-object p4, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_39
    iget-object p4, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p4, [I

    .line 61
    .line 62
    :cond_3d
    aput v3, p4, v3

    .line 63
    .line 64
    aput v3, p4, v4

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 69
    .line 70
    instance-of v7, v2, Lj0/o;

    .line 71
    .line 72
    if-eqz v7, :cond_4f

    .line 73
    .line 74
    check-cast v2, Lj0/o;

    .line 75
    .line 76
    invoke-interface {v2, p1, p2, p3, p4}, Lj0/o;->e(III[I)V

    .line 77
    .line 78
    .line 79
    goto :goto_6e

    .line 80
    :cond_4f
    if-nez p3, :cond_6e

    .line 81
    .line 82
    :try_start_51
    invoke-interface {v2, v0, p1, p2, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_54
    .catch Ljava/lang/AbstractMethodError; {:try_start_51 .. :try_end_54} :catch_55

    .line 83
    .line 84
    .line 85
    goto :goto_6e

    .line 86
    :catch_55
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string p3, "ViewParent "

    .line 90
    .line 91
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, " does not implement interface method onNestedPreScroll"

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string p3, "ViewParentCompat"

    .line 107
    .line 108
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    :cond_6e
    :goto_6e
    if-eqz p5, :cond_7d

    .line 112
    .line 113
    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 114
    .line 115
    .line 116
    aget p1, p5, v3

    .line 117
    .line 118
    sub-int/2addr p1, v5

    .line 119
    aput p1, p5, v3

    .line 120
    .line 121
    aget p1, p5, v4

    .line 122
    .line 123
    sub-int/2addr p1, v6

    .line 124
    aput p1, p5, v4

    .line 125
    .line 126
    :cond_7d
    aget p1, p4, v3

    .line 127
    .line 128
    if-nez p1, :cond_85

    .line 129
    .line 130
    aget p1, p4, v4

    .line 131
    .line 132
    if-eqz p1, :cond_86

    .line 133
    .line 134
    :cond_85
    move v3, v4

    .line 135
    :cond_86
    :goto_86
    return v3
.end method

.method public final isNestedScrollingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 4
    .line 5
    return v0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x82

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-lez v0, :cond_98

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 30
    .line 31
    add-int/2addr v0, v4

    .line 32
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 33
    .line 34
    add-int/2addr v0, v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v3, v4

    .line 49
    if-le v0, v3, :cond_98

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_c0

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v3, 0x13

    .line 62
    .line 63
    const/16 v4, 0x21

    .line 64
    .line 65
    if-eq v0, v3, :cond_88

    .line 66
    .line 67
    const/16 v3, 0x14

    .line 68
    .line 69
    if-eq v0, v3, :cond_78

    .line 70
    .line 71
    const/16 v3, 0x3e

    .line 72
    .line 73
    if-eq v0, v3, :cond_6d

    .line 74
    .line 75
    const/16 p1, 0x5c

    .line 76
    .line 77
    if-eq v0, p1, :cond_68

    .line 78
    .line 79
    const/16 p1, 0x5d

    .line 80
    .line 81
    if-eq v0, p1, :cond_63

    .line 82
    .line 83
    const/16 p1, 0x7a

    .line 84
    .line 85
    if-eq v0, p1, :cond_5f

    .line 86
    .line 87
    const/16 p1, 0x7b

    .line 88
    .line 89
    if-eq v0, p1, :cond_5b

    .line 90
    .line 91
    goto :goto_c0

    .line 92
    :cond_5b
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->r(I)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :cond_5f
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->r(I)V

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_63
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    return p1

    .line 105
    :cond_68
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1

    .line 110
    :cond_6d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_74

    .line 115
    .line 116
    move v1, v4

    .line 117
    :cond_74
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->r(I)V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :cond_78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_83

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :cond_83
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->g(I)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    return p1

    .line 137
    :cond_88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_93

    .line 142
    .line 143
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    return p1

    .line 148
    :cond_93
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->g(I)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    return p1

    .line 153
    :cond_98
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_c0

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const/4 v0, 0x4

    .line 164
    if-eq p1, v0, :cond_c0

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, p0, :cond_ac

    .line 171
    .line 172
    const/4 p1, 0x0

    .line 173
    :cond_ac
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_c0

    .line 182
    .line 183
    if-eq p1, p0, :cond_c0

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_c0

    .line 190
    .line 191
    const/4 p1, 0x1

    .line 192
    return p1

    .line 193
    :cond_c0
    :goto_c0
    return v2
.end method

.method public final k(I)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3f

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/high16 v8, -0x80000000

    .line 23
    .line 24
    const v9, 0x7fffffff

    .line 25
    .line 26
    .line 27
    move v5, p1

    .line 28
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->D:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lf0/a;->a()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3f

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p0, p1}, Lm0/f;->a(Landroidx/core/widget/NestedScrollView;F)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    return-void
.end method

.method public final l(I)Z
    .registers 7

    .line 1
    const/16 v0, 0x82

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_8

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    if-eqz v0, :cond_37

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_37

    .line 27
    .line 28
    sub-int/2addr v0, v2

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v0

    .line 51
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    sub-int/2addr v1, v3

    .line 54
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    :cond_37
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->s(III)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method

.method public final measureChild(Landroid/view/View;II)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p5

    .line 16
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    .line 18
    add-int/2addr v0, p5

    .line 19
    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    .line 21
    add-int/2addr v0, p5

    .line 22
    add-int/2addr v0, p3

    .line 23
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 24
    .line 25
    invoke-static {p2, v0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    .line 31
    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    add-int/2addr p3, p4

    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final n(Landroid/view/View;II)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lt p1, v1, :cond_1d

    .line 17
    .line 18
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    sub-int/2addr p1, p2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    add-int/2addr p2, p3

    .line 26
    if-gt p1, p2, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final o(II[I)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int v4, v1, v0

    .line 14
    .line 15
    if-eqz p3, :cond_16

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aget v1, p3, v0

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    aput v1, p3, v0

    .line 22
    .line 23
    :cond_16
    sub-int v6, p1, v4

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move v8, p2

    .line 31
    move-object v9, p3

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/messaging/p;->c(IIII[II[I)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->i:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ne v2, v3, :cond_342

    .line 12
    .line 13
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 14
    .line 15
    if-nez v2, :cond_342

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x2

    .line 22
    and-int/2addr v2, v3

    .line 23
    const/high16 v5, 0x400000

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/16 v7, 0x1a

    .line 27
    .line 28
    if-ne v2, v3, :cond_29

    .line 29
    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    float-to-int v9, v9

    .line 41
    goto :goto_3f

    .line 42
    :cond_29
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    and-int/2addr v2, v5

    .line 47
    if-ne v2, v5, :cond_3c

    .line 48
    .line 49
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    div-int/lit8 v9, v2, 0x2

    .line 58
    .line 59
    move v2, v7

    .line 60
    goto :goto_3f

    .line 61
    :cond_3c
    move v8, v6

    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    :goto_3f
    cmpl-float v10, v8, v6

    .line 65
    .line 66
    if-eqz v10, :cond_342

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    mul-float/2addr v10, v8

    .line 73
    float-to-int v8, v10

    .line 74
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/16 v11, 0x2002

    .line 79
    .line 80
    and-int/2addr v10, v11

    .line 81
    const/4 v12, 0x1

    .line 82
    if-ne v10, v11, :cond_55

    .line 83
    .line 84
    move v10, v12

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    const/4 v10, 0x0

    .line 87
    :goto_56
    neg-int v8, v8

    .line 88
    invoke-virtual {v0, v8, v9, v12, v10}, Landroidx/core/widget/NestedScrollView;->t(IIIZ)I

    .line 89
    .line 90
    .line 91
    if-eqz v2, :cond_33f

    .line 92
    .line 93
    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->I:Lj0/g;

    .line 94
    .line 95
    iget-object v9, v8, Lj0/g;->b:Lo5/c;

    .line 96
    .line 97
    iget-object v9, v9, Lo5/c;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v9, Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    iget-object v10, v8, Lj0/g;->h:[I

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    iget v14, v8, Lj0/g;->f:I

    .line 112
    .line 113
    const/16 v15, 0x22

    .line 114
    .line 115
    move/from16 v16, v12

    .line 116
    .line 117
    if-ne v14, v11, :cond_84

    .line 118
    .line 119
    iget v14, v8, Lj0/g;->g:I

    .line 120
    .line 121
    if-ne v14, v13, :cond_84

    .line 122
    .line 123
    iget v14, v8, Lj0/g;->e:I

    .line 124
    .line 125
    if-eq v14, v2, :cond_7f

    .line 126
    .line 127
    goto :goto_84

    .line 128
    :cond_7f
    const/4 v4, 0x0

    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    goto/16 :goto_12f

    .line 132
    .line 133
    :cond_84
    :goto_84
    iget-object v14, v8, Lj0/g;->a:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    const/16 v19, 0x0

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const-string v7, "android"

    .line 152
    .line 153
    const-string v5, "dimen"

    .line 154
    .line 155
    const/4 v0, -0x1

    .line 156
    if-lt v12, v15, :cond_a4

    .line 157
    .line 158
    sget v22, Lj0/l0;->a:I

    .line 159
    .line 160
    invoke-static {v3, v6, v2, v4}, Lj0/u;->f(Landroid/view/ViewConfiguration;III)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    goto :goto_dc

    .line 165
    :cond_a4
    sget v22, Lj0/l0;->a:I

    .line 166
    .line 167
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_d9

    .line 172
    .line 173
    invoke-virtual {v6, v2, v4}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_d9

    .line 178
    .line 179
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    const/high16 v15, 0x400000

    .line 184
    .line 185
    if-ne v4, v15, :cond_c5

    .line 186
    .line 187
    const/16 v4, 0x1a

    .line 188
    .line 189
    if-ne v2, v4, :cond_c5

    .line 190
    .line 191
    const-string v4, "config_viewMinRotaryEncoderFlingVelocity"

    .line 192
    .line 193
    invoke-virtual {v6, v4, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    goto :goto_c6

    .line 198
    :cond_c5
    move v4, v0

    .line 199
    :goto_c6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    if-eq v4, v0, :cond_d4

    .line 203
    .line 204
    if-eqz v4, :cond_d9

    .line 205
    .line 206
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-gez v4, :cond_dc

    .line 211
    .line 212
    goto :goto_d9

    .line 213
    :cond_d4
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    goto :goto_dc

    .line 218
    :cond_d9
    :goto_d9
    const v4, 0x7fffffff

    .line 219
    .line 220
    .line 221
    :cond_dc
    :goto_dc
    aput v4, v10, v19

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    const/16 v15, 0x22

    .line 232
    .line 233
    if-lt v12, v15, :cond_ef

    .line 234
    .line 235
    invoke-static {v3, v4, v2, v6}, Lj0/u;->e(Landroid/view/ViewConfiguration;III)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    goto :goto_125

    .line 240
    :cond_ef
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    const/high16 v12, -0x80000000

    .line 245
    .line 246
    if-eqz v4, :cond_124

    .line 247
    .line 248
    invoke-virtual {v4, v2, v6}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-eqz v4, :cond_124

    .line 253
    .line 254
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    const/high16 v15, 0x400000

    .line 259
    .line 260
    if-ne v6, v15, :cond_110

    .line 261
    .line 262
    const/16 v6, 0x1a

    .line 263
    .line 264
    if-ne v2, v6, :cond_110

    .line 265
    .line 266
    const-string v6, "config_viewMaxRotaryEncoderFlingVelocity"

    .line 267
    .line 268
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    goto :goto_111

    .line 273
    :cond_110
    move v5, v0

    .line 274
    :goto_111
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    if-eq v5, v0, :cond_11f

    .line 278
    .line 279
    if-eqz v5, :cond_124

    .line 280
    .line 281
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-gez v0, :cond_125

    .line 286
    .line 287
    goto :goto_124

    .line 288
    :cond_11f
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    goto :goto_125

    .line 293
    :cond_124
    :goto_124
    move v0, v12

    .line 294
    :cond_125
    :goto_125
    aput v0, v10, v16

    .line 295
    .line 296
    iput v11, v8, Lj0/g;->f:I

    .line 297
    .line 298
    iput v13, v8, Lj0/g;->g:I

    .line 299
    .line 300
    iput v2, v8, Lj0/g;->e:I

    .line 301
    .line 302
    move/from16 v4, v16

    .line 303
    .line 304
    :goto_12f
    aget v0, v10, v19

    .line 305
    .line 306
    const v3, 0x7fffffff

    .line 307
    .line 308
    .line 309
    if-ne v0, v3, :cond_141

    .line 310
    .line 311
    iget-object v0, v8, Lj0/g;->c:Landroid/view/VelocityTracker;

    .line 312
    .line 313
    if-eqz v0, :cond_341

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 316
    .line 317
    .line 318
    const/4 v0, 0x0

    .line 319
    iput-object v0, v8, Lj0/g;->c:Landroid/view/VelocityTracker;

    .line 320
    .line 321
    return v16

    .line 322
    :cond_141
    iget-object v0, v8, Lj0/g;->c:Landroid/view/VelocityTracker;

    .line 323
    .line 324
    if-nez v0, :cond_14b

    .line 325
    .line 326
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iput-object v0, v8, Lj0/g;->c:Landroid/view/VelocityTracker;

    .line 331
    .line 332
    :cond_14b
    iget-object v0, v8, Lj0/g;->c:Landroid/view/VelocityTracker;

    .line 333
    .line 334
    sget-object v3, Lj0/v;->a:Ljava/util/Map;

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    .line 338
    .line 339
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 340
    .line 341
    const/16 v5, 0x14

    .line 342
    .line 343
    const/16 v15, 0x22

    .line 344
    .line 345
    if-lt v3, v15, :cond_15b

    .line 346
    .line 347
    goto :goto_1b3

    .line 348
    :cond_15b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    const/high16 v15, 0x400000

    .line 353
    .line 354
    if-ne v3, v15, :cond_1b3

    .line 355
    .line 356
    sget-object v3, Lj0/v;->a:Ljava/util/Map;

    .line 357
    .line 358
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-nez v6, :cond_173

    .line 363
    .line 364
    new-instance v6, Lj0/w;

    .line 365
    .line 366
    invoke-direct {v6}, Lj0/w;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    :cond_173
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Lj0/w;

    .line 377
    .line 378
    iget-object v6, v3, Lj0/w;->b:[J

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 381
    .line 382
    .line 383
    move-result-wide v11

    .line 384
    iget v7, v3, Lj0/w;->d:I

    .line 385
    .line 386
    if-eqz v7, :cond_196

    .line 387
    .line 388
    iget v7, v3, Lj0/w;->e:I

    .line 389
    .line 390
    aget-wide v13, v6, v7

    .line 391
    .line 392
    sub-long v13, v11, v13

    .line 393
    .line 394
    const-wide/16 v23, 0x28

    .line 395
    .line 396
    cmp-long v7, v13, v23

    .line 397
    .line 398
    if-lez v7, :cond_196

    .line 399
    .line 400
    move/from16 v7, v19

    .line 401
    .line 402
    iput v7, v3, Lj0/w;->d:I

    .line 403
    .line 404
    const/4 v7, 0x0

    .line 405
    iput v7, v3, Lj0/w;->c:F

    .line 406
    .line 407
    :cond_196
    iget v7, v3, Lj0/w;->e:I

    .line 408
    .line 409
    add-int/lit8 v7, v7, 0x1

    .line 410
    .line 411
    rem-int/2addr v7, v5

    .line 412
    iput v7, v3, Lj0/w;->e:I

    .line 413
    .line 414
    iget v13, v3, Lj0/w;->d:I

    .line 415
    .line 416
    if-eq v13, v5, :cond_1a5

    .line 417
    .line 418
    add-int/lit8 v13, v13, 0x1

    .line 419
    .line 420
    iput v13, v3, Lj0/w;->d:I

    .line 421
    .line 422
    :cond_1a5
    iget-object v13, v3, Lj0/w;->a:[F

    .line 423
    .line 424
    const/16 v14, 0x1a

    .line 425
    .line 426
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    aput v1, v13, v7

    .line 431
    .line 432
    iget v1, v3, Lj0/w;->e:I

    .line 433
    .line 434
    aput-wide v11, v6, v1

    .line 435
    .line 436
    :cond_1b3
    :goto_1b3
    const/16 v1, 0x3e8

    .line 437
    .line 438
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 442
    .line 443
    .line 444
    sget-object v6, Lj0/v;->a:Ljava/util/Map;

    .line 445
    .line 446
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Lj0/w;

    .line 451
    .line 452
    if-eqz v6, :cond_2b4

    .line 453
    .line 454
    iget-object v7, v6, Lj0/w;->a:[F

    .line 455
    .line 456
    iget-object v11, v6, Lj0/w;->b:[J

    .line 457
    .line 458
    iget v12, v6, Lj0/w;->d:I

    .line 459
    .line 460
    const/4 v13, 0x2

    .line 461
    if-ge v12, v13, :cond_1d6

    .line 462
    .line 463
    :goto_1ce
    move/from16 v26, v2

    .line 464
    .line 465
    move/from16 p1, v3

    .line 466
    .line 467
    move v2, v1

    .line 468
    const/4 v1, 0x0

    .line 469
    goto/16 :goto_28e

    .line 470
    .line 471
    :cond_1d6
    iget v13, v6, Lj0/w;->e:I

    .line 472
    .line 473
    add-int/lit8 v14, v13, 0x14

    .line 474
    .line 475
    add-int/lit8 v12, v12, -0x1

    .line 476
    .line 477
    sub-int/2addr v14, v12

    .line 478
    rem-int/2addr v14, v5

    .line 479
    aget-wide v12, v11, v13

    .line 480
    .line 481
    :goto_1e0
    aget-wide v23, v11, v14

    .line 482
    .line 483
    sub-long v25, v12, v23

    .line 484
    .line 485
    const-wide/16 v27, 0x64

    .line 486
    .line 487
    cmp-long v15, v25, v27

    .line 488
    .line 489
    if-lez v15, :cond_1f4

    .line 490
    .line 491
    iget v15, v6, Lj0/w;->d:I

    .line 492
    .line 493
    add-int/lit8 v15, v15, -0x1

    .line 494
    .line 495
    iput v15, v6, Lj0/w;->d:I

    .line 496
    .line 497
    add-int/lit8 v14, v14, 0x1

    .line 498
    .line 499
    rem-int/2addr v14, v5

    .line 500
    goto :goto_1e0

    .line 501
    :cond_1f4
    iget v12, v6, Lj0/w;->d:I

    .line 502
    .line 503
    const/4 v13, 0x2

    .line 504
    if-ge v12, v13, :cond_1fa

    .line 505
    .line 506
    goto :goto_1ce

    .line 507
    :cond_1fa
    if-ne v12, v13, :cond_214

    .line 508
    .line 509
    add-int/lit8 v14, v14, 0x1

    .line 510
    .line 511
    rem-int/2addr v14, v5

    .line 512
    aget-wide v12, v11, v14

    .line 513
    .line 514
    cmp-long v5, v23, v12

    .line 515
    .line 516
    if-nez v5, :cond_206

    .line 517
    .line 518
    goto :goto_1ce

    .line 519
    :cond_206
    aget v5, v7, v14

    .line 520
    .line 521
    sub-long v12, v12, v23

    .line 522
    .line 523
    long-to-float v7, v12

    .line 524
    div-float/2addr v5, v7

    .line 525
    move/from16 v26, v2

    .line 526
    .line 527
    move/from16 p1, v3

    .line 528
    .line 529
    move v2, v1

    .line 530
    move v1, v5

    .line 531
    goto/16 :goto_28e

    .line 532
    .line 533
    :cond_214
    move/from16 p1, v3

    .line 534
    .line 535
    const/4 v12, 0x0

    .line 536
    const/4 v13, 0x0

    .line 537
    const/4 v15, 0x0

    .line 538
    :goto_219
    iget v3, v6, Lj0/w;->d:I

    .line 539
    .line 540
    add-int/lit8 v3, v3, -0x1

    .line 541
    .line 542
    const/high16 v17, 0x40000000    # 2.0f

    .line 543
    .line 544
    const/high16 v20, 0x3f800000    # 1.0f

    .line 545
    .line 546
    const/high16 v21, -0x40800000    # -1.0f

    .line 547
    .line 548
    if-ge v13, v3, :cond_274

    .line 549
    .line 550
    add-int v3, v13, v14

    .line 551
    .line 552
    rem-int/lit8 v23, v3, 0x14

    .line 553
    .line 554
    aget-wide v23, v11, v23

    .line 555
    .line 556
    add-int/lit8 v3, v3, 0x1

    .line 557
    .line 558
    rem-int/2addr v3, v5

    .line 559
    aget-wide v25, v11, v3

    .line 560
    .line 561
    cmp-long v25, v25, v23

    .line 562
    .line 563
    if-nez v25, :cond_237

    .line 564
    .line 565
    move/from16 v26, v2

    .line 566
    .line 567
    goto :goto_269

    .line 568
    :cond_237
    add-int/lit8 v15, v15, 0x1

    .line 569
    .line 570
    const/16 v18, 0x0

    .line 571
    .line 572
    cmpg-float v25, v12, v18

    .line 573
    .line 574
    if-gez v25, :cond_241

    .line 575
    .line 576
    move/from16 v20, v21

    .line 577
    .line 578
    :cond_241
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 579
    .line 580
    .line 581
    move-result v21

    .line 582
    mul-float v5, v21, v17

    .line 583
    .line 584
    move/from16 v26, v2

    .line 585
    .line 586
    float-to-double v1, v5

    .line 587
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 588
    .line 589
    .line 590
    move-result-wide v1

    .line 591
    double-to-float v1, v1

    .line 592
    mul-float v20, v20, v1

    .line 593
    .line 594
    aget v1, v7, v3

    .line 595
    .line 596
    aget-wide v2, v11, v3

    .line 597
    .line 598
    sub-long v2, v2, v23

    .line 599
    .line 600
    long-to-float v2, v2

    .line 601
    div-float/2addr v1, v2

    .line 602
    sub-float v2, v1, v20

    .line 603
    .line 604
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    mul-float/2addr v1, v2

    .line 609
    add-float/2addr v1, v12

    .line 610
    move/from16 v2, v16

    .line 611
    .line 612
    if-ne v15, v2, :cond_268

    .line 613
    .line 614
    const/high16 v2, 0x3f000000    # 0.5f

    .line 615
    .line 616
    mul-float/2addr v1, v2

    .line 617
    :cond_268
    move v12, v1

    .line 618
    :goto_269
    add-int/lit8 v13, v13, 0x1

    .line 619
    .line 620
    move/from16 v2, v26

    .line 621
    .line 622
    const/16 v1, 0x3e8

    .line 623
    .line 624
    const/16 v5, 0x14

    .line 625
    .line 626
    const/16 v16, 0x1

    .line 627
    .line 628
    goto :goto_219

    .line 629
    :cond_274
    move/from16 v26, v2

    .line 630
    .line 631
    const/16 v18, 0x0

    .line 632
    .line 633
    cmpg-float v1, v12, v18

    .line 634
    .line 635
    if-gez v1, :cond_27e

    .line 636
    .line 637
    move/from16 v20, v21

    .line 638
    .line 639
    :cond_27e
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    mul-float v1, v1, v17

    .line 644
    .line 645
    float-to-double v1, v1

    .line 646
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 647
    .line 648
    .line 649
    move-result-wide v1

    .line 650
    double-to-float v1, v1

    .line 651
    mul-float v1, v1, v20

    .line 652
    .line 653
    const/16 v2, 0x3e8

    .line 654
    .line 655
    :goto_28e
    int-to-float v2, v2

    .line 656
    mul-float/2addr v1, v2

    .line 657
    iput v1, v6, Lj0/w;->c:F

    .line 658
    .line 659
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    neg-float v2, v2

    .line 664
    cmpg-float v1, v1, v2

    .line 665
    .line 666
    if-gez v1, :cond_2a3

    .line 667
    .line 668
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    neg-float v1, v1

    .line 673
    iput v1, v6, Lj0/w;->c:F

    .line 674
    .line 675
    goto :goto_2b6

    .line 676
    :cond_2a3
    iget v1, v6, Lj0/w;->c:F

    .line 677
    .line 678
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    cmpl-float v1, v1, v2

    .line 683
    .line 684
    if-lez v1, :cond_2b6

    .line 685
    .line 686
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    iput v1, v6, Lj0/w;->c:F

    .line 691
    .line 692
    goto :goto_2b6

    .line 693
    :cond_2b4
    move/from16 v26, v2

    .line 694
    .line 695
    :cond_2b6
    :goto_2b6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 696
    .line 697
    const/16 v15, 0x22

    .line 698
    .line 699
    if-lt v1, v15, :cond_2c3

    .line 700
    .line 701
    move/from16 v2, v26

    .line 702
    .line 703
    invoke-static {v0, v2}, Lj0/u;->b(Landroid/view/VelocityTracker;I)F

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    goto :goto_2e7

    .line 708
    :cond_2c3
    move/from16 v2, v26

    .line 709
    .line 710
    if-nez v2, :cond_2cc

    .line 711
    .line 712
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    goto :goto_2e7

    .line 717
    :cond_2cc
    const/4 v1, 0x1

    .line 718
    if-ne v2, v1, :cond_2d4

    .line 719
    .line 720
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    goto :goto_2e7

    .line 725
    :cond_2d4
    sget-object v1, Lj0/v;->a:Ljava/util/Map;

    .line 726
    .line 727
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    check-cast v0, Lj0/w;

    .line 732
    .line 733
    if-eqz v0, :cond_2e6

    .line 734
    .line 735
    const/16 v14, 0x1a

    .line 736
    .line 737
    if-eq v2, v14, :cond_2e3

    .line 738
    .line 739
    goto :goto_2e6

    .line 740
    :cond_2e3
    iget v0, v0, Lj0/w;->c:F

    .line 741
    .line 742
    goto :goto_2e7

    .line 743
    :cond_2e6
    :goto_2e6
    const/4 v0, 0x0

    .line 744
    :goto_2e7
    invoke-virtual {v9}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    neg-float v1, v1

    .line 749
    mul-float/2addr v0, v1

    .line 750
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-nez v4, :cond_303

    .line 755
    .line 756
    iget v2, v8, Lj0/g;->d:F

    .line 757
    .line 758
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    cmpl-float v2, v1, v2

    .line 763
    .line 764
    if-eqz v2, :cond_308

    .line 765
    .line 766
    const/16 v18, 0x0

    .line 767
    .line 768
    cmpl-float v1, v1, v18

    .line 769
    .line 770
    if-eqz v1, :cond_308

    .line 771
    .line 772
    :cond_303
    iget-object v1, v9, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 773
    .line 774
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 775
    .line 776
    .line 777
    :cond_308
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    const/16 v19, 0x0

    .line 782
    .line 783
    aget v2, v10, v19

    .line 784
    .line 785
    int-to-float v2, v2

    .line 786
    cmpg-float v1, v1, v2

    .line 787
    .line 788
    if-gez v1, :cond_318

    .line 789
    .line 790
    const/16 v16, 0x1

    .line 791
    .line 792
    goto :goto_341

    .line 793
    :cond_318
    const/16 v16, 0x1

    .line 794
    .line 795
    aget v1, v10, v16

    .line 796
    .line 797
    neg-int v2, v1

    .line 798
    int-to-float v2, v2

    .line 799
    int-to-float v1, v1

    .line 800
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    const/16 v18, 0x0

    .line 809
    .line 810
    cmpl-float v1, v0, v18

    .line 811
    .line 812
    if-nez v1, :cond_330

    .line 813
    .line 814
    move/from16 v6, v18

    .line 815
    .line 816
    goto :goto_33a

    .line 817
    :cond_330
    iget-object v1, v9, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 818
    .line 819
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 820
    .line 821
    .line 822
    float-to-int v1, v0

    .line 823
    invoke-virtual {v9, v1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 824
    .line 825
    .line 826
    move v6, v0

    .line 827
    :goto_33a
    iput v6, v8, Lj0/g;->d:F

    .line 828
    .line 829
    const/16 v16, 0x1

    .line 830
    .line 831
    return v16

    .line 832
    :cond_33f
    move/from16 v16, v12

    .line 833
    .line 834
    :cond_341
    :goto_341
    return v16

    .line 835
    :cond_342
    const/16 v19, 0x0

    .line 836
    .line 837
    return v19
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_d

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 10
    .line 11
    if-eqz v3, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_af

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    if-eq v0, v1, :cond_83

    .line 22
    .line 23
    if-eq v0, v2, :cond_25

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_83

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    if-eq v0, v1, :cond_20

    .line 30
    .line 31
    goto/16 :goto_132

    .line 32
    .line 33
    :cond_20
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/MotionEvent;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_132

    .line 37
    .line 38
    :cond_25
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 39
    .line 40
    if-ne v0, v5, :cond_2b

    .line 41
    .line 42
    goto/16 :goto_132

    .line 43
    .line 44
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, v5, :cond_4b

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Invalid pointerId="

    .line 53
    .line 54
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " in onInterceptTouchEvent"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "NestedScrollView"

    .line 70
    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto/16 :goto_132

    .line 75
    .line 76
    :cond_4b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    float-to-int v0, v0

    .line 81
    iget v3, p0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 82
    .line 83
    sub-int v3, v0, v3

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->w:I

    .line 90
    .line 91
    if-le v3, v5, :cond_132

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    and-int/2addr v2, v3

    .line 98
    if-nez v2, :cond_132

    .line 99
    .line 100
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 101
    .line 102
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 105
    .line 106
    if-nez v0, :cond_71

    .line 107
    .line 108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 113
    .line 114
    :cond_71
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    .line 118
    .line 119
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->C:I

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_132

    .line 126
    .line 127
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_132

    .line 131
    .line 132
    :cond_83
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 133
    .line 134
    iput v5, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 135
    .line 136
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 137
    .line 138
    if-eqz p1, :cond_90

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 141
    .line 142
    .line 143
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 144
    .line 145
    :cond_90
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    const/4 v10, 0x0

    .line 154
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_aa

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 169
    .line 170
    .line 171
    :cond_aa
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_132

    .line 175
    .line 176
    :cond_af
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    float-to-int v0, v0

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    float-to-int v5, v5

    .line 186
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-lez v6, :cond_117

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    sub-int/2addr v8, v6

    .line 205
    if-lt v0, v8, :cond_117

    .line 206
    .line 207
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    sub-int/2addr v8, v6

    .line 212
    if-ge v0, v8, :cond_117

    .line 213
    .line 214
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-lt v5, v6, :cond_117

    .line 219
    .line 220
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-ge v5, v6, :cond_117

    .line 225
    .line 226
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 233
    .line 234
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 235
    .line 236
    if-nez v0, :cond_f4

    .line 237
    .line 238
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 243
    .line 244
    goto :goto_f7

    .line 245
    :cond_f4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 246
    .line 247
    .line 248
    :goto_f7
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 249
    .line 250
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->x(Landroid/view/MotionEvent;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_111

    .line 263
    .line 264
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_110

    .line 271
    .line 272
    goto :goto_111

    .line 273
    :cond_110
    move v1, v4

    .line 274
    :cond_111
    :goto_111
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 275
    .line 276
    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 277
    .line 278
    .line 279
    goto :goto_132

    .line 280
    :cond_117
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->x(Landroid/view/MotionEvent;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_127

    .line 285
    .line 286
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-nez p1, :cond_126

    .line 293
    .line 294
    goto :goto_127

    .line 295
    :cond_126
    move v1, v4

    .line 296
    :cond_127
    :goto_127
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 297
    .line 298
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 299
    .line 300
    if-eqz p1, :cond_132

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 303
    .line 304
    .line 305
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 306
    .line 307
    :cond_132
    :goto_132
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 308
    .line 309
    return p1
.end method

.method public final onLayout(ZIIII)V
    .registers 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 7
    .line 8
    iget-object p4, p1, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p4, :cond_24

    .line 11
    .line 12
    invoke-static {p4, p0}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/View;Landroidx/core/widget/NestedScrollView;)Z

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-eqz p4, :cond_24

    .line 17
    .line 18
    iget-object p4, p1, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p4, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p4, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->h(Landroid/graphics/Rect;)I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    if-eqz p4, :cond_24

    .line 33
    .line 34
    invoke-virtual {p0, p2, p4}, Landroid/view/View;->scrollBy(II)V

    .line 35
    .line 36
    .line 37
    :cond_24
    const/4 p4, 0x0

    .line 38
    iput-object p4, p1, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    .line 39
    .line 40
    iget-boolean v0, p1, Landroidx/core/widget/NestedScrollView;->i:Z

    .line 41
    .line 42
    if-nez v0, :cond_7d

    .line 43
    .line 44
    iget-object v0, p1, Landroidx/core/widget/NestedScrollView;->E:Lm0/h;

    .line 45
    .line 46
    if-eqz v0, :cond_3c

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p1, Landroidx/core/widget/NestedScrollView;->E:Lm0/h;

    .line 53
    .line 54
    iget v1, v1, Lm0/h;->a:I

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 57
    .line 58
    .line 59
    iput-object p4, p1, Landroidx/core/widget/NestedScrollView;->E:Lm0/h;

    .line 60
    .line 61
    :cond_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    if-lez p4, :cond_57

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .line 77
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    .line 83
    add-int/2addr p4, v1

    .line 84
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 85
    .line 86
    add-int/2addr p4, v0

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move p4, p2

    .line 89
    :goto_58
    sub-int/2addr p5, p3

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    sub-int/2addr p5, p3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    sub-int/2addr p5, p3

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-ge p5, p4, :cond_74

    .line 105
    .line 106
    if-gez p3, :cond_6c

    .line 107
    .line 108
    goto :goto_74

    .line 109
    :cond_6c
    add-int p2, p5, p3

    .line 110
    .line 111
    if-le p2, p4, :cond_73

    .line 112
    .line 113
    sub-int p2, p4, p5

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move p2, p3

    .line 117
    :cond_74
    :goto_74
    if-eq p2, p3, :cond_7d

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    invoke-virtual {p0, p3, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 124
    .line 125
    .line 126
    :cond_7d
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 135
    .line 136
    .line 137
    const/4 p2, 0x1

    .line 138
    iput-boolean p2, p1, Landroidx/core/widget/NestedScrollView;->i:Z

    .line 139
    .line 140
    return-void
.end method

.method public final onMeasure(II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_58

    .line 9
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_f

    .line 14
    .line 15
    goto :goto_58

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-lez p2, :cond_58

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    .line 53
    sub-int/2addr v2, v3

    .line 54
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 55
    .line 56
    sub-int/2addr v2, v3

    .line 57
    if-ge v1, v2, :cond_58

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    add-int/2addr v3, v1

    .line 68
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 69
    .line 70
    add-int/2addr v3, v1

    .line 71
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    .line 73
    add-int/2addr v3, v1

    .line 74
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 75
    .line 76
    invoke-static {p1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/high16 v0, 0x40000000    # 2.0f

    .line 81
    .line 82
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 87
    .line 88
    .line 89
    :cond_58
    :goto_58
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    if-nez p4, :cond_c

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 6
    .line 7
    .line 8
    float-to-int p1, p3

    .line 9
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 10
    .line 11
    .line 12
    return p2

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/messaging/p;->b(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p2

    .line 5
    move v2, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->i(III[I[I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onOverScrolled(IIZZ)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_6

    .line 3
    .line 4
    const/16 p1, 0x82

    .line 5
    .line 6
    goto :goto_b

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_b

    .line 9
    .line 10
    const/16 p1, 0x21

    .line 11
    .line 12
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 13
    .line 14
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_23

    .line 34
    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2e

    .line 45
    .line 46
    :goto_2d
    return v1

    .line 47
    :cond_2e
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lm0/h;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lm0/h;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->E:Lm0/h;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lm0/h;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, v1, Lm0/h;->a:I

    .line 15
    .line 16
    return-object v1
.end method

.method public final onScrollChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2c

    .line 9
    .line 10
    if-ne p0, p1, :cond_c

    .line 11
    .line 12
    goto :goto_2c

    .line 13
    :cond_c
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_2c

    .line 19
    .line 20
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Landroidx/core/widget/NestedScrollView;->h(Landroid/graphics/Rect;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2c

    .line 33
    .line 34
    iget-boolean p3, p0, Landroidx/core/widget/NestedScrollView;->v:Z

    .line 35
    .line 36
    if-eqz p3, :cond_29

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1, p2}, Landroidx/core/widget/NestedScrollView;->v(IIZ)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->f(Landroid/view/View;Landroid/view/View;II)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->b(Landroid/view/View;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    if-nez v2, :cond_e

    .line 8
    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    :cond_e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_17

    .line 21
    .line 22
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->C:I

    .line 23
    .line 24
    :cond_17
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->C:I

    .line 29
    .line 30
    int-to-float v5, v5

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v7, 0x1

    .line 37
    if-eqz v2, :cond_1e3

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, -0x1

    .line 41
    iget-object v10, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 42
    .line 43
    iget-object v11, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    if-eq v2, v7, :cond_158

    .line 46
    .line 47
    if-eq v2, v5, :cond_9e

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    if-eq v2, v5, :cond_60

    .line 51
    .line 52
    const/4 v3, 0x5

    .line 53
    if-eq v2, v3, :cond_4d

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    if-eq v2, v3, :cond_3b

    .line 57
    .line 58
    goto/16 :goto_217

    .line 59
    .line 60
    :cond_3b
    invoke-virtual/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/MotionEvent;)V

    .line 61
    .line 62
    .line 63
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    float-to-int v1, v1

    .line 74
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 75
    .line 76
    goto/16 :goto_217

    .line 77
    .line 78
    :cond_4d
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    float-to-int v3, v3

    .line 87
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 94
    .line 95
    goto/16 :goto_217

    .line 96
    .line 97
    :cond_60
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 98
    .line 99
    if-eqz v1, :cond_86

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lez v1, :cond_86

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 118
    .line 119
    .line 120
    move-result v18

    .line 121
    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 122
    .line 123
    const/4 v15, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_86

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 133
    .line 134
    .line 135
    :cond_86
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 136
    .line 137
    iput-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 138
    .line 139
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 140
    .line 141
    if-eqz v1, :cond_93

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 144
    .line 145
    .line 146
    iput-object v8, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 147
    .line 148
    :cond_93
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_217

    .line 158
    .line 159
    :cond_9e
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ne v2, v9, :cond_c2

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "Invalid pointerId="

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, " in onTouchEvent"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "NestedScrollView"

    .line 189
    .line 190
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto/16 :goto_217

    .line 194
    .line 195
    :cond_c2
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    float-to-int v5, v5

    .line 200
    iget v8, v0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 201
    .line 202
    sub-int/2addr v8, v5

    .line 203
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    int-to-float v12, v12

    .line 212
    div-float/2addr v9, v12

    .line 213
    int-to-float v12, v8

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    int-to-float v13, v13

    .line 219
    div-float/2addr v12, v13

    .line 220
    invoke-static {v10}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    cmpl-float v13, v13, v6

    .line 225
    .line 226
    if-eqz v13, :cond_f6

    .line 227
    .line 228
    neg-float v11, v12

    .line 229
    invoke-static {v10, v11, v9}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    neg-float v9, v9

    .line 234
    invoke-static {v10}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    cmpl-float v6, v11, v6

    .line 239
    .line 240
    if-nez v6, :cond_f4

    .line 241
    .line 242
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 243
    .line 244
    .line 245
    :cond_f4
    :goto_f4
    move v6, v9

    .line 246
    goto :goto_111

    .line 247
    :cond_f6
    invoke-static {v11}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    cmpl-float v10, v10, v6

    .line 252
    .line 253
    if-eqz v10, :cond_111

    .line 254
    .line 255
    const/high16 v10, 0x3f800000    # 1.0f

    .line 256
    .line 257
    sub-float/2addr v10, v9

    .line 258
    invoke-static {v11, v12, v10}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    invoke-static {v11}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    cmpl-float v6, v10, v6

    .line 267
    .line 268
    if-nez v6, :cond_f4

    .line 269
    .line 270
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 271
    .line 272
    .line 273
    goto :goto_f4

    .line 274
    :cond_111
    :goto_111
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    int-to-float v9, v9

    .line 279
    mul-float/2addr v6, v9

    .line 280
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_120

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 287
    .line 288
    .line 289
    :cond_120
    sub-int/2addr v8, v6

    .line 290
    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 291
    .line 292
    if-nez v6, :cond_141

    .line 293
    .line 294
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    iget v9, v0, Landroidx/core/widget/NestedScrollView;->w:I

    .line 299
    .line 300
    if-le v6, v9, :cond_141

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    if-eqz v6, :cond_136

    .line 307
    .line 308
    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 309
    .line 310
    .line 311
    :cond_136
    iput-boolean v7, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 312
    .line 313
    if-lez v8, :cond_13e

    .line 314
    .line 315
    iget v6, v0, Landroidx/core/widget/NestedScrollView;->w:I

    .line 316
    .line 317
    sub-int/2addr v8, v6

    .line 318
    goto :goto_141

    .line 319
    :cond_13e
    iget v6, v0, Landroidx/core/widget/NestedScrollView;->w:I

    .line 320
    .line 321
    add-int/2addr v8, v6

    .line 322
    :cond_141
    :goto_141
    iget-boolean v6, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 323
    .line 324
    if-eqz v6, :cond_217

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    float-to-int v1, v1

    .line 331
    invoke-virtual {v0, v8, v1, v3, v3}, Landroidx/core/widget/NestedScrollView;->t(IIIZ)I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    sub-int/2addr v5, v1

    .line 336
    iput v5, v0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 337
    .line 338
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->C:I

    .line 339
    .line 340
    add-int/2addr v2, v1

    .line 341
    iput v2, v0, Landroidx/core/widget/NestedScrollView;->C:I

    .line 342
    .line 343
    goto/16 :goto_217

    .line 344
    .line 345
    :cond_158
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 346
    .line 347
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->y:I

    .line 348
    .line 349
    int-to-float v2, v2

    .line 350
    const/16 v5, 0x3e8

    .line 351
    .line 352
    invoke-virtual {v1, v5, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 353
    .line 354
    .line 355
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    float-to-int v1, v1

    .line 362
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->x:I

    .line 367
    .line 368
    if-lt v2, v5, :cond_1b0

    .line 369
    .line 370
    invoke-static {v10}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    cmpl-float v2, v2, v6

    .line 375
    .line 376
    if-eqz v2, :cond_188

    .line 377
    .line 378
    invoke-virtual {v0, v10, v1}, Landroidx/core/widget/NestedScrollView;->u(Landroid/widget/EdgeEffect;I)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_183

    .line 383
    .line 384
    invoke-virtual {v10, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_1cc

    .line 388
    :cond_183
    neg-int v1, v1

    .line 389
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_1cc

    .line 393
    :cond_188
    invoke-static {v11}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    cmpl-float v2, v2, v6

    .line 398
    .line 399
    if-eqz v2, :cond_19f

    .line 400
    .line 401
    neg-int v1, v1

    .line 402
    invoke-virtual {v0, v11, v1}, Landroidx/core/widget/NestedScrollView;->u(Landroid/widget/EdgeEffect;I)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_19b

    .line 407
    .line 408
    invoke-virtual {v11, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_1cc

    .line 412
    :cond_19b
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_1cc

    .line 416
    :cond_19f
    neg-int v1, v1

    .line 417
    int-to-float v2, v1

    .line 418
    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 419
    .line 420
    invoke-virtual {v5, v6, v2}, Lcom/google/firebase/messaging/p;->b(FF)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-nez v5, :cond_1cc

    .line 425
    .line 426
    invoke-virtual {v0, v6, v2, v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_1cc

    .line 433
    :cond_1b0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 438
    .line 439
    .line 440
    move-result v14

    .line 441
    const/16 v17, 0x0

    .line 442
    .line 443
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 444
    .line 445
    .line 446
    move-result v18

    .line 447
    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 448
    .line 449
    const/4 v15, 0x0

    .line 450
    const/16 v16, 0x0

    .line 451
    .line 452
    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_1cc

    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 459
    .line 460
    .line 461
    :cond_1cc
    :goto_1cc
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 462
    .line 463
    iput-boolean v3, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 464
    .line 465
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 466
    .line 467
    if-eqz v1, :cond_1d9

    .line 468
    .line 469
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 470
    .line 471
    .line 472
    iput-object v8, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 473
    .line 474
    :cond_1d9
    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 481
    .line 482
    .line 483
    goto :goto_217

    .line 484
    :cond_1e3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-nez v2, :cond_1ea

    .line 489
    .line 490
    return v3

    .line 491
    :cond_1ea
    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->k:Z

    .line 492
    .line 493
    if-eqz v2, :cond_1f7

    .line 494
    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    if-eqz v2, :cond_1f7

    .line 500
    .line 501
    invoke-interface {v2, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 502
    .line 503
    .line 504
    :cond_1f7
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 505
    .line 506
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-nez v2, :cond_207

    .line 511
    .line 512
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 513
    .line 514
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v7}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 518
    .line 519
    .line 520
    :cond_207
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    float-to-int v2, v2

    .line 525
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    iput v2, v0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 530
    .line 531
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 532
    .line 533
    invoke-virtual {v0, v5, v3}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 534
    .line 535
    .line 536
    :cond_217
    :goto_217
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 537
    .line 538
    if-eqz v1, :cond_21e

    .line 539
    .line 540
    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 541
    .line 542
    .line 543
    :cond_21e
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 544
    .line 545
    .line 546
    return v7
.end method

.method public final p(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_25

    .line 12
    .line 13
    if-nez v0, :cond_10

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->g:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->z:I

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 32
    .line 33
    if-eqz p1, :cond_25

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public final q(IIII)Z
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    add-int/2addr p3, p1

    .line 19
    const/4 p1, 0x0

    .line 20
    if-lez p2, :cond_18

    .line 21
    .line 22
    :goto_15
    move v3, p1

    .line 23
    move p2, v1

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    if-gez p2, :cond_1b

    .line 26
    .line 27
    goto :goto_15

    .line 28
    :cond_1b
    move v3, p2

    .line 29
    move p2, p1

    .line 30
    :goto_1d
    if-le p3, p4, :cond_22

    .line 31
    .line 32
    move v4, p4

    .line 33
    :goto_20
    move p3, v1

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    if-gez p3, :cond_26

    .line 36
    .line 37
    move v4, p1

    .line 38
    goto :goto_20

    .line 39
    :cond_26
    move v4, p3

    .line 40
    move p3, p1

    .line 41
    :goto_28
    if-eqz p3, :cond_3f

    .line 42
    .line 43
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 44
    .line 45
    invoke-virtual {p4, v1}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    if-eqz p4, :cond_33

    .line 50
    .line 51
    goto :goto_3f

    .line 52
    :cond_33
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 62
    .line 63
    .line 64
    :cond_3f
    :goto_3f
    invoke-super {p0, v3, v4}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 65
    .line 66
    .line 67
    if-nez p2, :cond_48

    .line 68
    .line 69
    if-eqz p3, :cond_47

    .line 70
    .line 71
    goto :goto_48

    .line 72
    :cond_47
    return p1

    .line 73
    :cond_48
    :goto_48
    return v1
.end method

.method public final r(I)V
    .registers 7

    .line 1
    const/16 v0, 0x82

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_8

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 15
    .line 16
    if-eqz v0, :cond_3e

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v3

    .line 23
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_49

    .line 30
    .line 31
    sub-int/2addr v0, v2

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 47
    .line 48
    add-int/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    add-int/2addr v0, v3

    .line 57
    if-le v0, v1, :cond_49

    .line 58
    .line 59
    sub-int/2addr v1, v3

    .line 60
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    goto :goto_49

    .line 63
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr v0, v3

    .line 68
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    if-gez v0, :cond_49

    .line 71
    .line 72
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    :cond_49
    :goto_49
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    add-int/2addr v3, v0

    .line 77
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    invoke-virtual {p0, p1, v0, v3}, Landroidx/core/widget/NestedScrollView;->s(III)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->h(Landroid/graphics/Rect;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_19

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->j:Landroid/view/View;

    .line 25
    .line 26
    :cond_19
    :goto_19
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/graphics/Rect;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_1e

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, p2

    .line 32
    :goto_1f
    if-eqz v0, :cond_2a

    .line 33
    .line 34
    if-eqz p3, :cond_27

    .line 35
    .line 36
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_27
    invoke-virtual {p0, p2, p1, p2}, Landroidx/core/widget/NestedScrollView;->v(IIZ)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    return v0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final requestLayout()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final s(III)Z
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    add-int/2addr v4, v5

    .line 18
    const/16 v6, 0x21

    .line 19
    .line 20
    if-ne v1, v6, :cond_17

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v6, 0x0

    .line 25
    :goto_18
    const/4 v9, 0x2

    .line 26
    invoke-virtual {v0, v9}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    :goto_24
    if-ge v12, v10, :cond_6c

    .line 38
    .line 39
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    check-cast v14, Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-ge v2, v7, :cond_69

    .line 54
    .line 55
    if-ge v15, v3, :cond_69

    .line 56
    .line 57
    if-ge v2, v15, :cond_3f

    .line 58
    .line 59
    if-ge v7, v3, :cond_3f

    .line 60
    .line 61
    const/16 v16, 0x1

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    const/16 v16, 0x0

    .line 65
    .line 66
    :goto_41
    if-nez v11, :cond_47

    .line 67
    .line 68
    move-object v11, v14

    .line 69
    move/from16 v13, v16

    .line 70
    .line 71
    goto :goto_69

    .line 72
    :cond_47
    if-eqz v6, :cond_4f

    .line 73
    .line 74
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-lt v15, v8, :cond_57

    .line 79
    .line 80
    :cond_4f
    if-nez v6, :cond_59

    .line 81
    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-le v7, v8, :cond_59

    .line 87
    .line 88
    :cond_57
    const/4 v7, 0x1

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    const/4 v7, 0x0

    .line 91
    :goto_5a
    if-eqz v13, :cond_61

    .line 92
    .line 93
    if-eqz v16, :cond_69

    .line 94
    .line 95
    if-eqz v7, :cond_69

    .line 96
    .line 97
    goto :goto_68

    .line 98
    :cond_61
    if-eqz v16, :cond_66

    .line 99
    .line 100
    move-object v11, v14

    .line 101
    const/4 v13, 0x1

    .line 102
    goto :goto_69

    .line 103
    :cond_66
    if-eqz v7, :cond_69

    .line 104
    .line 105
    :goto_68
    move-object v11, v14

    .line 106
    :cond_69
    :goto_69
    add-int/lit8 v12, v12, 0x1

    .line 107
    .line 108
    goto :goto_24

    .line 109
    :cond_6c
    if-nez v11, :cond_6f

    .line 110
    .line 111
    move-object v11, v0

    .line 112
    :cond_6f
    if-lt v2, v5, :cond_75

    .line 113
    .line 114
    if-gt v3, v4, :cond_75

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    goto :goto_82

    .line 118
    :cond_75
    if-eqz v6, :cond_7b

    .line 119
    .line 120
    sub-int/2addr v2, v5

    .line 121
    :goto_78
    const/4 v3, 0x0

    .line 122
    const/4 v4, 0x1

    .line 123
    goto :goto_7e

    .line 124
    :cond_7b
    sub-int v2, v3, v4

    .line 125
    .line 126
    goto :goto_78

    .line 127
    :goto_7e
    invoke-virtual {v0, v2, v3, v4, v4}, Landroidx/core/widget/NestedScrollView;->t(IIIZ)I

    .line 128
    .line 129
    .line 130
    move v7, v4

    .line 131
    :goto_82
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eq v11, v2, :cond_8b

    .line 136
    .line 137
    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 138
    .line 139
    .line 140
    :cond_8b
    return v7
.end method

.method public final scrollTo(II)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_6a

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr v3, v4

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 37
    .line 38
    add-int/2addr v4, v5

    .line 39
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sub-int/2addr v5, v6

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    sub-int/2addr v5, v6

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 61
    .line 62
    add-int/2addr v1, v6

    .line 63
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 64
    .line 65
    add-int/2addr v1, v2

    .line 66
    if-ge v3, v4, :cond_4d

    .line 67
    .line 68
    if-gez p1, :cond_46

    .line 69
    .line 70
    goto :goto_4d

    .line 71
    :cond_46
    add-int v2, v3, p1

    .line 72
    .line 73
    if-le v2, v4, :cond_4e

    .line 74
    .line 75
    sub-int p1, v4, v3

    .line 76
    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    :goto_4d
    move p1, v0

    .line 79
    :cond_4e
    :goto_4e
    if-ge v5, v1, :cond_5a

    .line 80
    .line 81
    if-gez p2, :cond_53

    .line 82
    .line 83
    goto :goto_5a

    .line 84
    :cond_53
    add-int v0, v5, p2

    .line 85
    .line 86
    if-le v0, v1, :cond_5b

    .line 87
    .line 88
    sub-int p2, v1, v5

    .line 89
    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    :goto_5a
    move p2, v0

    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ne p1, v0, :cond_67

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eq p2, v0, :cond_6a

    .line 103
    .line 104
    :cond_67
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 105
    .line 106
    .line 107
    :cond_6a
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_f

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 10
    .line 11
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {v1}, Lj0/d0;->j(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    iput-boolean p1, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 17
    .line 18
    return-void
.end method

.method public setOnScrollChangeListener(Lm0/g;)V
    .registers 2

    .line 1
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final startNestedScroll(I)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final stopNestedScroll()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final t(IIIZ)I
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    move/from16 v13, p3

    .line 6
    .line 7
    const/4 v15, 0x1

    .line 8
    if-ne v13, v15, :cond_d

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1, v13}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 12
    .line 13
    .line 14
    :cond_d
    iget-object v4, v0, Landroidx/core/widget/NestedScrollView;->B:[I

    .line 15
    .line 16
    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->A:[I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move/from16 v2, p1

    .line 20
    .line 21
    move v3, v13

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->i(III[I[I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->A:[I

    .line 27
    .line 28
    iget-object v14, v0, Landroidx/core/widget/NestedScrollView;->B:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_27

    .line 32
    .line 33
    aget v1, v14, v15

    .line 34
    .line 35
    sub-int v1, p1, v1

    .line 36
    .line 37
    aget v4, v2, v15

    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    move/from16 v1, p1

    .line 41
    .line 42
    move v4, v3

    .line 43
    :goto_2a
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_40

    .line 56
    .line 57
    if-ne v8, v15, :cond_45

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-lez v8, :cond_45

    .line 64
    .line 65
    :cond_40
    if-nez p4, :cond_45

    .line 66
    .line 67
    move/from16 v16, v15

    .line 68
    .line 69
    goto :goto_47

    .line 70
    :cond_45
    move/from16 v16, v3

    .line 71
    .line 72
    :goto_47
    invoke-virtual {v0, v1, v3, v5, v7}, Landroidx/core/widget/NestedScrollView;->q(IIII)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_59

    .line 77
    .line 78
    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 79
    .line 80
    invoke-virtual {v8, v13}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-eqz v8, :cond_56

    .line 85
    .line 86
    goto :goto_59

    .line 87
    :cond_56
    move/from16 v17, v15

    .line 88
    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    :goto_59
    move/from16 v17, v3

    .line 91
    .line 92
    :goto_5b
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    sub-int v9, v8, v5

    .line 97
    .line 98
    sub-int v11, v1, v9

    .line 99
    .line 100
    aput v3, v14, v15

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    move v8, v7

    .line 104
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 105
    .line 106
    move v12, v8

    .line 107
    const/4 v8, 0x0

    .line 108
    move/from16 v18, v12

    .line 109
    .line 110
    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->A:[I

    .line 111
    .line 112
    move/from16 v3, v18

    .line 113
    .line 114
    invoke-virtual/range {v7 .. v14}, Lcom/google/firebase/messaging/p;->c(IIII[II[I)Z

    .line 115
    .line 116
    .line 117
    aget v2, v2, v15

    .line 118
    .line 119
    add-int/2addr v4, v2

    .line 120
    aget v2, v14, v15

    .line 121
    .line 122
    sub-int/2addr v1, v2

    .line 123
    add-int/2addr v5, v1

    .line 124
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 125
    .line 126
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 127
    .line 128
    if-gez v5, :cond_9f

    .line 129
    .line 130
    if-eqz v16, :cond_c0

    .line 131
    .line 132
    neg-int v1, v1

    .line 133
    int-to-float v1, v1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    div-float/2addr v1, v3

    .line 140
    int-to-float v3, v6

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    int-to-float v5, v5

    .line 146
    div-float/2addr v3, v5

    .line 147
    invoke-static {v7, v1, v3}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_c0

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 157
    .line 158
    .line 159
    goto :goto_c0

    .line 160
    :cond_9f
    if-le v5, v3, :cond_c0

    .line 161
    .line 162
    if-eqz v16, :cond_c0

    .line 163
    .line 164
    int-to-float v1, v1

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    int-to-float v3, v3

    .line 170
    div-float/2addr v1, v3

    .line 171
    int-to-float v3, v6

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    int-to-float v5, v5

    .line 177
    div-float/2addr v3, v5

    .line 178
    const/high16 v5, 0x3f800000    # 1.0f

    .line 179
    .line 180
    sub-float/2addr v5, v3

    .line 181
    invoke-static {v2, v1, v5}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_c0

    .line 189
    .line 190
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 191
    .line 192
    .line 193
    :cond_c0
    :goto_c0
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_d0

    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_cd

    .line 204
    .line 205
    goto :goto_d0

    .line 206
    :cond_cd
    move/from16 v3, v17

    .line 207
    .line 208
    goto :goto_d4

    .line 209
    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 210
    .line 211
    .line 212
    const/4 v3, 0x0

    .line 213
    :goto_d4
    if-eqz v3, :cond_df

    .line 214
    .line 215
    if-nez v13, :cond_df

    .line 216
    .line 217
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->l:Landroid/view/VelocityTracker;

    .line 218
    .line 219
    if-eqz v1, :cond_df

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 222
    .line 223
    .line 224
    :cond_df
    if-ne v13, v15, :cond_ea

    .line 225
    .line 226
    invoke-virtual {v0, v13}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 233
    .line 234
    .line 235
    :cond_ea
    return v4
.end method

.method public final u(Landroid/widget/EdgeEffect;I)Z
    .registers 12

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p2, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {p1}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr p1, v1

    .line 15
    neg-int p2, p2

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    int-to-float p2, p2

    .line 21
    const v1, 0x3eb33333    # 0.35f

    .line 22
    .line 23
    .line 24
    mul-float/2addr p2, v1

    .line 25
    const v1, 0x3c75c28f    # 0.015f

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->a:F

    .line 29
    .line 30
    mul-float/2addr v2, v1

    .line 31
    div-float/2addr p2, v2

    .line 32
    float-to-double v3, p2

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    sget p2, Landroidx/core/widget/NestedScrollView;->J:F

    .line 38
    .line 39
    float-to-double v5, p2

    .line 40
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    sub-double v7, v5, v7

    .line 43
    .line 44
    float-to-double v1, v2

    .line 45
    div-double/2addr v5, v7

    .line 46
    mul-double/2addr v5, v3

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    mul-double/2addr v3, v1

    .line 52
    double-to-float p2, v3

    .line 53
    cmpg-float p1, p2, p1

    .line 54
    .line 55
    if-gez p1, :cond_39

    .line 56
    .line 57
    return v0

    .line 58
    :cond_39
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method public final v(IIZ)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->b:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0xfa

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-lez v0, :cond_6c

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    .line 39
    add-int/2addr v0, v3

    .line 40
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int/2addr v2, v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v0, v2

    .line 62
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr p2, v5

    .line 67
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    sub-int v7, p1, v5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const/4 v6, 0x0

    .line 82
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 83
    .line 84
    const/16 v8, 0xfa

    .line 85
    .line 86
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 87
    .line 88
    .line 89
    if-eqz p3, :cond_5f

    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    invoke-virtual {p0, p1, v1}, Landroidx/core/widget/NestedScrollView;->w(II)Z

    .line 93
    .line 94
    .line 95
    goto :goto_62

    .line 96
    :cond_5f
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 97
    .line 98
    .line 99
    :goto_62
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->D:I

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 106
    .line 107
    .line 108
    goto :goto_7f

    .line 109
    :cond_6c
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-nez p3, :cond_7c

    .line 116
    .line 117
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->y(I)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 126
    .line 127
    .line 128
    :goto_7f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide p1

    .line 132
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->b:J

    .line 133
    .line 134
    return-void
.end method

.method public final w(II)Z
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    return v3

    .line 15
    :cond_e
    iget-boolean v2, v0, Lcom/google/firebase/messaging/p;->a:Z

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_83

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v5, v1

    .line 25
    :goto_18
    if-eqz v2, :cond_83

    .line 26
    .line 27
    instance-of v6, v2, Lj0/o;

    .line 28
    .line 29
    const-string v7, "ViewParent "

    .line 30
    .line 31
    const-string v8, "ViewParentCompat"

    .line 32
    .line 33
    if-eqz v6, :cond_2a

    .line 34
    .line 35
    move-object v9, v2

    .line 36
    check-cast v9, Lj0/o;

    .line 37
    .line 38
    invoke-interface {v9, v5, v1, p1, p2}, Lj0/o;->f(Landroid/view/View;Landroid/view/View;II)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    goto :goto_47

    .line 43
    :cond_2a
    if-nez p2, :cond_46

    .line 44
    .line 45
    :try_start_2c
    invoke-interface {v2, v5, v1, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 46
    .line 47
    .line 48
    move-result v9
    :try_end_30
    .catch Ljava/lang/AbstractMethodError; {:try_start_2c .. :try_end_30} :catch_31

    .line 49
    goto :goto_47

    .line 50
    :catch_31
    move-exception v9

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v11, " does not implement interface method onStartNestedScroll"

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-static {v8, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_46
    move v9, v4

    .line 72
    :goto_47
    if-eqz v9, :cond_77

    .line 73
    .line 74
    if-eqz p2, :cond_51

    .line 75
    .line 76
    if-eq p2, v3, :cond_4e

    .line 77
    .line 78
    goto :goto_53

    .line 79
    :cond_4e
    iput-object v2, v0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 80
    .line 81
    goto :goto_53

    .line 82
    :cond_51
    iput-object v2, v0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 83
    .line 84
    :goto_53
    if-eqz v6, :cond_5b

    .line 85
    .line 86
    check-cast v2, Lj0/o;

    .line 87
    .line 88
    invoke-interface {v2, v5, v1, p1, p2}, Lj0/o;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_84

    .line 92
    :cond_5b
    if-nez p2, :cond_84

    .line 93
    .line 94
    :try_start_5d
    invoke-interface {v2, v5, v1, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_60
    .catch Ljava/lang/AbstractMethodError; {:try_start_5d .. :try_end_60} :catch_61

    .line 95
    .line 96
    .line 97
    goto :goto_84

    .line 98
    :catch_61
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " does not implement interface method onNestedScrollAccepted"

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v8, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    goto :goto_84

    .line 120
    :cond_77
    instance-of v6, v2, Landroid/view/View;

    .line 121
    .line 122
    if-eqz v6, :cond_7e

    .line 123
    .line 124
    move-object v5, v2

    .line 125
    check-cast v5, Landroid/view/View;

    .line 126
    .line 127
    :cond_7e
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_18

    .line 132
    :cond_83
    move v3, v4

    .line 133
    :cond_84
    :goto_84
    return v3
.end method

.method public final x(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-static {v0}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v1, v1, v2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_1b

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v1, v4

    .line 23
    invoke-static {v0, v2, v1}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 24
    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    .line 30
    .line 31
    invoke-static {v1}, Lh8/b;->g(Landroid/widget/EdgeEffect;)F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    cmpl-float v4, v4, v2

    .line 36
    .line 37
    if-eqz v4, :cond_37

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-float v0, v0

    .line 48
    div-float/2addr p1, v0

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    sub-float/2addr v0, p1

    .line 52
    invoke-static {v1, v2, v0}, Lh8/b;->p(Landroid/widget/EdgeEffect;FF)F

    .line 53
    .line 54
    .line 55
    return v3

    .line 56
    :cond_37
    return v0
.end method

.method public final y(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->G:Lcom/google/firebase/messaging/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/p;->d(I)Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_41

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 12
    .line 13
    instance-of v3, v1, Lj0/o;

    .line 14
    .line 15
    if-eqz v3, :cond_16

    .line 16
    .line 17
    check-cast v1, Lj0/o;

    .line 18
    .line 19
    invoke-interface {v1, v2, p1}, Lj0/o;->b(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_35

    .line 23
    :cond_16
    if-nez p1, :cond_35

    .line 24
    .line 25
    :try_start_18
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    goto :goto_35

    .line 29
    :catch_1c
    move-exception v2

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "ViewParent "

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " does not implement interface method onStopNestedScroll"

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "ViewParentCompat"

    .line 50
    .line 51
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_35
    :goto_35
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_3f

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    if-eq p1, v2, :cond_3c

    .line 59
    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    iput-object v1, v0, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    iput-object v1, v0, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_41
    :goto_41
    return-void
.end method
