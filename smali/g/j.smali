###### Class g.j (g.j)
.class public Lg/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    packed-switch p2, :pswitch_data_20

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lg/j;->a:I

    return-void

    .line 5
    :pswitch_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_18

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;

    return-void

    .line 7
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The max pool size must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_e
    .end packed-switch
.end method

.method public varargs constructor <init>(I[Lj0/q;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lg/j;->a:I

    .line 10
    iput-object p2, p0, Lg/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lg/k;->f(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Lg/f;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 14
    invoke-static {p1, v0}, Lg/k;->f(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lg/f;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Lg/j;->b:Ljava/lang/Object;

    .line 15
    iput v0, p0, Lg/j;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;

    iput p2, p0, Lg/j;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3

    packed-switch p2, :pswitch_data_12

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lg/j;->a:I

    .line 18
    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;

    return-void

    .line 19
    :pswitch_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_12
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lg/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lg/j;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_1b

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    aget-object v3, v0, v1

    .line 13
    .line 14
    const-string v4, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool"

    .line 15
    .line 16
    invoke-static {v4, v3}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    iget v0, p0, Lg/j;->a:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Lg/j;->a:I

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1b
    return-object v2
.end method

.method public b()Lg/k;
    .registers 11

    .line 1
    new-instance v0, Lg/k;

    .line 2
    .line 3
    iget-object v1, p0, Lg/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lg/f;

    .line 6
    .line 7
    iget-object v2, v1, Lg/f;->a:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget v3, p0, Lg/j;->a:I

    .line 10
    .line 11
    invoke-direct {v0, v2, v3}, Lg/k;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lg/f;->e:Landroid/view/View;

    .line 15
    .line 16
    iget-object v3, v0, Lg/k;->f:Lg/i;

    .line 17
    .line 18
    if-eqz v2, :cond_16

    .line 19
    .line 20
    iput-object v2, v3, Lg/i;->n:Landroid/view/View;

    .line 21
    .line 22
    goto :goto_36

    .line 23
    :cond_16
    iget-object v2, v1, Lg/f;->d:Ljava/lang/CharSequence;

    .line 24
    .line 25
    if-eqz v2, :cond_23

    .line 26
    .line 27
    iput-object v2, v3, Lg/i;->d:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object v4, v3, Lg/i;->l:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v4, :cond_23

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v2, v1, Lg/f;->c:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz v2, :cond_36

    .line 39
    .line 40
    iput-object v2, v3, Lg/i;->j:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    iget-object v4, v3, Lg/i;->k:Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v4, :cond_36

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v3, Lg/i;->k:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    iget-object v2, v1, Lg/f;->g:Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_79

    .line 60
    .line 61
    iget-object v2, v1, Lg/f;->b:Landroid/view/LayoutInflater;

    .line 62
    .line 63
    iget v6, v3, Lg/i;->r:I

    .line 64
    .line 65
    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 70
    .line 71
    iget-boolean v6, v1, Lg/f;->i:Z

    .line 72
    .line 73
    if-eqz v6, :cond_4d

    .line 74
    .line 75
    iget v6, v3, Lg/i;->s:I

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    iget v6, v3, Lg/i;->t:I

    .line 79
    .line 80
    :goto_4f
    iget-object v7, v1, Lg/f;->g:Ljava/lang/Object;

    .line 81
    .line 82
    if-eqz v7, :cond_54

    .line 83
    .line 84
    goto :goto_5e

    .line 85
    :cond_54
    new-instance v7, Lg/h;

    .line 86
    .line 87
    iget-object v8, v1, Lg/f;->a:Landroid/view/ContextThemeWrapper;

    .line 88
    .line 89
    const v9, 0x1020014

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v8, v6, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_5e
    iput-object v7, v3, Lg/i;->o:Landroid/widget/ListAdapter;

    .line 96
    .line 97
    iget v6, v1, Lg/f;->j:I

    .line 98
    .line 99
    iput v6, v3, Lg/i;->p:I

    .line 100
    .line 101
    iget-object v6, v1, Lg/f;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    if-eqz v6, :cond_70

    .line 104
    .line 105
    new-instance v6, Lg/e;

    .line 106
    .line 107
    invoke-direct {v6, v1, v3}, Lg/e;-><init>(Lg/f;Lg/i;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_70
    iget-boolean v6, v1, Lg/f;->i:Z

    .line 114
    .line 115
    if-eqz v6, :cond_77

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 118
    .line 119
    .line 120
    :cond_77
    iput-object v2, v3, Lg/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 121
    .line 122
    :cond_79
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v1, Lg/f;->f:Ll/o;

    .line 135
    .line 136
    if-eqz v1, :cond_8c

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    .line 140
    .line 141
    :cond_8c
    return-object v0
.end method

.method public c()Z
    .registers 3

    .line 1
    iget v0, p0, Lg/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lg/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public d(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lg/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lg/j;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_19

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    if-eq v4, p1, :cond_11

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_8

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "Already in the pool!"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_19
    iget v1, p0, Lg/j;->a:I

    .line 27
    .line 28
    array-length v3, v0

    .line 29
    if-ge v1, v3, :cond_25

    .line 30
    .line 31
    aput-object p1, v0, v1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    add-int/2addr v1, p1

    .line 35
    iput v1, p0, Lg/j;->a:I

    .line 36
    .line 37
    return p1

    .line 38
    :cond_25
    return v2
.end method
