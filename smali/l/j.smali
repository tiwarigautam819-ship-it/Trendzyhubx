###### Class l.j (l.j)
.class public final Ll/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/z;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ll/n;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Ll/y;

.field public f:Ll/i;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ll/j;->b:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ll/n;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Ll/j;->e:Ll/y;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ll/y;->b(Ll/n;Z)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll/j;->f:Ll/i;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/i;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final f(Ll/y;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ll/p;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Landroid/content/Context;Ll/n;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ll/j;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iput-object p1, p0, Ll/j;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Ll/j;->b:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Ll/j;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_10
    iput-object p2, p0, Ll/j;->c:Ll/n;

    .line 18
    .line 19
    iget-object p1, p0, Ll/j;->f:Ll/i;

    .line 20
    .line 21
    if-eqz p1, :cond_19

    .line 22
    .line 23
    invoke-virtual {p1}, Ll/i;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_19
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
    .registers 8

    .line 1
    invoke-virtual {p1}, Ll/n;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Ll/n;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    new-instance v0, Ll/o;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Ll/o;->a:Ll/f0;

    .line 17
    .line 18
    new-instance v2, Lg/j;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lg/j;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ll/j;

    .line 24
    .line 25
    iget-object v4, v2, Lg/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lg/f;

    .line 28
    .line 29
    iget-object v5, v4, Lg/f;->a:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    invoke-direct {v3, v5}, Ll/j;-><init>(Landroid/content/ContextWrapper;)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v0, Ll/o;->c:Ll/j;

    .line 35
    .line 36
    iput-object v0, v3, Ll/j;->e:Ll/y;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v1}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Ll/o;->c:Ll/j;

    .line 42
    .line 43
    iget-object v3, v1, Ll/j;->f:Ll/i;

    .line 44
    .line 45
    if-nez v3, :cond_35

    .line 46
    .line 47
    new-instance v3, Ll/i;

    .line 48
    .line 49
    invoke-direct {v3, v1}, Ll/i;-><init>(Ll/j;)V

    .line 50
    .line 51
    .line 52
    iput-object v3, v1, Ll/j;->f:Ll/i;

    .line 53
    .line 54
    :cond_35
    iget-object v1, v1, Ll/j;->f:Ll/i;

    .line 55
    .line 56
    iput-object v1, v4, Lg/f;->g:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v0, v4, Lg/f;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    iget-object v1, p1, Ll/n;->o:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v1, :cond_42

    .line 63
    .line 64
    iput-object v1, v4, Lg/f;->e:Landroid/view/View;

    .line 65
    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    iget-object v1, p1, Ll/n;->n:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-object v1, v4, Lg/f;->c:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object v1, p1, Ll/n;->m:Ljava/lang/CharSequence;

    .line 72
    .line 73
    iput-object v1, v4, Lg/f;->d:Ljava/lang/CharSequence;

    .line 74
    .line 75
    :goto_4a
    iput-object v0, v4, Lg/f;->f:Ll/o;

    .line 76
    .line 77
    invoke-virtual {v2}, Lg/j;->b()Lg/k;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Ll/o;->b:Lg/k;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Ll/o;->b:Lg/k;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v2, 0x3eb

    .line 97
    .line 98
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    .line 100
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    .line 102
    const/high16 v3, 0x20000

    .line 103
    .line 104
    or-int/2addr v2, v3

    .line 105
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .line 107
    iget-object v0, v0, Ll/o;->b:Lg/k;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Ll/j;->e:Ll/y;

    .line 113
    .line 114
    if-eqz v0, :cond_76

    .line 115
    .line 116
    invoke-interface {v0, p1}, Ll/y;->f(Ll/n;)Z

    .line 117
    .line 118
    .line 119
    :cond_76
    const/4 p1, 0x1

    .line 120
    return p1
.end method

.method public final k(Ll/p;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget-object p1, p0, Ll/j;->c:Ll/n;

    .line 2
    .line 3
    iget-object p2, p0, Ll/j;->f:Ll/i;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Ll/i;->b(I)Ll/p;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Ll/n;->q(Landroid/view/MenuItem;Ll/z;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
