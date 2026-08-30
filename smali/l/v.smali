###### Class l.v (l.v)
.class public abstract Ll/v;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/d0;
.implements Ll/z;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/graphics/Rect;


# direct methods
.method public static m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v0

    .line 16
    move v6, v5

    .line 17
    move-object v7, v4

    .line 18
    move-object v8, v7

    .line 19
    :goto_12
    if-ge v0, v3, :cond_37

    .line 20
    .line 21
    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    if-eq v9, v6, :cond_1c

    .line 26
    .line 27
    move-object v8, v4

    .line 28
    move v6, v9

    .line 29
    :cond_1c
    if-nez v7, :cond_23

    .line 30
    .line 31
    new-instance v7, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-interface {p0, v0, v8, v7}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-lt v9, p2, :cond_31

    .line 48
    .line 49
    return p2

    .line 50
    :cond_31
    if-le v9, v5, :cond_34

    .line 51
    .line 52
    move v5, v9

    .line 53
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_12

    .line 56
    :cond_37
    return v5
.end method


# virtual methods
.method public final g(Ll/p;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Landroid/content/Context;Ll/n;)V
    .registers 3

    .line 1
    return-void
.end method

.method public final k(Ll/p;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract l(Ll/n;)V
.end method

.method public abstract n(Landroid/view/View;)V
.end method

.method public abstract o(Z)V
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/ListAdapter;

    .line 6
    .line 7
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    .line 8
    .line 9
    if-eqz p2, :cond_14

    .line 10
    .line 11
    move-object p2, p1

    .line 12
    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Ll/k;

    .line 19
    .line 20
    goto :goto_17

    .line 21
    :cond_14
    move-object p2, p1

    .line 22
    check-cast p2, Ll/k;

    .line 23
    .line 24
    :goto_17
    iget-object p2, p2, Ll/k;->a:Ll/n;

    .line 25
    .line 26
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/MenuItem;

    .line 31
    .line 32
    instance-of p3, p0, Ll/h;

    .line 33
    .line 34
    if-nez p3, :cond_25

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 p3, 0x4

    .line 39
    :goto_26
    invoke-virtual {p2, p1, p0, p3}, Ll/n;->q(Landroid/view/MenuItem;Ll/z;I)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public abstract p(I)V
.end method

.method public abstract q(I)V
.end method

.method public abstract r(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract s(Z)V
.end method

.method public abstract t(I)V
.end method
