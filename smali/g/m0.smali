###### Class g.m0 (g.m0)
.class public final Lg/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/y;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/n0;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lg/m0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/m0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lg/m0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/m0;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lg/m0;->b:Z

    return-void
.end method


# virtual methods
.method public b(Ll/n;Z)V
    .registers 5

    .line 1
    iget-object p2, p0, Lg/m0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lg/n0;

    .line 4
    .line 5
    iget-boolean v0, p0, Lg/m0;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lg/m0;->b:Z

    .line 12
    .line 13
    iget-object v0, p2, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 18
    .line 19
    if-eqz v0, :cond_2a

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 22
    .line 23
    if-eqz v0, :cond_2a

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 29
    .line 30
    if-eqz v0, :cond_2a

    .line 31
    .line 32
    invoke-virtual {v0}, Ll/x;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2a

    .line 37
    .line 38
    iget-object v0, v0, Ll/x;->i:Ll/v;

    .line 39
    .line 40
    invoke-interface {v0}, Ll/d0;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_2a
    iget-object p2, p2, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 44
    .line 45
    const/16 v0, 0x6c

    .line 46
    .line 47
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lg/m0;->b:Z

    .line 52
    .line 53
    return-void
.end method

.method public f(Ll/n;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/m0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg/n0;

    .line 4
    .line 5
    iget-object v0, v0, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 6
    .line 7
    const/16 v1, 0x6c

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lg/m0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Lg/m0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v1, p0, Lg/m0;->b:Z

    .line 16
    .line 17
    if-eqz v1, :cond_15

    .line 18
    .line 19
    const-string v1, "Applink"

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string v1, "Unclassified"

    .line 23
    .line 24
    :goto_17
    if-eqz v0, :cond_32

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x28

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x29

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
