###### Class m.s0 (m.s0)
.class public final Lm/s0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lm/x2;

.field public c:Lm/x2;

.field public d:Lm/x2;

.field public e:Lm/x2;

.field public f:Lm/x2;

.field public g:Lm/x2;

.field public h:Lm/x2;

.field public final i:Lm/b1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm/s0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lm/s0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Lm/s0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Lm/b1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lm/b1;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lm/s0;->i:Lm/b1;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lm/p;I)Lm/x2;
    .registers 4

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Lm/p;->a:Lm/f2;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lm/f2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_15

    .line 10
    .line 11
    new-instance p1, Lm/x2;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lm/x2;->b:Z

    .line 18
    .line 19
    iput-object p0, p1, Lm/x2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    :try_start_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .line 26
    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .registers 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-ge v0, v1, :cond_c1

    .line 6
    .line 7
    if-eqz p1, :cond_c1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-lt v0, v1, :cond_12

    .line 14
    .line 15
    invoke-static {p0, p1}, Ll0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-lt v0, v1, :cond_1b

    .line 23
    .line 24
    invoke-static {p0, p1}, Ll0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 29
    .line 30
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 31
    .line 32
    if-le p2, v0, :cond_23

    .line 33
    .line 34
    move v1, v0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, p2

    .line 37
    :goto_24
    if-le p2, v0, :cond_27

    .line 38
    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move p2, v0

    .line 41
    :goto_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ltz v1, :cond_be

    .line 48
    .line 49
    if-le p2, v0, :cond_34

    .line 50
    .line 51
    goto/16 :goto_be

    .line 52
    .line 53
    :cond_34
    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0xfff

    .line 56
    .line 57
    const/16 v5, 0x81

    .line 58
    .line 59
    if-eq v4, v5, :cond_ba

    .line 60
    .line 61
    const/16 v5, 0xe1

    .line 62
    .line 63
    if-eq v4, v5, :cond_ba

    .line 64
    .line 65
    const/16 v5, 0x12

    .line 66
    .line 67
    if-ne v4, v5, :cond_46

    .line 68
    .line 69
    goto/16 :goto_ba

    .line 70
    .line 71
    :cond_46
    const/16 v3, 0x800

    .line 72
    .line 73
    if-gt v0, v3, :cond_4e

    .line 74
    .line 75
    invoke-static {p0, p1, v1, p2}, Ll0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4e
    sub-int v0, p2, v1

    .line 80
    .line 81
    const/16 v3, 0x400

    .line 82
    .line 83
    if-le v0, v3, :cond_56

    .line 84
    .line 85
    move v3, v2

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v3, v0

    .line 88
    :goto_57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v4, p2

    .line 93
    rsub-int v5, v3, 0x800

    .line 94
    .line 95
    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    int-to-double v8, v5

    .line 101
    mul-double/2addr v8, v6

    .line 102
    double-to-int v6, v8

    .line 103
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    sub-int v6, v5, v6

    .line 108
    .line 109
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    sub-int/2addr v5, v4

    .line 114
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    sub-int/2addr v1, v5

    .line 119
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_84

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    add-int/lit8 v5, v5, -0x1

    .line 132
    .line 133
    :cond_84
    add-int v6, p2, v4

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    sub-int/2addr v6, v7

    .line 137
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_94

    .line 146
    .line 147
    add-int/lit8 v4, v4, -0x1

    .line 148
    .line 149
    :cond_94
    add-int v6, v5, v3

    .line 150
    .line 151
    add-int v8, v6, v4

    .line 152
    .line 153
    if-eq v3, v0, :cond_b1

    .line 154
    .line 155
    add-int v0, v1, v5

    .line 156
    .line 157
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    add-int/2addr v4, p2

    .line 162
    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/4 p2, 0x2

    .line 167
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 168
    .line 169
    aput-object v0, p2, v2

    .line 170
    .line 171
    aput-object p1, p2, v7

    .line 172
    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_b6

    .line 178
    :cond_b1
    add-int/2addr v8, v1

    .line 179
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_b6
    invoke-static {p0, p1, v5, v6}, Ll0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_ba
    :goto_ba
    invoke-static {p0, v3, v2, v2}, Ll0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_be
    :goto_be
    invoke-static {p0, v3, v2, v2}, Ll0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 192
    .line 193
    .line 194
    :cond_c1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lm/x2;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    if-eqz p2, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lm/s0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Lm/p;->d(Landroid/graphics/drawable/Drawable;Lm/x2;[I)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Lm/s0;->b:Lm/x2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lm/s0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_14

    .line 8
    .line 9
    iget-object v0, p0, Lm/s0;->c:Lm/x2;

    .line 10
    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    iget-object v0, p0, Lm/s0;->d:Lm/x2;

    .line 14
    .line 15
    if-nez v0, :cond_14

    .line 16
    .line 17
    iget-object v0, p0, Lm/s0;->e:Lm/x2;

    .line 18
    .line 19
    if-eqz v0, :cond_36

    .line 20
    .line 21
    :cond_14
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Lm/s0;->b:Lm/x2;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Lm/s0;->c:Lm/x2;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Lm/s0;->d:Lm/x2;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Lm/s0;->e:Lm/x2;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 53
    .line 54
    .line 55
    :cond_36
    iget-object v0, p0, Lm/s0;->f:Lm/x2;

    .line 56
    .line 57
    if-nez v0, :cond_40

    .line 58
    .line 59
    iget-object v0, p0, Lm/s0;->g:Lm/x2;

    .line 60
    .line 61
    if-eqz v0, :cond_3f

    .line 62
    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    return-void

    .line 65
    :cond_40
    :goto_40
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Lm/s0;->f:Lm/x2;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Lm/s0;->g:Lm/x2;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lm/s0;->a(Landroid/graphics/drawable/Drawable;Lm/x2;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, v0, Lm/x2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, v0, Lm/x2;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .registers 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    iget-object v1, v0, Lm/s0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-static {}, Lm/p;->a()Lm/p;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    sget-object v3, Lf/a;->h:[I

    .line 18
    .line 19
    invoke-static {v8, v4, v3, v6}, Lc5/h;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lc5/h;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v5, v10, Lc5/h;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Landroid/content/res/TypedArray;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static/range {v1 .. v7}, Lj0/k0;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 33
    .line 34
    .line 35
    move-object v11, v1

    .line 36
    iget-object v1, v10, Lc5/h;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroid/content/res/TypedArray;

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v13, -0x1

    .line 42
    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v14, 0x3

    .line 47
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3e

    .line 52
    .line 53
    invoke-virtual {v1, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v8, v9, v3}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v0, Lm/s0;->b:Lm/x2;

    .line 62
    .line 63
    :cond_3e
    const/4 v15, 0x1

    .line 64
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_4f

    .line 69
    .line 70
    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v8, v9, v3}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, v0, Lm/s0;->c:Lm/x2;

    .line 79
    .line 80
    :cond_4f
    const/4 v3, 0x4

    .line 81
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_60

    .line 86
    .line 87
    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-static {v8, v9, v5}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iput-object v5, v0, Lm/s0;->d:Lm/x2;

    .line 96
    .line 97
    :cond_60
    const/4 v5, 0x2

    .line 98
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_71

    .line 103
    .line 104
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-static {v8, v9, v7}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iput-object v7, v0, Lm/s0;->e:Lm/x2;

    .line 113
    .line 114
    :cond_71
    const/4 v7, 0x5

    .line 115
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-eqz v16, :cond_82

    .line 120
    .line 121
    invoke-virtual {v1, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {v8, v9, v3}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iput-object v3, v0, Lm/s0;->f:Lm/x2;

    .line 130
    .line 131
    :cond_82
    const/4 v3, 0x6

    .line 132
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 133
    .line 134
    .line 135
    move-result v17

    .line 136
    if-eqz v17, :cond_93

    .line 137
    .line 138
    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v8, v9, v1}, Lm/s0;->c(Landroid/content/Context;Lm/p;I)Lm/x2;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, v0, Lm/s0;->g:Lm/x2;

    .line 147
    .line 148
    :cond_93
    invoke-virtual {v10}, Lc5/h;->s()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 156
    .line 157
    const/16 v10, 0x1a

    .line 158
    .line 159
    sget-object v3, Lf/a;->w:[I

    .line 160
    .line 161
    const/16 v5, 0xe

    .line 162
    .line 163
    const/16 v14, 0xd

    .line 164
    .line 165
    const/16 v15, 0xf

    .line 166
    .line 167
    if-eq v2, v13, :cond_ea

    .line 168
    .line 169
    new-instance v7, Lc5/h;

    .line 170
    .line 171
    invoke-virtual {v8, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-direct {v7, v8, v2}, Lc5/h;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 176
    .line 177
    .line 178
    if-nez v1, :cond_c2

    .line 179
    .line 180
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 181
    .line 182
    .line 183
    move-result v21

    .line 184
    if-eqz v21, :cond_c2

    .line 185
    .line 186
    invoke-virtual {v2, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v21

    .line 190
    move/from16 v22, v21

    .line 191
    .line 192
    const/16 v21, 0x1

    .line 193
    .line 194
    goto :goto_c6

    .line 195
    :cond_c2
    move/from16 v21, v12

    .line 196
    .line 197
    move/from16 v22, v21

    .line 198
    .line 199
    :goto_c6
    invoke-virtual {v0, v8, v7}, Lm/s0;->n(Landroid/content/Context;Lc5/h;)V

    .line 200
    .line 201
    .line 202
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 205
    .line 206
    .line 207
    move-result v23

    .line 208
    if-eqz v23, :cond_d6

    .line 209
    .line 210
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v23

    .line 214
    goto :goto_d8

    .line 215
    :cond_d6
    const/16 v23, 0x0

    .line 216
    .line 217
    :goto_d8
    if-lt v13, v10, :cond_e5

    .line 218
    .line 219
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_e5

    .line 224
    .line 225
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    goto :goto_e6

    .line 230
    :cond_e5
    const/4 v2, 0x0

    .line 231
    :goto_e6
    invoke-virtual {v7}, Lc5/h;->s()V

    .line 232
    .line 233
    .line 234
    goto :goto_f1

    .line 235
    :cond_ea
    move/from16 v21, v12

    .line 236
    .line 237
    move/from16 v22, v21

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    const/16 v23, 0x0

    .line 241
    .line 242
    :goto_f1
    new-instance v7, Lc5/h;

    .line 243
    .line 244
    invoke-virtual {v8, v4, v3, v6, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-direct {v7, v8, v3}, Lc5/h;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 249
    .line 250
    .line 251
    if-nez v1, :cond_108

    .line 252
    .line 253
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_108

    .line 258
    .line 259
    invoke-virtual {v3, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 260
    .line 261
    .line 262
    move-result v22

    .line 263
    const/16 v21, 0x1

    .line 264
    .line 265
    :cond_108
    move/from16 v5, v22

    .line 266
    .line 267
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268
    .line 269
    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 270
    .line 271
    .line 272
    move-result v22

    .line 273
    if-eqz v22, :cond_116

    .line 274
    .line 275
    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v23

    .line 279
    :cond_116
    move-object/from16 v15, v23

    .line 280
    .line 281
    if-lt v13, v10, :cond_124

    .line 282
    .line 283
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    if-eqz v10, :cond_124

    .line 288
    .line 289
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    :cond_124
    const/16 v10, 0x1c

    .line 294
    .line 295
    if-lt v13, v10, :cond_139

    .line 296
    .line 297
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_139

    .line 302
    .line 303
    const/4 v10, -0x1

    .line 304
    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-nez v3, :cond_139

    .line 309
    .line 310
    const/4 v3, 0x0

    .line 311
    invoke-virtual {v11, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 312
    .line 313
    .line 314
    :cond_139
    invoke-virtual {v0, v8, v7}, Lm/s0;->n(Landroid/content/Context;Lc5/h;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7}, Lc5/h;->s()V

    .line 318
    .line 319
    .line 320
    if-nez v1, :cond_146

    .line 321
    .line 322
    if-eqz v21, :cond_146

    .line 323
    .line 324
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 325
    .line 326
    .line 327
    :cond_146
    iget-object v1, v0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 328
    .line 329
    if-eqz v1, :cond_158

    .line 330
    .line 331
    iget v3, v0, Lm/s0;->k:I

    .line 332
    .line 333
    const/4 v10, -0x1

    .line 334
    if-ne v3, v10, :cond_155

    .line 335
    .line 336
    iget v3, v0, Lm/s0;->j:I

    .line 337
    .line 338
    invoke-virtual {v11, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 339
    .line 340
    .line 341
    goto :goto_158

    .line 342
    :cond_155
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    .line 344
    .line 345
    :cond_158
    :goto_158
    if-eqz v2, :cond_15d

    .line 346
    .line 347
    invoke-static {v11, v2}, Lm/q0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    :cond_15d
    const/16 v10, 0x18

    .line 351
    .line 352
    if-eqz v15, :cond_17a

    .line 353
    .line 354
    if-lt v13, v10, :cond_16b

    .line 355
    .line 356
    invoke-static {v15}, Lm/p0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-static {v11, v1}, Lm/p0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 361
    .line 362
    .line 363
    goto :goto_17a

    .line 364
    :cond_16b
    const-string v1, ","

    .line 365
    .line 366
    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    aget-object v1, v1, v12

    .line 371
    .line 372
    invoke-static {v1}, Lm/o0;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 377
    .line 378
    .line 379
    :cond_17a
    :goto_17a
    iget-object v13, v0, Lm/s0;->i:Lm/b1;

    .line 380
    .line 381
    iget-object v15, v13, Lm/b1;->j:Landroid/content/Context;

    .line 382
    .line 383
    sget-object v3, Lf/a;->i:[I

    .line 384
    .line 385
    invoke-virtual {v15, v4, v3, v6, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    iget-object v1, v13, Lm/b1;->i:Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    const/4 v7, 0x0

    .line 396
    const/4 v10, 0x4

    .line 397
    const/4 v14, 0x5

    .line 398
    invoke-static/range {v1 .. v7}, Lj0/k0;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_19c

    .line 406
    .line 407
    invoke-virtual {v5, v14, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    iput v1, v13, Lm/b1;->a:I

    .line 412
    .line 413
    :cond_19c
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    const/high16 v2, -0x40800000    # -1.0f

    .line 418
    .line 419
    if-eqz v1, :cond_1aa

    .line 420
    .line 421
    invoke-virtual {v5, v10, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    :goto_1a8
    const/4 v6, 0x2

    .line 426
    goto :goto_1ac

    .line 427
    :cond_1aa
    move v1, v2

    .line 428
    goto :goto_1a8

    .line 429
    :goto_1ac
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-eqz v7, :cond_1b8

    .line 434
    .line 435
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    :goto_1b6
    const/4 v10, 0x1

    .line 440
    goto :goto_1ba

    .line 441
    :cond_1b8
    move v7, v2

    .line 442
    goto :goto_1b6

    .line 443
    :goto_1ba
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 444
    .line 445
    .line 446
    move-result v19

    .line 447
    if-eqz v19, :cond_1c6

    .line 448
    .line 449
    invoke-virtual {v5, v10, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 450
    .line 451
    .line 452
    move-result v20

    .line 453
    :goto_1c4
    const/4 v10, 0x3

    .line 454
    goto :goto_1c9

    .line 455
    :cond_1c6
    move/from16 v20, v2

    .line 456
    .line 457
    goto :goto_1c4

    .line 458
    :goto_1c9
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 459
    .line 460
    .line 461
    move-result v18

    .line 462
    move/from16 p2, v2

    .line 463
    .line 464
    if-eqz v18, :cond_200

    .line 465
    .line 466
    invoke-virtual {v5, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-lez v2, :cond_200

    .line 471
    .line 472
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 481
    .line 482
    .line 483
    move-result v10

    .line 484
    new-array v14, v10, [I

    .line 485
    .line 486
    if-lez v10, :cond_1fd

    .line 487
    .line 488
    :goto_1e7
    if-ge v12, v10, :cond_1f4

    .line 489
    .line 490
    const/4 v6, -0x1

    .line 491
    invoke-virtual {v2, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 492
    .line 493
    .line 494
    move-result v23

    .line 495
    aput v23, v14, v12

    .line 496
    .line 497
    add-int/lit8 v12, v12, 0x1

    .line 498
    .line 499
    const/4 v6, 0x2

    .line 500
    goto :goto_1e7

    .line 501
    :cond_1f4
    invoke-static {v14}, Lm/b1;->b([I)[I

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    iput-object v6, v13, Lm/b1;->f:[I

    .line 506
    .line 507
    invoke-virtual {v13}, Lm/b1;->i()Z

    .line 508
    .line 509
    .line 510
    :cond_1fd
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 511
    .line 512
    .line 513
    :cond_200
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v13}, Lm/b1;->j()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-eqz v2, :cond_240

    .line 521
    .line 522
    iget v2, v13, Lm/b1;->a:I

    .line 523
    .line 524
    const/4 v10, 0x1

    .line 525
    if-ne v2, v10, :cond_243

    .line 526
    .line 527
    iget-boolean v2, v13, Lm/b1;->g:Z

    .line 528
    .line 529
    if-nez v2, :cond_23c

    .line 530
    .line 531
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    cmpl-float v5, v7, p2

    .line 540
    .line 541
    if-nez v5, :cond_226

    .line 542
    .line 543
    const/high16 v5, 0x41400000    # 12.0f

    .line 544
    .line 545
    const/4 v6, 0x2

    .line 546
    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 547
    .line 548
    .line 549
    move-result v7

    .line 550
    goto :goto_227

    .line 551
    :cond_226
    const/4 v6, 0x2

    .line 552
    :goto_227
    cmpl-float v5, v20, p2

    .line 553
    .line 554
    if-nez v5, :cond_231

    .line 555
    .line 556
    const/high16 v5, 0x42e00000    # 112.0f

    .line 557
    .line 558
    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 559
    .line 560
    .line 561
    move-result v20

    .line 562
    :cond_231
    move/from16 v2, v20

    .line 563
    .line 564
    cmpl-float v5, v1, p2

    .line 565
    .line 566
    if-nez v5, :cond_239

    .line 567
    .line 568
    const/high16 v1, 0x3f800000    # 1.0f

    .line 569
    .line 570
    :cond_239
    invoke-virtual {v13, v7, v2, v1}, Lm/b1;->k(FFF)V

    .line 571
    .line 572
    .line 573
    :cond_23c
    invoke-virtual {v13}, Lm/b1;->h()Z

    .line 574
    .line 575
    .line 576
    goto :goto_243

    .line 577
    :cond_240
    const/4 v1, 0x0

    .line 578
    iput v1, v13, Lm/b1;->a:I

    .line 579
    .line 580
    :cond_243
    :goto_243
    sget-boolean v1, Lm/l3;->c:Z

    .line 581
    .line 582
    if-eqz v1, :cond_274

    .line 583
    .line 584
    iget v1, v13, Lm/b1;->a:I

    .line 585
    .line 586
    if-eqz v1, :cond_274

    .line 587
    .line 588
    iget-object v1, v13, Lm/b1;->f:[I

    .line 589
    .line 590
    array-length v2, v1

    .line 591
    if-lez v2, :cond_274

    .line 592
    .line 593
    invoke-static {v11}, Lm/q0;->a(Landroid/widget/TextView;)I

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    int-to-float v2, v2

    .line 598
    cmpl-float v2, v2, p2

    .line 599
    .line 600
    if-eqz v2, :cond_270

    .line 601
    .line 602
    iget v1, v13, Lm/b1;->d:F

    .line 603
    .line 604
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    iget v2, v13, Lm/b1;->e:F

    .line 609
    .line 610
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    iget v5, v13, Lm/b1;->c:F

    .line 615
    .line 616
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    const/4 v6, 0x0

    .line 621
    invoke-static {v11, v1, v2, v5, v6}, Lm/q0;->b(Landroid/widget/TextView;IIII)V

    .line 622
    .line 623
    .line 624
    goto :goto_274

    .line 625
    :cond_270
    const/4 v6, 0x0

    .line 626
    invoke-static {v11, v1, v6}, Lm/q0;->c(Landroid/widget/TextView;[II)V

    .line 627
    .line 628
    .line 629
    :cond_274
    :goto_274
    invoke-virtual {v8, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    const/16 v2, 0x8

    .line 634
    .line 635
    const/4 v10, -0x1

    .line 636
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    if-eq v2, v10, :cond_288

    .line 641
    .line 642
    invoke-virtual {v9, v8, v2}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    :goto_285
    const/16 v2, 0xd

    .line 647
    .line 648
    goto :goto_28a

    .line 649
    :cond_288
    const/4 v7, 0x0

    .line 650
    goto :goto_285

    .line 651
    :goto_28a
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    if-eq v2, v10, :cond_295

    .line 656
    .line 657
    invoke-virtual {v9, v8, v2}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    goto :goto_296

    .line 662
    :cond_295
    const/4 v2, 0x0

    .line 663
    :goto_296
    const/16 v3, 0x9

    .line 664
    .line 665
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eq v3, v10, :cond_2a4

    .line 670
    .line 671
    invoke-virtual {v9, v8, v3}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    :goto_2a2
    const/4 v4, 0x6

    .line 676
    goto :goto_2a6

    .line 677
    :cond_2a4
    const/4 v3, 0x0

    .line 678
    goto :goto_2a2

    .line 679
    :goto_2a6
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 680
    .line 681
    .line 682
    move-result v4

    .line 683
    if-eq v4, v10, :cond_2b1

    .line 684
    .line 685
    invoke-virtual {v9, v8, v4}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    goto :goto_2b2

    .line 690
    :cond_2b1
    const/4 v4, 0x0

    .line 691
    :goto_2b2
    const/16 v5, 0xa

    .line 692
    .line 693
    invoke-virtual {v1, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    if-eq v5, v10, :cond_2bf

    .line 698
    .line 699
    invoke-virtual {v9, v8, v5}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    goto :goto_2c0

    .line 704
    :cond_2bf
    const/4 v5, 0x0

    .line 705
    :goto_2c0
    const/4 v6, 0x7

    .line 706
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 707
    .line 708
    .line 709
    move-result v6

    .line 710
    if-eq v6, v10, :cond_2cc

    .line 711
    .line 712
    invoke-virtual {v9, v8, v6}, Lm/p;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 713
    .line 714
    .line 715
    move-result-object v6

    .line 716
    goto :goto_2cd

    .line 717
    :cond_2cc
    const/4 v6, 0x0

    .line 718
    :goto_2cd
    if-nez v5, :cond_324

    .line 719
    .line 720
    if-eqz v6, :cond_2d2

    .line 721
    .line 722
    goto :goto_324

    .line 723
    :cond_2d2
    if-nez v7, :cond_2da

    .line 724
    .line 725
    if-nez v2, :cond_2da

    .line 726
    .line 727
    if-nez v3, :cond_2da

    .line 728
    .line 729
    if-eqz v4, :cond_347

    .line 730
    .line 731
    :cond_2da
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    const/16 v21, 0x0

    .line 736
    .line 737
    aget-object v6, v5, v21

    .line 738
    .line 739
    if-nez v6, :cond_2ea

    .line 740
    .line 741
    const/16 v24, 0x2

    .line 742
    .line 743
    aget-object v9, v5, v24

    .line 744
    .line 745
    if-eqz v9, :cond_2ed

    .line 746
    .line 747
    :cond_2ea
    const/16 v18, 0x3

    .line 748
    .line 749
    goto :goto_30f

    .line 750
    :cond_2ed
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    if-eqz v7, :cond_2f4

    .line 755
    .line 756
    goto :goto_2f6

    .line 757
    :cond_2f4
    aget-object v7, v5, v21

    .line 758
    .line 759
    :goto_2f6
    if-eqz v2, :cond_2f9

    .line 760
    .line 761
    goto :goto_2fd

    .line 762
    :cond_2f9
    const/16 v19, 0x1

    .line 763
    .line 764
    aget-object v2, v5, v19

    .line 765
    .line 766
    :goto_2fd
    if-eqz v3, :cond_300

    .line 767
    .line 768
    goto :goto_304

    .line 769
    :cond_300
    const/16 v24, 0x2

    .line 770
    .line 771
    aget-object v3, v5, v24

    .line 772
    .line 773
    :goto_304
    if-eqz v4, :cond_307

    .line 774
    .line 775
    goto :goto_30b

    .line 776
    :cond_307
    const/16 v18, 0x3

    .line 777
    .line 778
    aget-object v4, v5, v18

    .line 779
    .line 780
    :goto_30b
    invoke-virtual {v11, v7, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 781
    .line 782
    .line 783
    goto :goto_347

    .line 784
    :goto_30f
    if-eqz v2, :cond_312

    .line 785
    .line 786
    goto :goto_316

    .line 787
    :cond_312
    const/16 v19, 0x1

    .line 788
    .line 789
    aget-object v2, v5, v19

    .line 790
    .line 791
    :goto_316
    if-eqz v4, :cond_31b

    .line 792
    .line 793
    :goto_318
    const/16 v24, 0x2

    .line 794
    .line 795
    goto :goto_31e

    .line 796
    :cond_31b
    aget-object v4, v5, v18

    .line 797
    .line 798
    goto :goto_318

    .line 799
    :goto_31e
    aget-object v3, v5, v24

    .line 800
    .line 801
    invoke-virtual {v11, v6, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 802
    .line 803
    .line 804
    goto :goto_347

    .line 805
    :cond_324
    :goto_324
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    if-eqz v5, :cond_32b

    .line 810
    .line 811
    goto :goto_32f

    .line 812
    :cond_32b
    const/16 v21, 0x0

    .line 813
    .line 814
    aget-object v5, v3, v21

    .line 815
    .line 816
    :goto_32f
    if-eqz v2, :cond_332

    .line 817
    .line 818
    goto :goto_336

    .line 819
    :cond_332
    const/16 v19, 0x1

    .line 820
    .line 821
    aget-object v2, v3, v19

    .line 822
    .line 823
    :goto_336
    if-eqz v6, :cond_339

    .line 824
    .line 825
    goto :goto_33d

    .line 826
    :cond_339
    const/16 v24, 0x2

    .line 827
    .line 828
    aget-object v6, v3, v24

    .line 829
    .line 830
    :goto_33d
    if-eqz v4, :cond_340

    .line 831
    .line 832
    goto :goto_344

    .line 833
    :cond_340
    const/16 v18, 0x3

    .line 834
    .line 835
    aget-object v4, v3, v18

    .line 836
    .line 837
    :goto_344
    invoke-virtual {v11, v5, v2, v6, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 838
    .line 839
    .line 840
    :cond_347
    :goto_347
    const/16 v2, 0xb

    .line 841
    .line 842
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    if-eqz v3, :cond_37b

    .line 847
    .line 848
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    if-eqz v3, :cond_363

    .line 853
    .line 854
    const/4 v6, 0x0

    .line 855
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    if-eqz v3, :cond_363

    .line 860
    .line 861
    invoke-static {v8, v3}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    if-eqz v3, :cond_363

    .line 866
    .line 867
    goto :goto_367

    .line 868
    :cond_363
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    :goto_367
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 873
    .line 874
    const/16 v4, 0x18

    .line 875
    .line 876
    if-lt v2, v4, :cond_371

    .line 877
    .line 878
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 879
    .line 880
    .line 881
    goto :goto_37b

    .line 882
    :cond_371
    instance-of v2, v11, Lm0/k;

    .line 883
    .line 884
    if-eqz v2, :cond_37b

    .line 885
    .line 886
    move-object v2, v11

    .line 887
    check-cast v2, Lm0/k;

    .line 888
    .line 889
    invoke-interface {v2, v3}, Lm0/k;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 890
    .line 891
    .line 892
    :cond_37b
    :goto_37b
    const/16 v2, 0xc

    .line 893
    .line 894
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_3a1

    .line 899
    .line 900
    const/4 v10, -0x1

    .line 901
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    const/4 v3, 0x0

    .line 906
    invoke-static {v2, v3}, Lm/g1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 911
    .line 912
    const/16 v4, 0x18

    .line 913
    .line 914
    if-lt v3, v4, :cond_397

    .line 915
    .line 916
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 917
    .line 918
    .line 919
    goto :goto_3a1

    .line 920
    :cond_397
    instance-of v3, v11, Lm0/k;

    .line 921
    .line 922
    if-eqz v3, :cond_3a1

    .line 923
    .line 924
    move-object v3, v11

    .line 925
    check-cast v3, Lm0/k;

    .line 926
    .line 927
    invoke-interface {v3, v2}, Lm0/k;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 928
    .line 929
    .line 930
    :cond_3a1
    :goto_3a1
    const/16 v2, 0xf

    .line 931
    .line 932
    const/4 v10, -0x1

    .line 933
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    const/16 v3, 0x12

    .line 938
    .line 939
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    const/16 v4, 0x13

    .line 944
    .line 945
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    if-eqz v5, :cond_3d4

    .line 950
    .line 951
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    if-eqz v5, :cond_3cc

    .line 956
    .line 957
    iget v6, v5, Landroid/util/TypedValue;->type:I

    .line 958
    .line 959
    const/4 v14, 0x5

    .line 960
    if-ne v6, v14, :cond_3cc

    .line 961
    .line 962
    iget v4, v5, Landroid/util/TypedValue;->data:I

    .line 963
    .line 964
    and-int/lit8 v10, v4, 0xf

    .line 965
    .line 966
    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    move v5, v10

    .line 971
    const/4 v10, -0x1

    .line 972
    goto :goto_3d8

    .line 973
    :cond_3cc
    const/4 v10, -0x1

    .line 974
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    int-to-float v4, v4

    .line 979
    :goto_3d2
    move v5, v10

    .line 980
    goto :goto_3d8

    .line 981
    :cond_3d4
    const/4 v10, -0x1

    .line 982
    move/from16 v4, p2

    .line 983
    .line 984
    goto :goto_3d2

    .line 985
    :goto_3d8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 986
    .line 987
    .line 988
    if-eq v2, v10, :cond_3e0

    .line 989
    .line 990
    invoke-static {v11, v2}, Li2/t;->m(Landroid/widget/TextView;I)V

    .line 991
    .line 992
    .line 993
    :cond_3e0
    if-eq v3, v10, :cond_3e5

    .line 994
    .line 995
    invoke-static {v11, v3}, Li2/t;->n(Landroid/widget/TextView;I)V

    .line 996
    .line 997
    .line 998
    :cond_3e5
    cmpl-float v1, v4, p2

    .line 999
    .line 1000
    if-eqz v1, :cond_40d

    .line 1001
    .line 1002
    if-ne v5, v10, :cond_3f0

    .line 1003
    .line 1004
    float-to-int v1, v4

    .line 1005
    invoke-static {v11, v1}, Li2/t;->o(Landroid/widget/TextView;I)V

    .line 1006
    .line 1007
    .line 1008
    return-void

    .line 1009
    :cond_3f0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1010
    .line 1011
    const/16 v2, 0x22

    .line 1012
    .line 1013
    if-lt v1, v2, :cond_3fa

    .line 1014
    .line 1015
    invoke-static {v11, v5, v4}, Lj0/u;->h(Landroid/widget/TextView;IF)V

    .line 1016
    .line 1017
    .line 1018
    return-void

    .line 1019
    :cond_3fa
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    invoke-static {v11, v1}, Li2/t;->o(Landroid/widget/TextView;I)V

    .line 1036
    .line 1037
    .line 1038
    :cond_40d
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .registers 8

    .line 1
    new-instance v0, Lc5/h;

    .line 2
    .line 3
    sget-object v1, Lf/a;->w:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Lc5/h;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lm/s0;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_1d

    .line 22
    .line 23
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_30

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_30

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    .line 48
    .line 49
    :cond_30
    invoke-virtual {p0, p1, v0}, Lm/s0;->n(Landroid/content/Context;Lc5/h;)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x1a

    .line 53
    .line 54
    if-lt v1, p1, :cond_48

    .line 55
    .line 56
    const/16 p1, 0xd

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_48

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_48

    .line 69
    .line 70
    invoke-static {v3, p1}, Lm/q0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    :cond_48
    invoke-virtual {v0}, Lc5/h;->s()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 77
    .line 78
    if-eqz p1, :cond_54

    .line 79
    .line 80
    iget p2, p0, Lm/s0;->j:I

    .line 81
    .line 82
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    .line 84
    .line 85
    :cond_54
    return-void
.end method

.method public final i(IIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lm/s0;->i:Lm/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/b1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2d

    .line 8
    .line 9
    iget-object v1, v0, Lm/b1;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lm/b1;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lm/b1;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2d

    .line 42
    .line 43
    invoke-virtual {v0}, Lm/b1;->a()V

    .line 44
    .line 45
    .line 46
    :cond_2d
    return-void
.end method

.method public final j([II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lm/s0;->i:Lm/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/b1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_61

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_56

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_15

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_31

    .line 22
    :cond_15
    iget-object v4, v0, Lm/b1;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_1f
    if-ge v2, v1, :cond_31

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    :goto_31
    invoke-static {v3}, Lm/b1;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Lm/b1;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Lm/b1;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_3e

    .line 61
    .line 62
    goto :goto_58

    .line 63
    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_56
    iput-boolean v2, v0, Lm/b1;->g:Z

    .line 88
    .line 89
    :goto_58
    invoke-virtual {v0}, Lm/b1;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_61

    .line 94
    .line 95
    invoke-virtual {v0}, Lm/b1;->a()V

    .line 96
    .line 97
    .line 98
    :cond_61
    return-void
.end method

.method public final k(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lm/s0;->i:Lm/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/b1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_50

    .line 8
    .line 9
    if-eqz p1, :cond_3f

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_33

    .line 13
    .line 14
    iget-object p1, v0, Lm/b1;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Lm/b1;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lm/b1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_50

    .line 47
    .line 48
    invoke-virtual {v0}, Lm/b1;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Lm/b1;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Lm/b1;->d:F

    .line 70
    .line 71
    iput v1, v0, Lm/b1;->e:F

    .line 72
    .line 73
    iput v1, v0, Lm/b1;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Lm/b1;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Lm/b1;->b:Z

    .line 80
    .line 81
    :cond_50
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Lm/x2;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 13
    .line 14
    iput-object p1, v0, Lm/x2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz p1, :cond_13

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iput-boolean p1, v0, Lm/x2;->b:Z

    .line 22
    .line 23
    iput-object v0, p0, Lm/s0;->b:Lm/x2;

    .line 24
    .line 25
    iput-object v0, p0, Lm/s0;->c:Lm/x2;

    .line 26
    .line 27
    iput-object v0, p0, Lm/s0;->d:Lm/x2;

    .line 28
    .line 29
    iput-object v0, p0, Lm/s0;->e:Lm/x2;

    .line 30
    .line 31
    iput-object v0, p0, Lm/s0;->f:Lm/x2;

    .line 32
    .line 33
    iput-object v0, p0, Lm/s0;->g:Lm/x2;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Lm/x2;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lm/s0;->h:Lm/x2;

    .line 13
    .line 14
    iput-object p1, v0, Lm/x2;->d:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz p1, :cond_13

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    iput-boolean p1, v0, Lm/x2;->a:Z

    .line 22
    .line 23
    iput-object v0, p0, Lm/s0;->b:Lm/x2;

    .line 24
    .line 25
    iput-object v0, p0, Lm/s0;->c:Lm/x2;

    .line 26
    .line 27
    iput-object v0, p0, Lm/s0;->d:Lm/x2;

    .line 28
    .line 29
    iput-object v0, p0, Lm/s0;->e:Lm/x2;

    .line 30
    .line 31
    iput-object v0, p0, Lm/s0;->f:Lm/x2;

    .line 32
    .line 33
    iput-object v0, p0, Lm/s0;->g:Lm/x2;

    .line 34
    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;Lc5/h;)V
    .registers 14

    .line 1
    iget v0, p0, Lm/s0;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Lc5/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lm/s0;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/16 v4, 0x1c

    .line 18
    .line 19
    if-lt v0, v4, :cond_23

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Lm/s0;->k:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_23

    .line 30
    .line 31
    iget v5, p0, Lm/s0;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Lm/s0;->j:I

    .line 35
    .line 36
    :cond_23
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v6, :cond_5a

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_36

    .line 53
    .line 54
    goto :goto_5a

    .line 55
    :cond_36
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_d5

    .line 60
    .line 61
    iput-boolean v8, p0, Lm/s0;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v9, :cond_55

    .line 68
    .line 69
    if-eq p1, v2, :cond_50

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_4b

    .line 73
    .line 74
    goto/16 :goto_d5

    .line 75
    .line 76
    :cond_4b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_55
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 87
    .line 88
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5a
    :goto_5a
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 93
    .line 94
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_64

    .line 99
    .line 100
    move v5, v7

    .line 101
    :cond_64
    iget v6, p0, Lm/s0;->k:I

    .line 102
    .line 103
    iget v7, p0, Lm/s0;->j:I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_a8

    .line 110
    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    iget-object v10, p0, Lm/s0;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Le6/b;

    .line 119
    .line 120
    invoke-direct {v10, p0, v6, v7, p1}, Le6/b;-><init>(Lm/s0;IILjava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    :try_start_7a
    iget p1, p0, Lm/s0;->j:I

    .line 124
    .line 125
    invoke-virtual {p2, v5, p1, v10}, Lc5/h;->m(IILe6/b;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_9f

    .line 130
    .line 131
    if-lt v0, v4, :cond_9d

    .line 132
    .line 133
    iget p2, p0, Lm/s0;->k:I

    .line 134
    .line 135
    if-eq p2, v3, :cond_9d

    .line 136
    .line 137
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Lm/s0;->k:I

    .line 142
    .line 143
    iget v0, p0, Lm/s0;->j:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_95

    .line 147
    .line 148
    move v0, v9

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v0, v8

    .line 151
    :goto_96
    invoke-static {p1, p2, v0}, Lm/r0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 156
    .line 157
    goto :goto_9f

    .line 158
    :cond_9d
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 159
    .line 160
    :cond_9f
    :goto_9f
    iget-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    if-nez p1, :cond_a5

    .line 163
    .line 164
    move p1, v9

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move p1, v8

    .line 167
    :goto_a6
    iput-boolean p1, p0, Lm/s0;->m:Z
    :try_end_a8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7a .. :try_end_a8} :catch_a8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7a .. :try_end_a8} :catch_a8

    .line 168
    .line 169
    :catch_a8
    :cond_a8
    iget-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 170
    .line 171
    if-nez p1, :cond_d5

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_d5

    .line 178
    .line 179
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    if-lt p2, v4, :cond_cd

    .line 182
    .line 183
    iget p2, p0, Lm/s0;->k:I

    .line 184
    .line 185
    if-eq p2, v3, :cond_cd

    .line 186
    .line 187
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget p2, p0, Lm/s0;->k:I

    .line 192
    .line 193
    iget v0, p0, Lm/s0;->j:I

    .line 194
    .line 195
    and-int/2addr v0, v2

    .line 196
    if-eqz v0, :cond_c6

    .line 197
    .line 198
    move v8, v9

    .line 199
    :cond_c6
    invoke-static {p1, p2, v8}, Lm/r0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 204
    .line 205
    goto :goto_d5

    .line 206
    :cond_cd
    iget p2, p0, Lm/s0;->j:I

    .line 207
    .line 208
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 213
    .line 214
    :cond_d5
    :goto_d5
    return-void
.end method
