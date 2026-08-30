###### Class m.x1 (m.x1)
.class public Lm/x1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/d0;


# static fields
.field public static final H:Ljava/lang/reflect/Method;

.field public static final I:Ljava/lang/reflect/Method;

.field public static final J:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Lm/v1;

.field public final B:Lm/t1;

.field public final C:Landroid/os/Handler;

.field public final D:Landroid/graphics/Rect;

.field public E:Landroid/graphics/Rect;

.field public F:Z

.field public final G:Lm/v;

.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Lm/m1;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:I

.field public v:Lm/u1;

.field public w:Landroid/view/View;

.field public x:Landroid/widget/AdapterView$OnItemClickListener;

.field public final y:Lm/t1;

.field public final z:Lm/w1;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v5, "ListPopupWindow"

    .line 10
    .line 11
    const-class v6, Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-gt v0, v1, :cond_34

    .line 14
    .line 15
    :try_start_e
    const-string v0, "setClipToScreenEnabled"

    .line 16
    .line 17
    new-array v1, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v4, v1, v2

    .line 20
    .line 21
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lm/x1;->H:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 26
    .line 27
    goto :goto_20

    .line 28
    :catch_1b
    const-string v0, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_20
    :try_start_20
    const-string v0, "setEpicenterBounds"

    .line 34
    .line 35
    new-array v1, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v7, Landroid/graphics/Rect;

    .line 38
    .line 39
    aput-object v7, v1, v2

    .line 40
    .line 41
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lm/x1;->J:Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_2e} :catch_2f

    .line 46
    .line 47
    goto :goto_34

    .line 48
    :catch_2f
    const-string v0, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 49
    .line 50
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_34
    :goto_34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x17

    .line 56
    .line 57
    if-gt v0, v1, :cond_56

    .line 58
    .line 59
    :try_start_3a
    const-string v0, "getMaxAvailableHeight"

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    new-array v1, v1, [Ljava/lang/Class;

    .line 63
    .line 64
    const-class v7, Landroid/view/View;

    .line 65
    .line 66
    aput-object v7, v1, v2

    .line 67
    .line 68
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    aput-object v4, v1, v2

    .line 74
    .line 75
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lm/x1;->I:Ljava/lang/reflect/Method;
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_50} :catch_51

    .line 80
    .line 81
    goto :goto_56

    .line 82
    :catch_51
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 83
    .line 84
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f0400c7

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lm/x1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x2

    .line 3
    iput p4, p0, Lm/x1;->d:I

    .line 4
    iput p4, p0, Lm/x1;->e:I

    const/16 p4, 0x3ea

    .line 5
    iput p4, p0, Lm/x1;->h:I

    const/4 p4, 0x0

    .line 6
    iput p4, p0, Lm/x1;->l:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lm/x1;->m:I

    .line 8
    new-instance v0, Lm/t1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm/t1;-><init>(Lm/x1;I)V

    iput-object v0, p0, Lm/x1;->y:Lm/t1;

    .line 9
    new-instance v0, Lm/w1;

    invoke-direct {v0, p0}, Lm/w1;-><init>(Lm/x1;)V

    iput-object v0, p0, Lm/x1;->z:Lm/w1;

    .line 10
    new-instance v0, Lm/v1;

    invoke-direct {v0, p0}, Lm/v1;-><init>(Lm/x1;)V

    iput-object v0, p0, Lm/x1;->A:Lm/v1;

    .line 11
    new-instance v0, Lm/t1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/t1;-><init>(Lm/x1;I)V

    iput-object v0, p0, Lm/x1;->B:Lm/t1;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm/x1;->D:Landroid/graphics/Rect;

    .line 13
    iput-object p1, p0, Lm/x1;->a:Landroid/content/Context;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lm/x1;->C:Landroid/os/Handler;

    .line 15
    sget-object v0, Lf/a;->o:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lm/x1;->f:I

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lm/x1;->g:I

    if-eqz v2, :cond_5d

    .line 18
    iput-boolean v1, p0, Lm/x1;->i:Z

    .line 19
    :cond_5d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance v0, Lm/v;

    .line 21
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    sget-object v2, Lf/a;->s:[I

    .line 23
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 24
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 25
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 26
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 27
    :cond_79
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8a

    .line 28
    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_8a

    .line 29
    invoke-static {p1, p3}, Lz7/l;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_8e

    .line 30
    :cond_8a
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 31
    :goto_8e
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    iput-object v0, p0, Lm/x1;->G:Lm/v;

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lm/x1;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()V
    .registers 15

    .line 1
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 2
    .line 3
    iget-object v1, p0, Lm/x1;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lm/x1;->G:Lm/v;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v0, :cond_40

    .line 10
    .line 11
    iget-boolean v0, p0, Lm/x1;->F:Z

    .line 12
    .line 13
    xor-int/2addr v0, v2

    .line 14
    invoke-virtual {p0, v1, v0}, Lm/x1;->q(Landroid/content/Context;Z)Lm/m1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 19
    .line 20
    iget-object v5, p0, Lm/x1;->b:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 26
    .line 27
    iget-object v5, p0, Lm/x1;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 43
    .line 44
    new-instance v5, Lm/q1;

    .line 45
    .line 46
    invoke-direct {v5, v4, p0}, Lm/q1;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 53
    .line 54
    iget-object v5, p0, Lm/x1;->A:Lm/v1;

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_46

    .line 65
    :cond_40
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    .line 71
    :goto_46
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v5, p0, Lm/x1;->D:Landroid/graphics/Rect;

    .line 76
    .line 77
    if-eqz v0, :cond_5e

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 80
    .line 81
    .line 82
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    add-int/2addr v6, v0

    .line 87
    iget-boolean v7, p0, Lm/x1;->i:Z

    .line 88
    .line 89
    if-nez v7, :cond_62

    .line 90
    .line 91
    neg-int v0, v0

    .line 92
    iput v0, p0, Lm/x1;->g:I

    .line 93
    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 96
    .line 97
    .line 98
    move v6, v4

    .line 99
    :cond_62
    :goto_62
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v7, 0x2

    .line 104
    if-ne v0, v7, :cond_6b

    .line 105
    .line 106
    move v0, v2

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v0, v4

    .line 109
    :goto_6c
    iget-object v8, p0, Lm/x1;->w:Landroid/view/View;

    .line 110
    .line 111
    iget v9, p0, Lm/x1;->g:I

    .line 112
    .line 113
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/16 v11, 0x17

    .line 116
    .line 117
    const-string v12, "ListPopupWindow"

    .line 118
    .line 119
    if-gt v10, v11, :cond_a2

    .line 120
    .line 121
    sget-object v10, Lm/x1;->I:Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-eqz v10, :cond_9d

    .line 124
    .line 125
    :try_start_7c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v13, 0x3

    .line 134
    new-array v13, v13, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v8, v13, v4

    .line 137
    .line 138
    aput-object v11, v13, v2

    .line 139
    .line 140
    aput-object v0, v13, v7

    .line 141
    .line 142
    invoke-virtual {v10, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_97} :catch_98

    .line 152
    goto :goto_a6

    .line 153
    :catch_98
    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 154
    .line 155
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_9d
    invoke-virtual {v3, v8, v9}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    goto :goto_a6

    .line 163
    :cond_a2
    invoke-static {v3, v8, v9, v0}, Lm/r1;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    :goto_a6
    iget v8, p0, Lm/x1;->d:I

    .line 168
    .line 169
    const/4 v9, -0x2

    .line 170
    const/4 v10, -0x1

    .line 171
    if-ne v8, v10, :cond_ae

    .line 172
    .line 173
    add-int/2addr v0, v6

    .line 174
    goto :goto_ff

    .line 175
    :cond_ae
    iget v11, p0, Lm/x1;->e:I

    .line 176
    .line 177
    if-eq v11, v9, :cond_d0

    .line 178
    .line 179
    const/high16 v13, 0x40000000    # 2.0f

    .line 180
    .line 181
    if-eq v11, v10, :cond_bb

    .line 182
    .line 183
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_e6

    .line 188
    :cond_bb
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    .line 198
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 201
    .line 202
    add-int/2addr v11, v5

    .line 203
    sub-int/2addr v1, v11

    .line 204
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    goto :goto_e6

    .line 209
    :cond_d0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    .line 219
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    add-int/2addr v11, v5

    .line 224
    sub-int/2addr v1, v11

    .line 225
    const/high16 v5, -0x80000000

    .line 226
    .line 227
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    :goto_e6
    iget-object v5, p0, Lm/x1;->c:Lm/m1;

    .line 232
    .line 233
    invoke-virtual {v5, v1, v0}, Lm/m1;->a(II)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-lez v0, :cond_fd

    .line 238
    .line 239
    iget-object v1, p0, Lm/x1;->c:Lm/m1;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iget-object v5, p0, Lm/x1;->c:Lm/m1;

    .line 246
    .line 247
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    add-int/2addr v5, v1

    .line 252
    add-int/2addr v5, v6

    .line 253
    goto :goto_fe

    .line 254
    :cond_fd
    move v5, v4

    .line 255
    :goto_fe
    add-int/2addr v0, v5

    .line 256
    :goto_ff
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-ne v1, v7, :cond_107

    .line 261
    .line 262
    move v1, v2

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move v1, v4

    .line 265
    :goto_108
    iget v5, p0, Lm/x1;->h:I

    .line 266
    .line 267
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_168

    .line 275
    .line 276
    iget-object v5, p0, Lm/x1;->w:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-nez v5, :cond_11d

    .line 283
    .line 284
    goto/16 :goto_200

    .line 285
    .line 286
    :cond_11d
    iget v5, p0, Lm/x1;->e:I

    .line 287
    .line 288
    if-ne v5, v10, :cond_123

    .line 289
    .line 290
    move v5, v10

    .line 291
    goto :goto_12b

    .line 292
    :cond_123
    if-ne v5, v9, :cond_12b

    .line 293
    .line 294
    iget-object v5, p0, Lm/x1;->w:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    :cond_12b
    :goto_12b
    if-ne v8, v10, :cond_14e

    .line 301
    .line 302
    if-eqz v1, :cond_131

    .line 303
    .line 304
    move v8, v0

    .line 305
    goto :goto_132

    .line 306
    :cond_131
    move v8, v10

    .line 307
    :goto_132
    if-eqz v1, :cond_142

    .line 308
    .line 309
    iget v0, p0, Lm/x1;->e:I

    .line 310
    .line 311
    if-ne v0, v10, :cond_13a

    .line 312
    .line 313
    move v0, v10

    .line 314
    goto :goto_13b

    .line 315
    :cond_13a
    move v0, v4

    .line 316
    :goto_13b
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_151

    .line 323
    :cond_142
    iget v0, p0, Lm/x1;->e:I

    .line 324
    .line 325
    if-ne v0, v10, :cond_147

    .line 326
    .line 327
    move v4, v10

    .line 328
    :cond_147
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_151

    .line 335
    :cond_14e
    if-ne v8, v9, :cond_151

    .line 336
    .line 337
    move v8, v0

    .line 338
    :cond_151
    :goto_151
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 339
    .line 340
    .line 341
    iget-object v4, p0, Lm/x1;->w:Landroid/view/View;

    .line 342
    .line 343
    move v0, v5

    .line 344
    iget v5, p0, Lm/x1;->f:I

    .line 345
    .line 346
    iget v6, p0, Lm/x1;->g:I

    .line 347
    .line 348
    if-gez v0, :cond_15f

    .line 349
    .line 350
    move v7, v10

    .line 351
    goto :goto_160

    .line 352
    :cond_15f
    move v7, v0

    .line 353
    :goto_160
    if-gez v8, :cond_163

    .line 354
    .line 355
    move v8, v10

    .line 356
    :cond_163
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_200

    .line 360
    .line 361
    :cond_168
    iget v1, p0, Lm/x1;->e:I

    .line 362
    .line 363
    if-ne v1, v10, :cond_16e

    .line 364
    .line 365
    move v1, v10

    .line 366
    goto :goto_176

    .line 367
    :cond_16e
    if-ne v1, v9, :cond_176

    .line 368
    .line 369
    iget-object v1, p0, Lm/x1;->w:Landroid/view/View;

    .line 370
    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    :cond_176
    :goto_176
    if-ne v8, v10, :cond_17a

    .line 376
    .line 377
    move v8, v10

    .line 378
    goto :goto_17d

    .line 379
    :cond_17a
    if-ne v8, v9, :cond_17d

    .line 380
    .line 381
    move v8, v0

    .line 382
    :cond_17d
    :goto_17d
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 386
    .line 387
    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 389
    .line 390
    const/16 v1, 0x1c

    .line 391
    .line 392
    if-gt v0, v1, :cond_19d

    .line 393
    .line 394
    sget-object v0, Lm/x1;->H:Ljava/lang/reflect/Method;

    .line 395
    .line 396
    if-eqz v0, :cond_1a0

    .line 397
    .line 398
    :try_start_18d
    new-array v5, v2, [Ljava/lang/Object;

    .line 399
    .line 400
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 401
    .line 402
    aput-object v6, v5, v4

    .line 403
    .line 404
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_196} :catch_197

    .line 405
    .line 406
    .line 407
    goto :goto_1a0

    .line 408
    :catch_197
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 409
    .line 410
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    goto :goto_1a0

    .line 414
    :cond_19d
    invoke-static {v3, v2}, Lm/s1;->b(Landroid/widget/PopupWindow;Z)V

    .line 415
    .line 416
    .line 417
    :cond_1a0
    :goto_1a0
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lm/x1;->z:Lm/w1;

    .line 421
    .line 422
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 423
    .line 424
    .line 425
    iget-boolean v0, p0, Lm/x1;->k:Z

    .line 426
    .line 427
    if-eqz v0, :cond_1b1

    .line 428
    .line 429
    iget-boolean v0, p0, Lm/x1;->j:Z

    .line 430
    .line 431
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 432
    .line 433
    .line 434
    :cond_1b1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 435
    .line 436
    if-gt v0, v1, :cond_1ca

    .line 437
    .line 438
    sget-object v0, Lm/x1;->J:Ljava/lang/reflect/Method;

    .line 439
    .line 440
    if-eqz v0, :cond_1cf

    .line 441
    .line 442
    :try_start_1b9
    iget-object v1, p0, Lm/x1;->E:Landroid/graphics/Rect;

    .line 443
    .line 444
    new-array v5, v2, [Ljava/lang/Object;

    .line 445
    .line 446
    aput-object v1, v5, v4

    .line 447
    .line 448
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1c2} :catch_1c3

    .line 449
    .line 450
    .line 451
    goto :goto_1cf

    .line 452
    :catch_1c3
    move-exception v0

    .line 453
    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 454
    .line 455
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .line 457
    .line 458
    goto :goto_1cf

    .line 459
    :cond_1ca
    iget-object v0, p0, Lm/x1;->E:Landroid/graphics/Rect;

    .line 460
    .line 461
    invoke-static {v3, v0}, Lm/s1;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 462
    .line 463
    .line 464
    :cond_1cf
    :goto_1cf
    iget-object v0, p0, Lm/x1;->w:Landroid/view/View;

    .line 465
    .line 466
    iget v1, p0, Lm/x1;->f:I

    .line 467
    .line 468
    iget v4, p0, Lm/x1;->g:I

    .line 469
    .line 470
    iget v5, p0, Lm/x1;->l:I

    .line 471
    .line 472
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 476
    .line 477
    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 478
    .line 479
    .line 480
    iget-boolean v0, p0, Lm/x1;->F:Z

    .line 481
    .line 482
    if-eqz v0, :cond_1eb

    .line 483
    .line 484
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 485
    .line 486
    invoke-virtual {v0}, Lm/m1;->isInTouchMode()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_1f5

    .line 491
    .line 492
    :cond_1eb
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 493
    .line 494
    if-eqz v0, :cond_1f5

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Lm/m1;->setListSelectionHidden(Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 500
    .line 501
    .line 502
    :cond_1f5
    iget-boolean v0, p0, Lm/x1;->F:Z

    .line 503
    .line 504
    if-nez v0, :cond_200

    .line 505
    .line 506
    iget-object v0, p0, Lm/x1;->C:Landroid/os/Handler;

    .line 507
    .line 508
    iget-object v1, p0, Lm/x1;->B:Lm/t1;

    .line 509
    .line 510
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    .line 512
    .line 513
    :cond_200
    :goto_200
    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lm/x1;->c:Lm/m1;

    .line 11
    .line 12
    iget-object v0, p0, Lm/x1;->C:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lm/x1;->y:Lm/t1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()Lm/m1;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/x1;->c:Lm/m1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(I)V
    .registers 2

    .line 1
    iput p1, p0, Lm/x1;->g:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lm/x1;->i:Z

    .line 5
    .line 6
    return-void
.end method

.method public final j(I)V
    .registers 2

    .line 1
    iput p1, p0, Lm/x1;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final m()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/x1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Lm/x1;->g:I

    .line 8
    .line 9
    return v0
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/x1;->v:Lm/u1;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Lm/u1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1, p0}, Lm/u1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lm/x1;->v:Lm/u1;

    .line 12
    .line 13
    goto :goto_14

    .line 14
    :cond_d
    iget-object v1, p0, Lm/x1;->b:Landroid/widget/ListAdapter;

    .line 15
    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    :goto_14
    iput-object p1, p0, Lm/x1;->b:Landroid/widget/ListAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_1d

    .line 24
    .line 25
    iget-object v0, p0, Lm/x1;->v:Lm/u1;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iget-object p1, p0, Lm/x1;->c:Lm/m1;

    .line 31
    .line 32
    if-eqz p1, :cond_26

    .line 33
    .line 34
    iget-object v0, p0, Lm/x1;->b:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public q(Landroid/content/Context;Z)Lm/m1;
    .registers 4

    .line 1
    new-instance v0, Lm/m1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lm/m1;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final r(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/x1;->G:Lm/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 8
    .line 9
    iget-object v1, p0, Lm/x1;->D:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lm/x1;->e:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    iput p1, p0, Lm/x1;->e:I

    .line 24
    .line 25
    return-void
.end method
