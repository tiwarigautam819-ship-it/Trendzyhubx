###### Class l.f0 (l.f0)
.class public final Ll/f0;
.super Ll/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final A:Ll/p;

.field public final z:Ll/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll/n;Ll/p;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ll/n;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ll/f0;->z:Ll/n;

    .line 5
    .line 6
    iput-object p3, p0, Ll/f0;->A:Ll/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ll/p;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/n;->d(Ll/p;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Ll/n;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Ll/n;->e(Ll/n;Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 6
    .line 7
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ll/n;->e(Ll/n;Landroid/view/MenuItem;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final f(Ll/p;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/n;->f(Ll/p;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    .line 1
    iget-object v0, p0, Ll/f0;->A:Ll/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->A:Ll/p;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget v0, v0, Ll/p;->a:I

    .line 6
    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    const-string v1, "android:menu:actionviewstates:"

    .line 14
    .line 15
    invoke-static {v0, v1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final k()Ll/n;
    .registers 2

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/n;->k()Ll/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/n;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/n;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/n;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/n;->setGroupDividerEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Ll/n;->u(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ll/n;->u(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Ll/n;->u(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ll/n;->u(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v5, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Ll/n;->u(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 2
    iget-object v0, p0, Ll/f0;->A:Ll/p;

    invoke-virtual {v0, p1}, Ll/p;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->A:Ll/p;

    invoke-virtual {v0, p1}, Ll/p;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll/f0;->z:Ll/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ll/n;->setQwertyMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
