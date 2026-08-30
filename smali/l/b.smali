###### Class l.b (l.b)
.class public final Ll/b;
.super Lm/p1;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Ll/b;->j:I

    .line 1
    iput-object p1, p0, Ll/b;->k:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Lm/p1;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lm/h;Lm/h;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Ll/b;->j:I

    .line 3
    iput-object p1, p0, Ll/b;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Lm/p1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ll/d0;
    .registers 2

    .line 1
    iget v0, p0, Ll/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll/b;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lm/h;

    .line 9
    .line 10
    iget-object v0, v0, Lm/h;->d:Landroidx/appcompat/widget/a;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/widget/a;->A:Lm/e;

    .line 13
    .line 14
    if-nez v0, :cond_11

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v0}, Ll/x;->a()Ll/v;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_15
    return-object v0

    .line 23
    :pswitch_16
    iget-object v0, p0, Ll/b;->k:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Ll/c;

    .line 28
    .line 29
    if-eqz v0, :cond_2b

    .line 30
    .line 31
    check-cast v0, Lm/f;

    .line 32
    .line 33
    iget-object v0, v0, Lm/f;->a:Landroidx/appcompat/widget/a;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 36
    .line 37
    if-eqz v0, :cond_2b

    .line 38
    .line 39
    invoke-virtual {v0}, Ll/x;->a()Ll/v;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    :goto_2c
    return-object v0

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method public final c()Z
    .registers 3

    .line 1
    iget v0, p0, Ll/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll/b;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lm/h;

    .line 9
    .line 10
    iget-object v0, v0, Lm/h;->d:Landroidx/appcompat/widget/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->l()Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :pswitch_10
    iget-object v0, p0, Ll/b;->k:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Ll/m;

    .line 22
    .line 23
    if-eqz v1, :cond_2e

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Ll/p;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ll/m;->b(Ll/p;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2e

    .line 32
    .line 33
    invoke-virtual {p0}, Ll/b;->b()Ll/d0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2e

    .line 38
    .line 39
    invoke-interface {v0}, Ll/d0;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2e

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    :goto_2f
    return v0

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public d()Z
    .registers 3

    .line 1
    iget v0, p0, Ll/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lm/p1;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Ll/b;->k:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Lm/h;

    .line 14
    .line 15
    iget-object v0, v0, Lm/h;->d:Landroidx/appcompat/widget/a;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/appcompat/widget/a;->C:Lm/g;

    .line 18
    .line 19
    if-eqz v1, :cond_16

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :goto_1a
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
