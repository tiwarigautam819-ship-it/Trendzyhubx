###### Class m.e (m.e)
.class public final Lm/e;
.super Ll/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroidx/appcompat/widget/a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Ll/f0;Landroid/view/View;)V
    .registers 13

    const/4 v0, 0x0

    iput v0, p0, Lm/e;->l:I

    .line 8
    iput-object p1, p0, Lm/e;->m:Landroidx/appcompat/widget/a;

    const v6, 0x7f040020

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v1 .. v7}, Ll/x;-><init>(Landroid/content/Context;Ll/n;Landroid/view/View;ZII)V

    .line 10
    iget-object p2, v3, Ll/f0;->A:Ll/p;

    .line 11
    iget p2, p2, Ll/p;->x:I

    const/16 p3, 0x20

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_1b

    goto :goto_25

    .line 12
    :cond_1b
    iget-object p2, p1, Landroidx/appcompat/widget/a;->i:Lm/h;

    if-nez p2, :cond_23

    .line 13
    iget-object p2, p1, Ll/d;->h:Ll/b0;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_23
    iput-object p2, v1, Ll/x;->e:Landroid/view/View;

    .line 16
    :goto_25
    iget-object p1, p1, Landroidx/appcompat/widget/a;->E:Lk1/h;

    .line 17
    iput-object p1, v1, Ll/x;->h:Ll/y;

    .line 18
    iget-object p2, v1, Ll/x;->i:Ll/v;

    if-eqz p2, :cond_30

    .line 19
    invoke-interface {p2, p1}, Ll/z;->f(Ll/y;)V

    :cond_30
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/a;Landroid/content/Context;Ll/n;Landroid/view/View;)V
    .registers 13

    const/4 v0, 0x1

    iput v0, p0, Lm/e;->l:I

    .line 1
    iput-object p1, p0, Lm/e;->m:Landroidx/appcompat/widget/a;

    const v6, 0x7f040020

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Ll/x;-><init>(Landroid/content/Context;Ll/n;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 3
    iput p2, v1, Ll/x;->f:I

    .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/a;->E:Lk1/h;

    .line 5
    iput-object p1, v1, Ll/x;->h:Ll/y;

    .line 6
    iget-object p2, v1, Ll/x;->i:Ll/v;

    if-eqz p2, :cond_21

    .line 7
    invoke-interface {p2, p1}, Ll/z;->f(Ll/y;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 4

    .line 1
    iget v0, p0, Lm/e;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm/e;->m:Landroidx/appcompat/widget/a;

    .line 7
    .line 8
    iget-object v1, v0, Ll/d;->c:Ll/n;

    .line 9
    .line 10
    if-eqz v1, :cond_f

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Ll/n;->c(Z)V

    .line 14
    .line 15
    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Landroidx/appcompat/widget/a;->A:Lm/e;

    .line 18
    .line 19
    invoke-super {p0}, Ll/x;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_16
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lm/e;->m:Landroidx/appcompat/widget/a;

    .line 25
    .line 26
    iput-object v0, v1, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Ll/x;->c()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method
