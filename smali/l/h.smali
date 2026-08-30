###### Class l.h (l.h)
.class public final Ll/h;
.super Ll/v;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Ll/y;

.field public F:Landroid/view/ViewTreeObserver;

.field public G:Landroid/widget/PopupWindow$OnDismissListener;

.field public H:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ll/e;

.field public final j:Landroidx/fragment/app/f1;

.field public final k:Lk1/h;

.field public l:I

.field public m:I

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll/h;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ll/e;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1, p0}, Ll/e;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ll/h;->i:Ll/e;

    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/f1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/f1;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Ll/h;->j:Landroidx/fragment/app/f1;

    .line 33
    .line 34
    new-instance v0, Lk1/h;

    .line 35
    .line 36
    const/16 v1, 0xf

    .line 37
    .line 38
    invoke-direct {v0, v1, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Ll/h;->k:Lk1/h;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Ll/h;->l:I

    .line 45
    .line 46
    iput v0, p0, Ll/h;->m:I

    .line 47
    .line 48
    iput-object p1, p0, Ll/h;->b:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Ll/h;->v:Landroid/view/View;

    .line 51
    .line 52
    iput p3, p0, Ll/h;->d:I

    .line 53
    .line 54
    iput-boolean p4, p0, Ll/h;->e:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Ll/h;->C:Z

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/4 p3, 0x1

    .line 63
    if-ne p2, p3, :cond_41

    .line 64
    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v0, p3

    .line 67
    :goto_42
    iput v0, p0, Ll/h;->x:I

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 78
    .line 79
    div-int/lit8 p2, p2, 0x2

    .line 80
    .line 81
    const p3, 0x7f070017

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Ll/h;->c:I

    .line 93
    .line 94
    new-instance p1, Landroid/os/Handler;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Ll/h;->f:Landroid/os/Handler;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_1b

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ll/g;

    .line 15
    .line 16
    iget-object v0, v0, Ll/g;->a:Lm/c2;

    .line 17
    .line 18
    iget-object v0, v0, Lm/x1;->G:Lm/v;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1b

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_1b
    return v2
.end method

.method public final b(Ll/n;Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_18

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ll/g;

    .line 16
    .line 17
    iget-object v4, v4, Ll/g;->b:Ll/n;

    .line 18
    .line 19
    if-ne p1, v4, :cond_15

    .line 20
    .line 21
    goto :goto_19

    .line 22
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_8

    .line 25
    :cond_18
    const/4 v3, -0x1

    .line 26
    :goto_19
    if-gez v3, :cond_1d

    .line 27
    .line 28
    goto/16 :goto_a7

    .line 29
    .line 30
    :cond_1d
    add-int/lit8 v1, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v1, v4, :cond_30

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ll/g;

    .line 43
    .line 44
    iget-object v1, v1, Ll/g;->b:Ll/n;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ll/n;->c(Z)V

    .line 47
    .line 48
    .line 49
    :cond_30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ll/g;

    .line 54
    .line 55
    iget-object v3, v1, Ll/g;->b:Ll/n;

    .line 56
    .line 57
    iget-object v1, v1, Ll/g;->a:Lm/c2;

    .line 58
    .line 59
    iget-object v4, v1, Lm/x1;->G:Lm/v;

    .line 60
    .line 61
    invoke-virtual {v3, p0}, Ll/n;->r(Ll/z;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v3, p0, Ll/h;->H:Z

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v3, :cond_4a

    .line 68
    .line 69
    invoke-static {v4, v5}, Lm/z1;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    invoke-virtual {v1}, Lm/x1;->dismiss()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v3, 0x1

    .line 83
    if-lez v1, :cond_61

    .line 84
    .line 85
    add-int/lit8 v4, v1, -0x1

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ll/g;

    .line 92
    .line 93
    iget v4, v4, Ll/g;->c:I

    .line 94
    .line 95
    iput v4, p0, Ll/h;->x:I

    .line 96
    .line 97
    goto :goto_6e

    .line 98
    :cond_61
    iget-object v4, p0, Ll/h;->v:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ne v4, v3, :cond_6b

    .line 105
    .line 106
    move v4, v2

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v4, v3

    .line 109
    :goto_6c
    iput v4, p0, Ll/h;->x:I

    .line 110
    .line 111
    :goto_6e
    if-nez v1, :cond_9a

    .line 112
    .line 113
    invoke-virtual {p0}, Ll/h;->dismiss()V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Ll/h;->E:Ll/y;

    .line 117
    .line 118
    if-eqz p2, :cond_7a

    .line 119
    .line 120
    invoke-interface {p2, p1, v3}, Ll/y;->b(Ll/n;Z)V

    .line 121
    .line 122
    .line 123
    :cond_7a
    iget-object p1, p0, Ll/h;->F:Landroid/view/ViewTreeObserver;

    .line 124
    .line 125
    if-eqz p1, :cond_8d

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_8b

    .line 132
    .line 133
    iget-object p1, p0, Ll/h;->F:Landroid/view/ViewTreeObserver;

    .line 134
    .line 135
    iget-object p2, p0, Ll/h;->i:Ll/e;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    iput-object v5, p0, Ll/h;->F:Landroid/view/ViewTreeObserver;

    .line 141
    .line 142
    :cond_8d
    iget-object p1, p0, Ll/h;->w:Landroid/view/View;

    .line 143
    .line 144
    iget-object p2, p0, Ll/h;->j:Landroidx/fragment/app/f1;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Ll/h;->G:Landroid/widget/PopupWindow$OnDismissListener;

    .line 150
    .line 151
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_9a
    if-eqz p2, :cond_a7

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ll/g;

    .line 162
    .line 163
    iget-object p1, p1, Ll/g;->b:Ll/n;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Ll/n;->c(Z)V

    .line 166
    .line 167
    .line 168
    :cond_a7
    :goto_a7
    return-void
.end method

.method public final c()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Ll/h;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_3f

    .line 8
    :cond_7
    iget-object v0, p0, Ll/h;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_1d

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, Ll/n;

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Ll/h;->u(Ll/n;)V

    .line 27
    .line 28
    .line 29
    goto :goto_f

    .line 30
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Ll/h;->v:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Ll/h;->w:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_3f

    .line 38
    .line 39
    iget-object v1, p0, Ll/h;->F:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2b

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Ll/h;->F:Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    if-eqz v2, :cond_38

    .line 51
    .line 52
    iget-object v1, p0, Ll/h;->i:Ll/e;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    iget-object v0, p0, Ll/h;->w:Landroid/view/View;

    .line 58
    .line 59
    iget-object v1, p0, Ll/h;->j:Landroidx/fragment/app/f1;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public final d()V
    .registers 6

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_2c

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Ll/g;

    .line 17
    .line 18
    iget-object v3, v3, Ll/g;->a:Lm/c2;

    .line 19
    .line 20
    iget-object v3, v3, Lm/x1;->c:Lm/m1;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    .line 27
    .line 28
    if-eqz v4, :cond_26

    .line 29
    .line 30
    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ll/k;

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :cond_26
    check-cast v3, Ll/k;

    .line 40
    .line 41
    :goto_28
    invoke-virtual {v3}, Ll/k;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_7

    .line 45
    :cond_2c
    return-void
.end method

.method public final dismiss()V
    .registers 5

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_28

    .line 8
    .line 9
    new-array v2, v1, [Ll/g;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Ll/g;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_12
    if-ltz v1, :cond_28

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Ll/g;->a:Lm/c2;

    .line 24
    .line 25
    iget-object v3, v3, Lm/x1;->G:Lm/v;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_25

    .line 32
    .line 33
    iget-object v2, v2, Ll/g;->a:Lm/c2;

    .line 34
    .line 35
    invoke-virtual {v2}, Lm/x1;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_12

    .line 41
    :cond_28
    return-void
.end method

.method public final e()Lm/m1;
    .registers 3

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ll/g;

    .line 22
    .line 23
    iget-object v0, v0, Ll/g;->a:Lm/c2;

    .line 24
    .line 25
    iget-object v0, v0, Lm/x1;->c:Lm/m1;

    .line 26
    .line 27
    return-object v0
.end method

.method public final f(Ll/y;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ll/h;->E:Ll/y;

    .line 2
    .line 3
    return-void
.end method

.method public final i()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final j(Ll/f0;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :cond_8
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_1f

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    check-cast v5, Ll/g;

    .line 19
    .line 20
    iget-object v6, v5, Ll/g;->b:Ll/n;

    .line 21
    .line 22
    if-ne p1, v6, :cond_8

    .line 23
    .line 24
    iget-object p1, v5, Ll/g;->a:Lm/c2;

    .line 25
    .line 26
    iget-object p1, p1, Lm/x1;->c:Lm/m1;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v4

    .line 32
    :cond_1f
    invoke-virtual {p1}, Ll/n;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_30

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ll/h;->l(Ll/n;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ll/h;->E:Ll/y;

    .line 42
    .line 43
    if-eqz v0, :cond_2f

    .line 44
    .line 45
    invoke-interface {v0, p1}, Ll/y;->f(Ll/n;)Z

    .line 46
    .line 47
    .line 48
    :cond_2f
    return v4

    .line 49
    :cond_30
    return v2
.end method

.method public final l(Ll/n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ll/h;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_f

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ll/h;->u(Ll/n;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Ll/h;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll/h;->v:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_12

    .line 4
    .line 5
    iput-object p1, p0, Ll/h;->v:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Ll/h;->l:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Ll/h;->m:I

    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public final o(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Ll/h;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .registers 7

    .line 1
    iget-object v0, p0, Ll/h;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_1e

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ll/g;

    .line 16
    .line 17
    iget-object v5, v4, Ll/g;->a:Lm/c2;

    .line 18
    .line 19
    iget-object v5, v5, Lm/x1;->G:Lm/v;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1b

    .line 26
    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    const/4 v4, 0x0

    .line 32
    :goto_1f
    if-eqz v4, :cond_26

    .line 33
    .line 34
    iget-object v0, v4, Ll/g;->b:Ll/n;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ll/n;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_f

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_f

    .line 11
    .line 12
    invoke-virtual {p0}, Ll/h;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(I)V
    .registers 3

    .line 1
    iget v0, p0, Ll/h;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_12

    .line 4
    .line 5
    iput p1, p0, Ll/h;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Ll/h;->v:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Ll/h;->m:I

    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public final q(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/h;->y:Z

    .line 3
    .line 4
    iput p1, p0, Ll/h;->A:I

    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ll/h;->G:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Ll/h;->D:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/h;->z:Z

    .line 3
    .line 4
    iput p1, p0, Ll/h;->B:I

    .line 5
    .line 6
    return-void
.end method

.method public final u(Ll/n;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ll/h;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ll/k;

    .line 12
    .line 13
    iget-boolean v5, v0, Ll/h;->e:Z

    .line 14
    .line 15
    const v6, 0x7f0c000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Ll/k;-><init>(Ll/n;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ll/h;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    if-nez v5, :cond_23

    .line 28
    .line 29
    iget-boolean v5, v0, Ll/h;->C:Z

    .line 30
    .line 31
    if-eqz v5, :cond_23

    .line 32
    .line 33
    iput-boolean v6, v4, Ll/k;->c:Z

    .line 34
    .line 35
    goto :goto_4a

    .line 36
    :cond_23
    invoke-virtual {v0}, Ll/h;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_4a

    .line 41
    .line 42
    iget-object v5, v1, Ll/n;->f:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v8, v7

    .line 49
    :goto_30
    if-ge v8, v5, :cond_47

    .line 50
    .line 51
    invoke-virtual {v1, v8}, Ll/n;->getItem(I)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_44

    .line 60
    .line 61
    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    if-eqz v9, :cond_44

    .line 66
    .line 67
    move v5, v6

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_30

    .line 72
    :cond_47
    move v5, v7

    .line 73
    :goto_48
    iput-boolean v5, v4, Ll/k;->c:Z

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    iget v5, v0, Ll/h;->c:I

    .line 76
    .line 77
    invoke-static {v4, v2, v5}, Ll/v;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    new-instance v8, Lm/c2;

    .line 82
    .line 83
    iget v9, v0, Ll/h;->d:I

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-direct {v8, v2, v10, v9, v7}, Lm/x1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Ll/h;->k:Lk1/h;

    .line 90
    .line 91
    iput-object v2, v8, Lm/c2;->K:Lk1/h;

    .line 92
    .line 93
    iput-object v0, v8, Lm/x1;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 94
    .line 95
    iget-object v2, v8, Lm/x1;->G:Lm/v;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v9, v0, Ll/h;->v:Landroid/view/View;

    .line 101
    .line 102
    iput-object v9, v8, Lm/x1;->w:Landroid/view/View;

    .line 103
    .line 104
    iget v9, v0, Ll/h;->m:I

    .line 105
    .line 106
    iput v9, v8, Lm/x1;->l:I

    .line 107
    .line 108
    iput-boolean v6, v8, Lm/x1;->F:Z

    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 111
    .line 112
    .line 113
    const/4 v9, 0x2

    .line 114
    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v4}, Lm/x1;->p(Landroid/widget/ListAdapter;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v5}, Lm/x1;->r(I)V

    .line 121
    .line 122
    .line 123
    iget v4, v0, Ll/h;->m:I

    .line 124
    .line 125
    iput v4, v8, Lm/x1;->l:I

    .line 126
    .line 127
    iget-object v4, v0, Ll/h;->h:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    if-lez v11, :cond_102

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    sub-int/2addr v11, v6

    .line 140
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    check-cast v11, Ll/g;

    .line 145
    .line 146
    iget-object v12, v11, Ll/g;->b:Ll/n;

    .line 147
    .line 148
    iget-object v13, v12, Ll/n;->f:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    move v14, v7

    .line 155
    :goto_9a
    if-ge v14, v13, :cond_b1

    .line 156
    .line 157
    invoke-virtual {v12, v14}, Ll/n;->getItem(I)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 162
    .line 163
    .line 164
    move-result v16

    .line 165
    if-eqz v16, :cond_ad

    .line 166
    .line 167
    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-ne v1, v9, :cond_ad

    .line 172
    .line 173
    goto :goto_b2

    .line 174
    :cond_ad
    add-int/lit8 v14, v14, 0x1

    .line 175
    .line 176
    const/4 v9, 0x2

    .line 177
    goto :goto_9a

    .line 178
    :cond_b1
    move-object v15, v10

    .line 179
    :goto_b2
    if-nez v15, :cond_b8

    .line 180
    .line 181
    move/from16 v17, v7

    .line 182
    .line 183
    move-object v6, v10

    .line 184
    goto :goto_106

    .line 185
    :cond_b8
    iget-object v9, v11, Ll/g;->a:Lm/c2;

    .line 186
    .line 187
    iget-object v9, v9, Lm/x1;->c:Lm/m1;

    .line 188
    .line 189
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 194
    .line 195
    if-eqz v13, :cond_d1

    .line 196
    .line 197
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 198
    .line 199
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    check-cast v12, Ll/k;

    .line 208
    .line 209
    goto :goto_d4

    .line 210
    :cond_d1
    check-cast v12, Ll/k;

    .line 211
    .line 212
    move v13, v7

    .line 213
    :goto_d4
    invoke-virtual {v12}, Ll/k;->getCount()I

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    move v10, v7

    .line 218
    move/from16 v17, v10

    .line 219
    .line 220
    :goto_db
    const/4 v7, -0x1

    .line 221
    if-ge v10, v14, :cond_e9

    .line 222
    .line 223
    invoke-virtual {v12, v10}, Ll/k;->b(I)Ll/p;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    if-ne v15, v6, :cond_e5

    .line 228
    .line 229
    goto :goto_ea

    .line 230
    :cond_e5
    add-int/lit8 v10, v10, 0x1

    .line 231
    .line 232
    const/4 v6, 0x1

    .line 233
    goto :goto_db

    .line 234
    :cond_e9
    move v10, v7

    .line 235
    :goto_ea
    if-ne v10, v7, :cond_ee

    .line 236
    .line 237
    :cond_ec
    :goto_ec
    const/4 v6, 0x0

    .line 238
    goto :goto_106

    .line 239
    :cond_ee
    add-int/2addr v10, v13

    .line 240
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    sub-int/2addr v10, v6

    .line 245
    if-ltz v10, :cond_ec

    .line 246
    .line 247
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-lt v10, v6, :cond_fd

    .line 252
    .line 253
    goto :goto_ec

    .line 254
    :cond_fd
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    goto :goto_106

    .line 259
    :cond_102
    move/from16 v17, v7

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    const/4 v11, 0x0

    .line 263
    :goto_106
    if-eqz v6, :cond_1df

    .line 264
    .line 265
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 266
    .line 267
    const/16 v9, 0x1c

    .line 268
    .line 269
    if-gt v7, v9, :cond_126

    .line 270
    .line 271
    sget-object v7, Lm/c2;->L:Ljava/lang/reflect/Method;

    .line 272
    .line 273
    if-eqz v7, :cond_11c

    .line 274
    .line 275
    const/4 v9, 0x1

    .line 276
    :try_start_113
    new-array v10, v9, [Ljava/lang/Object;

    .line 277
    .line 278
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 279
    .line 280
    aput-object v9, v10, v17

    .line 281
    .line 282
    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_11c} :catch_11e

    .line 283
    .line 284
    .line 285
    :cond_11c
    :goto_11c
    const/4 v7, 0x0

    .line 286
    goto :goto_12c

    .line 287
    :catch_11e
    const-string v7, "MenuPopupWindow"

    .line 288
    .line 289
    const-string v9, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 290
    .line 291
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_11c

    .line 295
    :cond_126
    move/from16 v7, v17

    .line 296
    .line 297
    invoke-static {v2, v7}, Lm/a2;->a(Landroid/widget/PopupWindow;Z)V

    .line 298
    .line 299
    .line 300
    goto :goto_11c

    .line 301
    :goto_12c
    invoke-static {v2, v7}, Lm/z1;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    const/16 v18, 0x1

    .line 309
    .line 310
    add-int/lit8 v2, v2, -0x1

    .line 311
    .line 312
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Ll/g;

    .line 317
    .line 318
    iget-object v2, v2, Ll/g;->a:Lm/c2;

    .line 319
    .line 320
    iget-object v2, v2, Lm/x1;->c:Lm/m1;

    .line 321
    .line 322
    const/4 v7, 0x2

    .line 323
    new-array v9, v7, [I

    .line 324
    .line 325
    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 326
    .line 327
    .line 328
    new-instance v7, Landroid/graphics/Rect;

    .line 329
    .line 330
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v10, v0, Ll/h;->w:Landroid/view/View;

    .line 334
    .line 335
    invoke-virtual {v10, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 336
    .line 337
    .line 338
    iget v10, v0, Ll/h;->x:I

    .line 339
    .line 340
    const/4 v12, 0x1

    .line 341
    if-ne v10, v12, :cond_16a

    .line 342
    .line 343
    const/16 v17, 0x0

    .line 344
    .line 345
    aget v9, v9, v17

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    add-int/2addr v2, v9

    .line 352
    add-int/2addr v2, v5

    .line 353
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 354
    .line 355
    if-le v2, v7, :cond_168

    .line 356
    .line 357
    move/from16 v2, v17

    .line 358
    .line 359
    :goto_166
    const/4 v9, 0x1

    .line 360
    goto :goto_174

    .line 361
    :cond_168
    :goto_168
    const/4 v2, 0x1

    .line 362
    goto :goto_166

    .line 363
    :cond_16a
    const/16 v17, 0x0

    .line 364
    .line 365
    aget v2, v9, v17

    .line 366
    .line 367
    sub-int/2addr v2, v5

    .line 368
    if-gez v2, :cond_172

    .line 369
    .line 370
    goto :goto_168

    .line 371
    :cond_172
    const/4 v2, 0x0

    .line 372
    goto :goto_166

    .line 373
    :goto_174
    if-ne v2, v9, :cond_178

    .line 374
    .line 375
    const/4 v9, 0x1

    .line 376
    goto :goto_179

    .line 377
    :cond_178
    const/4 v9, 0x0

    .line 378
    :goto_179
    iput v2, v0, Ll/h;->x:I

    .line 379
    .line 380
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 381
    .line 382
    const/16 v7, 0x1a

    .line 383
    .line 384
    const/4 v10, 0x5

    .line 385
    if-lt v2, v7, :cond_187

    .line 386
    .line 387
    iput-object v6, v8, Lm/x1;->w:Landroid/view/View;

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    const/4 v7, 0x0

    .line 391
    goto :goto_1be

    .line 392
    :cond_187
    const/4 v7, 0x2

    .line 393
    new-array v2, v7, [I

    .line 394
    .line 395
    iget-object v12, v0, Ll/h;->v:Landroid/view/View;

    .line 396
    .line 397
    invoke-virtual {v12, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 398
    .line 399
    .line 400
    new-array v7, v7, [I

    .line 401
    .line 402
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 403
    .line 404
    .line 405
    iget v12, v0, Ll/h;->m:I

    .line 406
    .line 407
    and-int/lit8 v12, v12, 0x7

    .line 408
    .line 409
    const/16 v17, 0x0

    .line 410
    .line 411
    if-ne v12, v10, :cond_1b0

    .line 412
    .line 413
    aget v12, v2, v17

    .line 414
    .line 415
    iget-object v13, v0, Ll/h;->v:Landroid/view/View;

    .line 416
    .line 417
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 418
    .line 419
    .line 420
    move-result v13

    .line 421
    add-int/2addr v13, v12

    .line 422
    aput v13, v2, v17

    .line 423
    .line 424
    aget v12, v7, v17

    .line 425
    .line 426
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    add-int/2addr v13, v12

    .line 431
    aput v13, v7, v17

    .line 432
    .line 433
    :cond_1b0
    aget v12, v7, v17

    .line 434
    .line 435
    aget v13, v2, v17

    .line 436
    .line 437
    sub-int/2addr v12, v13

    .line 438
    const/16 v18, 0x1

    .line 439
    .line 440
    aget v7, v7, v18

    .line 441
    .line 442
    aget v2, v2, v18

    .line 443
    .line 444
    sub-int/2addr v7, v2

    .line 445
    move v2, v7

    .line 446
    move v7, v12

    .line 447
    :goto_1be
    iget v12, v0, Ll/h;->m:I

    .line 448
    .line 449
    and-int/2addr v12, v10

    .line 450
    if-ne v12, v10, :cond_1cd

    .line 451
    .line 452
    if-eqz v9, :cond_1c7

    .line 453
    .line 454
    add-int/2addr v7, v5

    .line 455
    goto :goto_1d4

    .line 456
    :cond_1c7
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    :cond_1cb
    sub-int/2addr v7, v5

    .line 461
    goto :goto_1d4

    .line 462
    :cond_1cd
    if-eqz v9, :cond_1cb

    .line 463
    .line 464
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    add-int/2addr v7, v5

    .line 469
    :goto_1d4
    iput v7, v8, Lm/x1;->f:I

    .line 470
    .line 471
    const/4 v9, 0x1

    .line 472
    iput-boolean v9, v8, Lm/x1;->k:Z

    .line 473
    .line 474
    iput-boolean v9, v8, Lm/x1;->j:Z

    .line 475
    .line 476
    invoke-virtual {v8, v2}, Lm/x1;->h(I)V

    .line 477
    .line 478
    .line 479
    goto :goto_1fd

    .line 480
    :cond_1df
    iget-boolean v2, v0, Ll/h;->y:Z

    .line 481
    .line 482
    if-eqz v2, :cond_1e7

    .line 483
    .line 484
    iget v2, v0, Ll/h;->A:I

    .line 485
    .line 486
    iput v2, v8, Lm/x1;->f:I

    .line 487
    .line 488
    :cond_1e7
    iget-boolean v2, v0, Ll/h;->z:Z

    .line 489
    .line 490
    if-eqz v2, :cond_1f0

    .line 491
    .line 492
    iget v2, v0, Ll/h;->B:I

    .line 493
    .line 494
    invoke-virtual {v8, v2}, Lm/x1;->h(I)V

    .line 495
    .line 496
    .line 497
    :cond_1f0
    iget-object v2, v0, Ll/v;->a:Landroid/graphics/Rect;

    .line 498
    .line 499
    if-eqz v2, :cond_1fa

    .line 500
    .line 501
    new-instance v7, Landroid/graphics/Rect;

    .line 502
    .line 503
    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 504
    .line 505
    .line 506
    goto :goto_1fb

    .line 507
    :cond_1fa
    const/4 v7, 0x0

    .line 508
    :goto_1fb
    iput-object v7, v8, Lm/x1;->E:Landroid/graphics/Rect;

    .line 509
    .line 510
    :goto_1fd
    new-instance v2, Ll/g;

    .line 511
    .line 512
    iget v5, v0, Ll/h;->x:I

    .line 513
    .line 514
    invoke-direct {v2, v8, v1, v5}, Ll/g;-><init>(Lm/c2;Ll/n;I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8}, Lm/x1;->c()V

    .line 521
    .line 522
    .line 523
    iget-object v2, v8, Lm/x1;->c:Lm/m1;

    .line 524
    .line 525
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 526
    .line 527
    .line 528
    if-nez v11, :cond_23b

    .line 529
    .line 530
    iget-boolean v4, v0, Ll/h;->D:Z

    .line 531
    .line 532
    if-eqz v4, :cond_23b

    .line 533
    .line 534
    iget-object v4, v1, Ll/n;->m:Ljava/lang/CharSequence;

    .line 535
    .line 536
    if-eqz v4, :cond_23b

    .line 537
    .line 538
    const v4, 0x7f0c0012

    .line 539
    .line 540
    .line 541
    const/4 v7, 0x0

    .line 542
    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    check-cast v3, Landroid/widget/FrameLayout;

    .line 547
    .line 548
    const v4, 0x1020016

    .line 549
    .line 550
    .line 551
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    check-cast v4, Landroid/widget/TextView;

    .line 556
    .line 557
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v1, Ll/n;->m:Ljava/lang/CharSequence;

    .line 561
    .line 562
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    const/4 v1, 0x0

    .line 566
    invoke-virtual {v2, v3, v1, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8}, Lm/x1;->c()V

    .line 570
    .line 571
    .line 572
    :cond_23b
    return-void
.end method
