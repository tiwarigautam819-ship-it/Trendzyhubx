###### Class androidx.appcompat.widget.ActionBarContextView (androidx.appcompat.widget.ActionBarContextView)
.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroid/view/ViewGroup;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public A:Z

.field public final B:I

.field public final a:Li8/i;

.field public final b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionMenuView;

.field public d:Landroidx/appcompat/widget/a;

.field public e:I

.field public f:Lj0/o0;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    const v0, 0x7f04001c

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Li8/i;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Li8/i;-><init>(Landroidx/appcompat/widget/ActionBarContextView;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->a:Li8/i;

    .line 13
    .line 14
    new-instance v1, Landroid/util/TypedValue;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v3, 0x7f040002

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2e

    .line 32
    .line 33
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 34
    .line 35
    if-eqz v2, :cond_2e

    .line 36
    .line 37
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 38
    .line 39
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 40
    .line 41
    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->b:Landroid/content/Context;

    .line 45
    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->b:Landroid/content/Context;

    .line 48
    .line 49
    :goto_30
    sget-object v1, Lf/a;->d:[I

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_48

    .line 61
    .line 62
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_48

    .line 67
    .line 68
    invoke-static {p1, v0}, Lz7/l;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_4c
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x5

    .line 81
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->y:I

    .line 86
    .line 87
    const/4 p1, 0x4

    .line 88
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->z:I

    .line 93
    .line 94
    const/4 p1, 0x3

    .line 95
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:I

    .line 100
    .line 101
    const/4 p1, 0x2

    .line 102
    const v0, 0x7f0c0005

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->B:I

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/ActionBarContextView;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/ActionBarContextView;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Landroid/view/View;II)I
    .registers 4

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr p1, p0

    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static g(Landroid/view/View;IIIZ)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr p3, v1

    .line 10
    div-int/lit8 p3, p3, 0x2

    .line 11
    .line 12
    add-int/2addr p3, p2

    .line 13
    if-eqz p4, :cond_15

    .line 14
    .line 15
    sub-int p2, p1, v0

    .line 16
    .line 17
    add-int/2addr v1, p3

    .line 18
    invoke-virtual {p0, p2, p3, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 19
    .line 20
    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    add-int p2, p1, v0

    .line 23
    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-virtual {p0, p1, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 26
    .line 27
    .line 28
    :goto_1b
    if-eqz p4, :cond_1f

    .line 29
    .line 30
    neg-int p0, v0

    .line 31
    return p0

    .line 32
    :cond_1f
    return v0
.end method


# virtual methods
.method public final c(Lk/b;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_19

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->B:I

    .line 15
    .line 16
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    goto :goto_24

    .line 26
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_24

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 38
    .line 39
    const v2, 0x7f090037

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 47
    .line 48
    new-instance v2, Lg/d;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, v3, p1}, Lg/d;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lk/b;->c()Ll/n;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 62
    .line 63
    if-eqz v0, :cond_52

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 69
    .line 70
    if-eqz v0, :cond_52

    .line 71
    .line 72
    invoke-virtual {v0}, Ll/x;->b()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_52

    .line 77
    .line 78
    iget-object v0, v0, Ll/x;->i:Ll/v;

    .line 79
    .line 80
    invoke-interface {v0}, Ll/d0;->dismiss()V

    .line 81
    .line 82
    .line 83
    :cond_52
    new-instance v0, Landroidx/appcompat/widget/a;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v0, v2}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    iput-boolean v2, v0, Landroidx/appcompat/widget/a;->l:Z

    .line 96
    .line 97
    iput-boolean v2, v0, Landroidx/appcompat/widget/a;->m:Z

    .line 98
    .line 99
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    const/4 v2, -0x2

    .line 102
    const/4 v3, -0x1

    .line 103
    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 107
    .line 108
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->b:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p1, v2, v3}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 114
    .line 115
    iget-object v2, p1, Ll/d;->h:Ll/b0;

    .line 116
    .line 117
    if-nez v2, :cond_8a

    .line 118
    .line 119
    iget-object v3, p1, Ll/d;->d:Landroid/view/LayoutInflater;

    .line 120
    .line 121
    iget v4, p1, Ll/d;->f:I

    .line 122
    .line 123
    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ll/b0;

    .line 128
    .line 129
    iput-object v1, p1, Ll/d;->h:Ll/b0;

    .line 130
    .line 131
    iget-object v3, p1, Ll/d;->c:Ll/n;

    .line 132
    .line 133
    invoke-interface {v1, v3}, Ll/b0;->a(Ll/n;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->d()V

    .line 137
    .line 138
    .line 139
    :cond_8a
    iget-object v1, p1, Ll/d;->h:Ll/b0;

    .line 140
    .line 141
    if-eq v2, v1, :cond_94

    .line 142
    .line 143
    move-object v2, v1

    .line 144
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    .line 145
    .line 146
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/a;)V

    .line 147
    .line 148
    .line 149
    :cond_94
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    .line 150
    .line 151
    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 152
    .line 153
    const/4 p1, 0x0

    .line 154
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 158
    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final d()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_51

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/high16 v1, 0x7f0c0000

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const v1, 0x7f09002e

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v1, 0x7f09002d

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Landroid/widget/TextView;

    .line 55
    .line 56
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->y:I

    .line 57
    .line 58
    if-eqz v0, :cond_44

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    :cond_44
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->z:I

    .line 70
    .line 71
    if-eqz v0, :cond_51

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    .line 81
    .line 82
    :cond_51
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->w:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->x:Landroid/widget/TextView;

    .line 109
    .line 110
    const/16 v3, 0x8

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    if-nez v1, :cond_74

    .line 114
    .line 115
    move v5, v4

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v5, v3

    .line 118
    :goto_75
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    if-eqz v0, :cond_7e

    .line 124
    .line 125
    if-nez v1, :cond_7f

    .line 126
    .line 127
    :cond_7e
    move v3, v4

    .line 128
    :cond_7f
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_8f

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    :cond_8f
    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v1, :cond_11

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->a:Li8/i;

    .line 6
    .line 7
    iget v0, v0, Li8/i;->c:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_10

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {v0}, Lj0/o0;->b()V

    .line 12
    .line 13
    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final i(IJ)Lj0/o0;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lj0/o0;->b()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->a:Li8/i;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_2d

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_15

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    :cond_15
    invoke-static {p0}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lj0/o0;->a(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2, p3}, Lj0/o0;->c(J)V

    .line 32
    .line 33
    .line 34
    iget-object p2, v0, Li8/i;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 37
    .line 38
    iput-object v1, p2, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 39
    .line 40
    iput p1, v0, Li8/i;->c:I

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lj0/o0;->d(Lj0/p0;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2d
    invoke-static {p0}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Lj0/o0;->a(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p2, p3}, Lj0/o0;->c(J)V

    .line 54
    .line 55
    .line 56
    iget-object p2, v0, Li8/i;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 59
    .line 60
    iput-object v2, p2, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 61
    .line 62
    iput p1, v0, Li8/i;->c:I

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lj0/o0;->d(Lj0/p0;)V

    .line 65
    .line 66
    .line 67
    return-object v2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    sget-object v1, Lf/a;->a:[I

    .line 10
    .line 11
    const v2, 0x7f040005

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/16 v0, 0xd

    .line 20
    .line 21
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 32
    .line 33
    if-eqz p1, :cond_6b

    .line 34
    .line 35
    iget-object v0, p1, Ll/d;->b:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 46
    .line 47
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 48
    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 50
    .line 51
    const/16 v3, 0x258

    .line 52
    .line 53
    if-gt v0, v3, :cond_60

    .line 54
    .line 55
    if-gt v1, v3, :cond_60

    .line 56
    .line 57
    const/16 v0, 0x2d0

    .line 58
    .line 59
    const/16 v3, 0x3c0

    .line 60
    .line 61
    if-le v1, v3, :cond_40

    .line 62
    .line 63
    if-gt v2, v0, :cond_60

    .line 64
    .line 65
    :cond_40
    if-le v1, v0, :cond_45

    .line 66
    .line 67
    if-le v2, v3, :cond_45

    .line 68
    .line 69
    goto :goto_60

    .line 70
    :cond_45
    const/16 v0, 0x1f4

    .line 71
    .line 72
    if-ge v1, v0, :cond_5e

    .line 73
    .line 74
    const/16 v0, 0x1e0

    .line 75
    .line 76
    const/16 v3, 0x280

    .line 77
    .line 78
    if-le v1, v3, :cond_51

    .line 79
    .line 80
    if-gt v2, v0, :cond_5e

    .line 81
    .line 82
    :cond_51
    if-le v1, v0, :cond_56

    .line 83
    .line 84
    if-le v2, v3, :cond_56

    .line 85
    .line 86
    goto :goto_5e

    .line 87
    :cond_56
    const/16 v0, 0x168

    .line 88
    .line 89
    if-lt v1, v0, :cond_5c

    .line 90
    .line 91
    const/4 v0, 0x3

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    const/4 v0, 0x2

    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    :goto_5e
    const/4 v0, 0x4

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    :goto_60
    const/4 v0, 0x5

    .line 98
    :goto_61
    iput v0, p1, Landroidx/appcompat/widget/a;->x:I

    .line 99
    .line 100
    iget-object p1, p1, Ll/d;->c:Ll/n;

    .line 101
    .line 102
    if-eqz p1, :cond_6b

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Ll/n;->p(Z)V

    .line 106
    .line 107
    .line 108
    :cond_6b
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 5
    .line 6
    if-eqz v0, :cond_1b

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Landroidx/appcompat/widget/a;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 14
    .line 15
    if-eqz v0, :cond_1b

    .line 16
    .line 17
    invoke-virtual {v0}, Ll/x;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1b

    .line 22
    .line 23
    iget-object v0, v0, Ll/x;->i:Ll/v;

    .line 24
    .line 25
    invoke-interface {v0}, Ll/d0;->dismiss()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    if-ne v0, v2, :cond_b

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:Z

    .line 11
    .line 12
    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:Z

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_1a

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne v0, v2, :cond_1a

    .line 22
    .line 23
    if-nez p1, :cond_1a

    .line 24
    .line 25
    iput-boolean v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:Z

    .line 26
    .line 27
    :cond_1a
    const/16 p1, 0xa

    .line 28
    .line 29
    if-eq v0, p1, :cond_23

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    if-ne v0, p1, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    return v4

    .line 36
    :cond_23
    :goto_23
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->h:Z

    .line 37
    .line 38
    return v4
.end method

.method public final onLayout(ZIIII)V
    .registers 11

    .line 1
    sget-boolean p1, Lm/l3;->a:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_b

    .line 9
    .line 10
    move p1, v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    if-eqz p1, :cond_16

    .line 14
    .line 15
    sub-int v1, p4, p2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v1, v2

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_1a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sub-int/2addr p5, p3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    sub-int/2addr p5, p3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    sub-int/2addr p5, p3

    .line 42
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 43
    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    if-eqz p3, :cond_5e

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eq p3, v3, :cond_5e

    .line 53
    .line 54
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    .line 62
    if-eqz p1, :cond_42

    .line 63
    .line 64
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 65
    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 68
    .line 69
    :goto_44
    if-eqz p1, :cond_49

    .line 70
    .line 71
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 72
    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 75
    .line 76
    :goto_4b
    if-eqz p1, :cond_4f

    .line 77
    .line 78
    sub-int/2addr v1, v4

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    add-int/2addr v1, v4

    .line 81
    :goto_50
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 82
    .line 83
    invoke-static {v4, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->g(Landroid/view/View;IIIZ)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    add-int/2addr v4, v1

    .line 88
    if-eqz p1, :cond_5c

    .line 89
    .line 90
    sub-int/2addr v4, p3

    .line 91
    :goto_5a
    move v1, v4

    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    add-int/2addr v4, p3

    .line 94
    goto :goto_5a

    .line 95
    :cond_5e
    :goto_5e
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    if-eqz p3, :cond_73

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 100
    .line 101
    if-nez v4, :cond_73

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eq p3, v3, :cond_73

    .line 108
    .line 109
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-static {p3, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->g(Landroid/view/View;IIIZ)I

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    add-int/2addr v1, p3

    .line 116
    :cond_73
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 117
    .line 118
    if-eqz p3, :cond_7a

    .line 119
    .line 120
    invoke-static {p3, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->g(Landroid/view/View;IIIZ)I

    .line 121
    .line 122
    .line 123
    :cond_7a
    if-eqz p1, :cond_81

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    goto :goto_88

    .line 130
    :cond_81
    sub-int/2addr p4, p2

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int p2, p4, p2

    .line 136
    .line 137
    :goto_88
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 138
    .line 139
    if-eqz p3, :cond_90

    .line 140
    .line 141
    xor-int/2addr p1, v0

    .line 142
    invoke-static {p3, p2, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->g(Landroid/view/View;IIIZ)I

    .line 143
    .line 144
    .line 145
    :cond_90
    return-void
.end method

.method public final onMeasure(II)V
    .registers 13

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-ne v0, v1, :cond_f6

    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_e2

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:I

    .line 20
    .line 21
    if-lez v0, :cond_17

    .line 22
    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-int p2, p1, p2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sub-int/2addr p2, v3

    .line 48
    sub-int v3, v0, v2

    .line 49
    .line 50
    const/high16 v4, -0x80000000

    .line 51
    .line 52
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v6, :cond_4d

    .line 59
    .line 60
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    .line 72
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 73
    .line 74
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 75
    .line 76
    add-int/2addr v7, v6

    .line 77
    sub-int/2addr p2, v7

    .line 78
    :cond_4d
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 79
    .line 80
    if-eqz v6, :cond_5d

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-ne v6, p0, :cond_5d

    .line 87
    .line 88
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 89
    .line 90
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    :cond_5d
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    if-eqz v6, :cond_91

    .line 98
    .line 99
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 100
    .line 101
    if-nez v8, :cond_91

    .line 102
    .line 103
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->A:Z

    .line 104
    .line 105
    if-eqz v8, :cond_8d

    .line 106
    .line 107
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-virtual {v8, v6, v5}, Landroid/view/View;->measure(II)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-gt v5, p2, :cond_7d

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move v6, v7

    .line 127
    :goto_7e
    if-eqz v6, :cond_81

    .line 128
    .line 129
    sub-int/2addr p2, v5

    .line 130
    :cond_81
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    if-eqz v6, :cond_87

    .line 133
    .line 134
    move v6, v7

    .line 135
    goto :goto_89

    .line 136
    :cond_87
    const/16 v6, 0x8

    .line 137
    .line 138
    :goto_89
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_91

    .line 142
    :cond_8d
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(Landroid/view/View;II)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    :cond_91
    :goto_91
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 147
    .line 148
    if-eqz v5, :cond_c0

    .line 149
    .line 150
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .line 156
    const/4 v8, -0x2

    .line 157
    if-eq v6, v8, :cond_a0

    .line 158
    .line 159
    move v9, v1

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v9, v4

    .line 162
    :goto_a1
    if-ltz v6, :cond_a7

    .line 163
    .line 164
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    :cond_a7
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    .line 170
    if-eq v5, v8, :cond_ac

    .line 171
    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move v1, v4

    .line 174
    :goto_ad
    if-ltz v5, :cond_b3

    .line 175
    .line 176
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    :cond_b3
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 181
    .line 182
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    .line 191
    .line 192
    .line 193
    :cond_c0
    iget p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:I

    .line 194
    .line 195
    if-gtz p2, :cond_de

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    move v0, v7

    .line 202
    :goto_c9
    if-ge v7, p2, :cond_da

    .line 203
    .line 204
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    add-int/2addr v1, v2

    .line 213
    if-le v1, v0, :cond_d7

    .line 214
    .line 215
    move v0, v1

    .line 216
    :cond_d7
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    goto :goto_c9

    .line 219
    :cond_da
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_de
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_e2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    const-string v0, " can only be used with android:layout_height=\"wrap_content\""

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_f6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    const-string v0, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    .line 258
    .line 259
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Z

    .line 9
    .line 10
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_18

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez v0, :cond_18

    .line 20
    .line 21
    if-nez p1, :cond_18

    .line 22
    .line 23
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Z

    .line 24
    .line 25
    :cond_18
    if-eq v0, v3, :cond_1f

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-ne v0, p1, :cond_1e

    .line 29
    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    return v3

    .line 32
    :cond_1f
    :goto_1f
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->g:Z

    .line 33
    .line 34
    return v3
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_15

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-eqz v0, :cond_15

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    :cond_15
    if-eqz p1, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->A:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->A:Z

    .line 9
    .line 10
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->h(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
