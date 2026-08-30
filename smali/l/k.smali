###### Class l.k (l.k)
.class public final Ll/k;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ll/n;

.field public b:I

.field public c:Z

.field public final d:Z

.field public final e:Landroid/view/LayoutInflater;

.field public final f:I


# direct methods
.method public constructor <init>(Ll/n;Landroid/view/LayoutInflater;ZI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ll/k;->b:I

    .line 6
    .line 7
    iput-boolean p3, p0, Ll/k;->d:Z

    .line 8
    .line 9
    iput-object p2, p0, Ll/k;->e:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    iput-object p1, p0, Ll/k;->a:Ll/n;

    .line 12
    .line 13
    iput p4, p0, Ll/k;->f:I

    .line 14
    .line 15
    invoke-virtual {p0}, Ll/k;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Ll/k;->a:Ll/n;

    .line 2
    .line 3
    iget-object v1, v0, Ll/n;->v:Ll/p;

    .line 4
    .line 5
    if-eqz v1, :cond_20

    .line 6
    .line 7
    invoke-virtual {v0}, Ll/n;->i()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Ll/n;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_10
    if-ge v3, v2, :cond_20

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ll/p;

    .line 24
    .line 25
    if-ne v4, v1, :cond_1d

    .line 26
    .line 27
    iput v3, p0, Ll/k;->b:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_10

    .line 33
    :cond_20
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Ll/k;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final b(I)Ll/p;
    .registers 4

    .line 1
    iget-boolean v0, p0, Ll/k;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Ll/k;->a:Ll/n;

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v1}, Ll/n;->i()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Ll/n;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {v1}, Ll/n;->l()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_10
    iget v1, p0, Ll/k;->b:I

    .line 18
    .line 19
    if-ltz v1, :cond_18

    .line 20
    .line 21
    if-lt p1, v1, :cond_18

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ll/p;

    .line 30
    .line 31
    return-object p1
.end method

.method public final getCount()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Ll/k;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Ll/k;->a:Ll/n;

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    invoke-virtual {v1}, Ll/n;->i()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Ll/n;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {v1}, Ll/n;->l()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_10
    iget v1, p0, Ll/k;->b:I

    .line 18
    .line 19
    if-gez v1, :cond_19

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ll/k;->b(I)Ll/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_b

    .line 3
    .line 4
    iget-object p2, p0, Ll/k;->e:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    iget v1, p0, Ll/k;->f:I

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_b
    invoke-virtual {p0, p1}, Ll/k;->b(I)Ll/p;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget p3, p3, Ll/p;->b:I

    .line 17
    .line 18
    add-int/lit8 v1, p1, -0x1

    .line 19
    .line 20
    if-ltz v1, :cond_1c

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ll/k;->b(I)Ll/p;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Ll/p;->b:I

    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, p3

    .line 30
    :goto_1d
    move-object v2, p2

    .line 31
    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 32
    .line 33
    iget-object v3, p0, Ll/k;->a:Ll/n;

    .line 34
    .line 35
    invoke-virtual {v3}, Ll/n;->m()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2c

    .line 41
    .line 42
    if-eq p3, v1, :cond_2c

    .line 43
    .line 44
    move v0, v4

    .line 45
    :cond_2c
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 46
    .line 47
    .line 48
    move-object p3, p2

    .line 49
    check-cast p3, Ll/a0;

    .line 50
    .line 51
    iget-boolean v0, p0, Ll/k;->c:Z

    .line 52
    .line 53
    if-eqz v0, :cond_39

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {p0, p1}, Ll/k;->b(I)Ll/p;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p3, p1}, Ll/a0;->b(Ll/p;)V

    .line 63
    .line 64
    .line 65
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Ll/k;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
