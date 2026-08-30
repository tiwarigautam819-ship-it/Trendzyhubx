###### Class g.k (g.k)
.class public final Lg/k;
.super Lb/r;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lg/n;


# instance fields
.field public d:Lg/f0;

.field public final e:Lg/g0;

.field public final f:Lg/i;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .registers 7

    .line 1
    invoke-static {p1, p2}, Lg/k;->f(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f04007e

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_19

    .line 10
    .line 11
    new-instance v2, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v2, p2

    .line 27
    :goto_1a
    invoke-direct {p0, p1, v2}, Lb/r;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lg/g0;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lg/g0;-><init>(Lg/k;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lg/k;->e:Lg/g0;

    .line 36
    .line 37
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez p2, :cond_38

    .line 42
    .line 43
    new-instance p2, Landroid/util/TypedValue;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    .line 54
    .line 55
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 56
    .line 57
    :cond_38
    move-object p1, v2

    .line 58
    check-cast p1, Lg/f0;

    .line 59
    .line 60
    iput p2, p1, Lg/f0;->b0:I

    .line 61
    .line 62
    invoke-virtual {v2}, Lg/s;->e()V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lg/i;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, p2, p0, v0}, Lg/i;-><init>(Landroid/content/Context;Lg/k;Landroid/view/Window;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lg/k;->f:Lg/i;

    .line 79
    .line 80
    return-void
.end method

.method public static f(Landroid/content/Context;I)I
    .registers 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_8

    .line 7
    .line 8
    return p1

    .line 9
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f040027

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg/f0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lg/f0;->x()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v2, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lg/f0;->m:Lg/a0;

    .line 25
    .line 26
    iget-object p2, v0, Lg/f0;->l:Landroid/view/Window;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lg/a0;->a(Landroid/view/Window$Callback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c()Lg/s;
    .registers 4

    .line 1
    iget-object v0, p0, Lg/k;->d:Lg/f0;

    .line 2
    .line 3
    if-nez v0, :cond_15

    .line 4
    .line 5
    sget-object v0, Lg/s;->a:Lg/q;

    .line 6
    .line 7
    new-instance v0, Lg/f0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Lg/f0;-><init>(Landroid/content/Context;Landroid/view/Window;Lg/n;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lg/k;->d:Lg/f0;

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Lg/k;->d:Lg/f0;

    .line 23
    .line 24
    return-object v0
.end method

.method public final d()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroidx/lifecycle/j0;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p0}, Lf4/f;->d(Landroid/view/View;Le1/g;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p0}, Li2/t;->l(Landroid/view/View;Lb/j0;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final dismiss()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lg/s;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lg/k;->e:Lg/g0;

    .line 10
    .line 11
    invoke-static {v1, v0, p0, p1}, Ll2/e;->j(Lj0/i;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg/s;->a()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lb/r;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lg/s;->e()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg/f0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lg/f0;->x()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lg/f0;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lg/s;->m(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final invalidateOptionsMenu()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg/s;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 19

    .line 1
    invoke-virtual/range {p0 .. p1}, Lg/k;->e(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Lg/k;->f:Lg/i;

    .line 7
    .line 8
    iget v2, v1, Lg/i;->q:I

    .line 9
    .line 10
    iget-object v3, v1, Lg/i;->b:Lg/k;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lg/k;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lg/i;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, v1, Lg/i;->c:Landroid/view/Window;

    .line 18
    .line 19
    const v4, 0x7f0900a9

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const v5, 0x7f0900ef

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const v7, 0x7f090068

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const v9, 0x7f090054

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const v11, 0x7f09006c

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/view/ViewGroup;

    .line 55
    .line 56
    const/high16 v11, 0x20000

    .line 57
    .line 58
    invoke-virtual {v3, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 59
    .line 60
    .line 61
    const/16 v11, 0x8

    .line 62
    .line 63
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {v5, v6}, Lg/i;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v7, v8}, Lg/i;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v9, v10}, Lg/i;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const v8, 0x7f0900b7

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 98
    .line 99
    iput-object v8, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v8, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 108
    .line 109
    .line 110
    const v8, 0x102000b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v8, v1, Lg/i;->m:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v10, -0x1

    .line 122
    if-nez v8, :cond_7c

    .line 123
    .line 124
    goto :goto_a9

    .line 125
    :cond_7c
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v8, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 129
    .line 130
    iget-object v12, v1, Lg/i;->m:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v8, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 136
    .line 137
    if-eqz v8, :cond_a6

    .line 138
    .line 139
    iget-object v8, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 140
    .line 141
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/view/ViewGroup;

    .line 146
    .line 147
    iget-object v12, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 148
    .line 149
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 154
    .line 155
    .line 156
    iget-object v13, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 157
    .line 158
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v14, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    goto :goto_a9

    .line 167
    :cond_a6
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :goto_a9
    const v8, 0x1020019

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Landroid/widget/Button;

    .line 178
    .line 179
    iput-object v8, v1, Lg/i;->f:Landroid/widget/Button;

    .line 180
    .line 181
    iget-object v12, v1, Lg/i;->w:Lg/d;

    .line 182
    .line 183
    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    const/4 v14, 0x1

    .line 192
    if-eqz v13, :cond_c8

    .line 193
    .line 194
    iget-object v13, v1, Lg/i;->f:Landroid/widget/Button;

    .line 195
    .line 196
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    move v13, v9

    .line 200
    goto :goto_d3

    .line 201
    :cond_c8
    iget-object v13, v1, Lg/i;->f:Landroid/widget/Button;

    .line 202
    .line 203
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v13, v1, Lg/i;->f:Landroid/widget/Button;

    .line 207
    .line 208
    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    move v13, v14

    .line 212
    :goto_d3
    const v15, 0x102001a

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    check-cast v15, Landroid/widget/Button;

    .line 220
    .line 221
    iput-object v15, v1, Lg/i;->g:Landroid/widget/Button;

    .line 222
    .line 223
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-eqz v15, :cond_ed

    .line 231
    .line 232
    iget-object v15, v1, Lg/i;->g:Landroid/widget/Button;

    .line 233
    .line 234
    invoke-virtual {v15, v11}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_f9

    .line 238
    :cond_ed
    iget-object v15, v1, Lg/i;->g:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    iget-object v15, v1, Lg/i;->g:Landroid/widget/Button;

    .line 244
    .line 245
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    or-int/lit8 v13, v13, 0x2

    .line 249
    .line 250
    :goto_f9
    const v15, 0x102001b

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    check-cast v15, Landroid/widget/Button;

    .line 258
    .line 259
    iput-object v15, v1, Lg/i;->h:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-eqz v12, :cond_113

    .line 269
    .line 270
    iget-object v12, v1, Lg/i;->h:Landroid/widget/Button;

    .line 271
    .line 272
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_11f

    .line 276
    :cond_113
    iget-object v12, v1, Lg/i;->h:Landroid/widget/Button;

    .line 277
    .line 278
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    iget-object v12, v1, Lg/i;->h:Landroid/widget/Button;

    .line 282
    .line 283
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    or-int/lit8 v13, v13, 0x4

    .line 287
    .line 288
    :goto_11f
    new-instance v12, Landroid/util/TypedValue;

    .line 289
    .line 290
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const v15, 0x7f040025

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v15, v12, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    .line 302
    .line 303
    iget v2, v12, Landroid/util/TypedValue;->data:I

    .line 304
    .line 305
    const/4 v12, 0x2

    .line 306
    if-eqz v2, :cond_16d

    .line 307
    .line 308
    const/high16 v2, 0x3f000000    # 0.5f

    .line 309
    .line 310
    if-ne v13, v14, :cond_149

    .line 311
    .line 312
    iget-object v15, v1, Lg/i;->f:Landroid/widget/Button;

    .line 313
    .line 314
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 315
    .line 316
    .line 317
    move-result-object v16

    .line 318
    move-object/from16 v8, v16

    .line 319
    .line 320
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    .line 322
    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 323
    .line 324
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 325
    .line 326
    invoke-virtual {v15, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    .line 328
    .line 329
    goto :goto_16d

    .line 330
    :cond_149
    if-ne v13, v12, :cond_15b

    .line 331
    .line 332
    iget-object v8, v1, Lg/i;->g:Landroid/widget/Button;

    .line 333
    .line 334
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 335
    .line 336
    .line 337
    move-result-object v15

    .line 338
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    .line 340
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 341
    .line 342
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 343
    .line 344
    invoke-virtual {v8, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    goto :goto_16d

    .line 348
    :cond_15b
    const/4 v8, 0x4

    .line 349
    if-ne v13, v8, :cond_16d

    .line 350
    .line 351
    iget-object v8, v1, Lg/i;->h:Landroid/widget/Button;

    .line 352
    .line 353
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 358
    .line 359
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 360
    .line 361
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 362
    .line 363
    invoke-virtual {v8, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    :cond_16d
    :goto_16d
    if-eqz v13, :cond_170

    .line 367
    .line 368
    goto :goto_173

    .line 369
    :cond_170
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    :goto_173
    iget-object v2, v1, Lg/i;->n:Landroid/view/View;

    .line 373
    .line 374
    const v8, 0x7f0900ed

    .line 375
    .line 376
    .line 377
    if-eqz v2, :cond_18d

    .line 378
    .line 379
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 380
    .line 381
    const/4 v13, -0x2

    .line 382
    invoke-direct {v2, v10, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    iget-object v13, v1, Lg/i;->n:Landroid/view/View;

    .line 386
    .line 387
    invoke-virtual {v5, v13, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    goto :goto_1f0

    .line 398
    :cond_18d
    const v2, 0x1020006

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    check-cast v2, Landroid/widget/ImageView;

    .line 406
    .line 407
    iput-object v2, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 408
    .line 409
    iget-object v2, v1, Lg/i;->d:Ljava/lang/CharSequence;

    .line 410
    .line 411
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_1e1

    .line 416
    .line 417
    iget-boolean v2, v1, Lg/i;->u:Z

    .line 418
    .line 419
    if-eqz v2, :cond_1e1

    .line 420
    .line 421
    const v2, 0x7f09003e

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    check-cast v2, Landroid/widget/TextView;

    .line 429
    .line 430
    iput-object v2, v1, Lg/i;->l:Landroid/widget/TextView;

    .line 431
    .line 432
    iget-object v8, v1, Lg/i;->d:Ljava/lang/CharSequence;

    .line 433
    .line 434
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v1, Lg/i;->j:Landroid/graphics/drawable/Drawable;

    .line 438
    .line 439
    if-eqz v2, :cond_1be

    .line 440
    .line 441
    iget-object v8, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 442
    .line 443
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    .line 445
    .line 446
    goto :goto_1f0

    .line 447
    :cond_1be
    iget-object v2, v1, Lg/i;->l:Landroid/widget/TextView;

    .line 448
    .line 449
    iget-object v8, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 450
    .line 451
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    iget-object v13, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 456
    .line 457
    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    .line 458
    .line 459
    .line 460
    move-result v13

    .line 461
    iget-object v15, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 462
    .line 463
    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    iget-object v12, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 468
    .line 469
    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    .line 470
    .line 471
    .line 472
    move-result v12

    .line 473
    invoke-virtual {v2, v8, v13, v15, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 474
    .line 475
    .line 476
    iget-object v2, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 477
    .line 478
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    goto :goto_1f0

    .line 482
    :cond_1e1
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    iget-object v2, v1, Lg/i;->k:Landroid/widget/ImageView;

    .line 490
    .line 491
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    :goto_1f0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-eq v2, v11, :cond_1f8

    .line 502
    .line 503
    move v2, v14

    .line 504
    goto :goto_1f9

    .line 505
    :cond_1f8
    move v2, v9

    .line 506
    :goto_1f9
    if-eqz v5, :cond_203

    .line 507
    .line 508
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eq v4, v11, :cond_203

    .line 513
    .line 514
    move v4, v14

    .line 515
    goto :goto_204

    .line 516
    :cond_203
    move v4, v9

    .line 517
    :goto_204
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eq v7, v11, :cond_20c

    .line 522
    .line 523
    move v7, v14

    .line 524
    goto :goto_20d

    .line 525
    :cond_20c
    move v7, v9

    .line 526
    :goto_20d
    if-nez v7, :cond_21b

    .line 527
    .line 528
    const v8, 0x7f0900e5

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    if-eqz v8, :cond_21b

    .line 536
    .line 537
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    :cond_21b
    if-eqz v4, :cond_237

    .line 541
    .line 542
    iget-object v8, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 543
    .line 544
    if-eqz v8, :cond_224

    .line 545
    .line 546
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 547
    .line 548
    .line 549
    :cond_224
    iget-object v8, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 550
    .line 551
    if-eqz v8, :cond_230

    .line 552
    .line 553
    const v8, 0x7f0900ec

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    goto :goto_231

    .line 561
    :cond_230
    const/4 v8, 0x0

    .line 562
    :goto_231
    if-eqz v8, :cond_243

    .line 563
    .line 564
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    goto :goto_243

    .line 568
    :cond_237
    const v5, 0x7f0900e6

    .line 569
    .line 570
    .line 571
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    if-eqz v5, :cond_243

    .line 576
    .line 577
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 578
    .line 579
    .line 580
    :cond_243
    :goto_243
    iget-object v5, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 581
    .line 582
    if-eqz v5, :cond_26b

    .line 583
    .line 584
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    if-eqz v7, :cond_24e

    .line 588
    .line 589
    if-nez v4, :cond_26b

    .line 590
    .line 591
    :cond_24e
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    if-eqz v4, :cond_259

    .line 596
    .line 597
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    goto :goto_25b

    .line 602
    :cond_259
    iget v11, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 603
    .line 604
    :goto_25b
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 605
    .line 606
    .line 607
    move-result v12

    .line 608
    if-eqz v7, :cond_266

    .line 609
    .line 610
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 611
    .line 612
    .line 613
    move-result v13

    .line 614
    goto :goto_268

    .line 615
    :cond_266
    iget v13, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 616
    .line 617
    :goto_268
    invoke-virtual {v5, v8, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 618
    .line 619
    .line 620
    :cond_26b
    if-nez v2, :cond_298

    .line 621
    .line 622
    iget-object v2, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 623
    .line 624
    if-eqz v2, :cond_272

    .line 625
    .line 626
    goto :goto_274

    .line 627
    :cond_272
    iget-object v2, v1, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 628
    .line 629
    :goto_274
    if-eqz v2, :cond_298

    .line 630
    .line 631
    if-eqz v7, :cond_279

    .line 632
    .line 633
    const/4 v9, 0x2

    .line 634
    :cond_279
    or-int/2addr v4, v9

    .line 635
    const v5, 0x7f0900b6

    .line 636
    .line 637
    .line 638
    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    const v7, 0x7f0900b5

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    sget-object v7, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 650
    .line 651
    const/4 v7, 0x3

    .line 652
    invoke-static {v2, v4, v7}, Lj0/e0;->b(Landroid/view/View;II)V

    .line 653
    .line 654
    .line 655
    if-eqz v5, :cond_293

    .line 656
    .line 657
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 658
    .line 659
    .line 660
    :cond_293
    if-eqz v3, :cond_298

    .line 661
    .line 662
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 663
    .line 664
    .line 665
    :cond_298
    iget-object v2, v1, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 666
    .line 667
    if-eqz v2, :cond_2ad

    .line 668
    .line 669
    iget-object v3, v1, Lg/i;->o:Landroid/widget/ListAdapter;

    .line 670
    .line 671
    if-eqz v3, :cond_2ad

    .line 672
    .line 673
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 674
    .line 675
    .line 676
    iget v1, v1, Lg/i;->p:I

    .line 677
    .line 678
    if-le v1, v10, :cond_2ad

    .line 679
    .line 680
    invoke-virtual {v2, v1, v14}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 684
    .line 685
    .line 686
    :cond_2ad
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/k;->f:Lg/i;

    .line 2
    .line 3
    iget-object v0, v0, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/k;->f:Lg/i;

    .line 2
    .line 3
    iget-object v0, v0, Lg/i;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lb/r;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lg/f0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg/f0;->C()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lg/f0;->w:Lg/b;

    .line 14
    .line 15
    if-eqz v0, :cond_14

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lg/b;->m(Z)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public final onSupportActionModeFinished(Lk/b;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onSupportActionModeStarted(Lk/b;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onWindowStartingSupportActionMode(Lk/a;)Lk/b;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final setContentView(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lg/k;->d()V

    .line 2
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/s;->j(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 3

    .line 3
    invoke-virtual {p0}, Lg/k;->d()V

    .line 4
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/s;->k(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lg/k;->d()V

    .line 6
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/s;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lg/k;->c()Lg/s;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/s;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1}, Lg/k;->g(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lg/k;->f:Lg/i;

    iput-object p1, v0, Lg/i;->d:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Lg/i;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

###### Class g.g0 (g.g0)
.class public final synthetic Lg/g0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/i;


# instance fields
.field public final synthetic a:Lg/k;


# direct methods
.method public synthetic constructor <init>(Lg/k;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg/g0;->a:Lg/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/g0;->a:Lg/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg/k;->h(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
