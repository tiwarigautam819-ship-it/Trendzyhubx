###### Class androidx.fragment.app.l0 (androidx.fragment.app.l0)
.class public final Landroidx/fragment/app/l0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/g1;

.field public final synthetic b:Landroidx/fragment/app/m0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/m0;Landroidx/fragment/app/g1;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/l0;->b:Landroidx/fragment/app/m0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/l0;->a:Landroidx/fragment/app/g1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/l0;->a:Landroidx/fragment/app/g1;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/g1;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/fragment/app/l0;->b:Landroidx/fragment/app/m0;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/fragment/app/m0;->a:Landroidx/fragment/app/y0;

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/o;->h()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    return-void
.end method
