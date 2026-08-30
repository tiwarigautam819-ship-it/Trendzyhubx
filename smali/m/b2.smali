###### Class m.b2 (m.b2)
.class public final Lm/b2;
.super Lm/m1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final m:I

.field public final v:I

.field public w:Lm/y1;

.field public x:Ll/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lm/m1;-><init>(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v0, 0x16

    .line 18
    .line 19
    const/16 v1, 0x15

    .line 20
    .line 21
    if-ne p2, p1, :cond_1b

    .line 22
    .line 23
    iput v1, p0, Lm/b2;->m:I

    .line 24
    .line 25
    iput v0, p0, Lm/b2;->v:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    iput v0, p0, Lm/b2;->m:I

    .line 29
    .line 30
    iput v1, p0, Lm/b2;->v:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lm/b2;->w:Lm/y1;

    .line 2
    .line 3
    if-eqz v0, :cond_5a

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 10
    .line 11
    if-eqz v1, :cond_19

    .line 12
    .line 13
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ll/k;

    .line 24
    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    check-cast v0, Ll/k;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    if-eq v2, v3, :cond_43

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    float-to-int v2, v2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    float-to-int v3, v3

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_43

    .line 53
    .line 54
    sub-int/2addr v2, v1

    .line 55
    if-ltz v2, :cond_43

    .line 56
    .line 57
    invoke-virtual {v0}, Ll/k;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v2, v1, :cond_43

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ll/k;->b(I)Ll/p;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    const/4 v1, 0x0

    .line 69
    :goto_44
    iget-object v2, p0, Lm/b2;->x:Ll/p;

    .line 70
    .line 71
    if-eq v2, v1, :cond_5a

    .line 72
    .line 73
    iget-object v0, v0, Ll/k;->a:Ll/n;

    .line 74
    .line 75
    if-eqz v2, :cond_51

    .line 76
    .line 77
    iget-object v3, p0, Lm/b2;->w:Lm/y1;

    .line 78
    .line 79
    invoke-interface {v3, v0, v2}, Lm/y1;->n(Ll/n;Landroid/view/MenuItem;)V

    .line 80
    .line 81
    .line 82
    :cond_51
    iput-object v1, p0, Lm/b2;->x:Ll/p;

    .line 83
    .line 84
    if-eqz v1, :cond_5a

    .line 85
    .line 86
    iget-object v2, p0, Lm/b2;->w:Lm/y1;

    .line 87
    .line 88
    invoke-interface {v2, v0, v1}, Lm/y1;->l(Ll/n;Ll/p;)V

    .line 89
    .line 90
    .line 91
    :cond_5a
    invoke-super {p0, p1}, Lm/m1;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_29

    .line 9
    .line 10
    iget v2, p0, Lm/b2;->m:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_29

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_28

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Ll/p;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ll/p;->hasSubMenu()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_28

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 39
    .line 40
    .line 41
    :cond_28
    return v1

    .line 42
    :cond_29
    if-eqz v0, :cond_4d

    .line 43
    .line 44
    iget v0, p0, Lm/b2;->v:I

    .line 45
    .line 46
    if-ne p1, v0, :cond_4d

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    .line 57
    .line 58
    if-eqz p2, :cond_44

    .line 59
    .line 60
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ll/k;

    .line 67
    .line 68
    goto :goto_46

    .line 69
    :cond_44
    check-cast p1, Ll/k;

    .line 70
    .line 71
    :goto_46
    iget-object p1, p1, Ll/k;->a:Ll/n;

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Ll/n;->c(Z)V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public setHoverListener(Lm/y1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm/b2;->w:Lm/y1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lm/m1;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
