###### Class j0.n0 (j0.n0)
.class public final Lj0/n0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lj0/n0;->a:I

    .line 1
    iput-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj0/p0;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    iput p2, p0, Lj0/n0;->a:I

    .line 2
    iput-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget p1, p0, Lj0/n0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    iget-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lj0/p0;

    .line 20
    .line 21
    invoke-interface {p1}, Lj0/p0;->b()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget p1, p0, Lj0/n0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    iget-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lj0/p0;

    .line 20
    .line 21
    invoke-interface {p1}, Lj0/p0;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget v0, p0, Lj0/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object p1, p0, Lj0/n0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lj0/p0;

    .line 13
    .line 14
    invoke-interface {p1}, Lj0/p0;->c()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
