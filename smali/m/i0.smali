###### Class m.i0 (m.i0)
.class public final Lm/i0;
.super Lm/x1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm/k0;


# instance fields
.field public K:Ljava/lang/CharSequence;

.field public L:Lm/f0;

.field public final M:Landroid/graphics/Rect;

.field public N:I

.field public final synthetic O:Lm/l0;


# direct methods
.method public constructor <init>(Lm/l0;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lm/i0;->O:Lm/l0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x7f0400ff

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3, v1, v0}, Lm/x1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lm/i0;->M:Landroid/graphics/Rect;

    .line 16
    .line 17
    iput-object p1, p0, Lm/x1;->w:Landroid/view/View;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lm/x1;->F:Z

    .line 21
    .line 22
    iget-object p2, p0, Lm/x1;->G:Lm/v;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lm/g0;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-direct {p1, p2, p0}, Lm/g0;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lm/x1;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm/i0;->K:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final i(I)V
    .registers 2

    .line 1
    iput p1, p0, Lm/i0;->N:I

    .line 2
    .line 3
    return-void
.end method

.method public final k(II)V
    .registers 8

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lm/i0;->s()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lm/x1;->c()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lm/x1;->c:Lm/m1;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lm/i0;->O:Lm/l0;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v2, p0, Lm/x1;->c:Lm/m1;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3c

    .line 42
    .line 43
    if-eqz v2, :cond_3c

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v2, v4}, Lm/m1;->setListSelectionHidden(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3c

    .line 57
    .line 58
    invoke-virtual {v2, p2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    if-eqz v1, :cond_3f

    .line 62
    .line 63
    goto :goto_56

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_56

    .line 69
    .line 70
    new-instance p2, Ll/e;

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-direct {p2, v1, p0}, Ll/e;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lm/h0;

    .line 80
    .line 81
    invoke-direct {p1, p0, p2}, Lm/h0;-><init>(Lm/i0;Ll/e;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 85
    .line 86
    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method public final o()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/i0;->K:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lm/x1;->p(Landroid/widget/ListAdapter;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lm/f0;

    .line 5
    .line 6
    iput-object p1, p0, Lm/i0;->L:Lm/f0;

    .line 7
    .line 8
    return-void
.end method

.method public final s()V
    .registers 11

    .line 1
    iget-object v0, p0, Lm/i0;->O:Lm/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lm/l0;->h:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v2, p0, Lm/x1;->G:Lm/v;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1f

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    .line 16
    .line 17
    sget-boolean v3, Lm/l3;->a:Z

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v3, v4, :cond_1b

    .line 24
    .line 25
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    neg-int v3, v3

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    const/4 v3, 0x0

    .line 33
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    :goto_24
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget v8, v0, Lm/l0;->g:I

    .line 50
    .line 51
    const/4 v9, -0x2

    .line 52
    if-ne v8, v9, :cond_61

    .line 53
    .line 54
    iget-object v8, p0, Lm/i0;->L:Lm/f0;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v8, v2}, Lm/l0;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .line 78
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    sub-int/2addr v8, v9

    .line 81
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    sub-int/2addr v8, v1

    .line 84
    if-le v2, v8, :cond_56

    .line 85
    .line 86
    move v2, v8

    .line 87
    :cond_56
    sub-int v1, v7, v5

    .line 88
    .line 89
    sub-int/2addr v1, v6

    .line 90
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p0, v1}, Lm/x1;->r(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_6e

    .line 98
    :cond_61
    const/4 v1, -0x1

    .line 99
    if-ne v8, v1, :cond_6b

    .line 100
    .line 101
    sub-int v1, v7, v5

    .line 102
    .line 103
    sub-int/2addr v1, v6

    .line 104
    invoke-virtual {p0, v1}, Lm/x1;->r(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_6e

    .line 108
    :cond_6b
    invoke-virtual {p0, v8}, Lm/x1;->r(I)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    sget-boolean v1, Lm/l3;->a:Z

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v4, :cond_7f

    .line 118
    .line 119
    sub-int/2addr v7, v6

    .line 120
    iget v0, p0, Lm/x1;->e:I

    .line 121
    .line 122
    sub-int/2addr v7, v0

    .line 123
    iget v0, p0, Lm/i0;->N:I

    .line 124
    .line 125
    sub-int/2addr v7, v0

    .line 126
    add-int/2addr v7, v3

    .line 127
    goto :goto_84

    .line 128
    :cond_7f
    iget v0, p0, Lm/i0;->N:I

    .line 129
    .line 130
    add-int/2addr v5, v0

    .line 131
    add-int v7, v5, v3

    .line 132
    .line 133
    :goto_84
    iput v7, p0, Lm/x1;->f:I

    .line 134
    .line 135
    return-void
.end method
