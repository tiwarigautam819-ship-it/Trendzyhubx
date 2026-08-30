###### Class androidx.fragment.app.j0 (androidx.fragment.app.j0)
.class public final Landroidx/fragment/app/j0;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Landroid/view/View$OnApplyWindowInsetsListener;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const-string v0, "context"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j0;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/j0;->d:Z

    if-eqz p2, :cond_5e

    .line 5
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Ls0/a;->b:[I

    .line 7
    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez v1, :cond_2f

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    const-string p2, "android:name"

    goto :goto_31

    .line 10
    :cond_2f
    const-string p2, "class"

    .line 11
    :goto_31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_5e

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_5e

    .line 13
    :cond_3d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FragmentContainerView must be within a FragmentActivity to use "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p2, "=\""

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/y0;)V
    .registers 11

    const-string v0, "context"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attrs"

    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j0;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->d:Z

    .line 22
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-object v2, Ls0/a;->b:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-nez v1, :cond_2f

    .line 24
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p2

    .line 28
    invoke-virtual {p3, p2}, Landroidx/fragment/app/y0;->B(I)Landroidx/fragment/app/c0;

    move-result-object v4

    if-eqz v1, :cond_13c

    if-nez v4, :cond_13c

    const/4 v4, -0x1

    if-ne p2, v4, :cond_5c

    if-eqz v2, :cond_4e

    .line 29
    const-string p1, " with tag "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4e
    const-string p1, ""

    .line 30
    :goto_50
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    const-string p3, "FragmentContainerView must have an android:id to add Fragment "

    .line 32
    invoke-static {p3, v1, p1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_5c
    invoke-virtual {p3}, Landroidx/fragment/app/y0;->G()Landroidx/fragment/app/r0;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/r0;->a(Ljava/lang/String;)Landroidx/fragment/app/c0;

    move-result-object p1

    const-string v1, "fm.fragmentFactory.insta\u2026ontext.classLoader, name)"

    invoke-static {v1, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iput p2, p1, Landroidx/fragment/app/c0;->F:I

    .line 36
    iput p2, p1, Landroidx/fragment/app/c0;->G:I

    .line 37
    iput-object v2, p1, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 38
    iput-object p3, p1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 39
    iget-object p2, p3, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 40
    iput-object p2, p1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 41
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->N:Z

    const/4 v1, 0x0

    if-nez p2, :cond_7f

    move-object p2, v1

    goto :goto_81

    .line 42
    :cond_7f
    iget-object p2, p2, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    :goto_81
    if-eqz p2, :cond_85

    .line 43
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->N:Z

    .line 44
    :cond_85
    new-instance p2, Landroidx/fragment/app/a;

    invoke-direct {p2, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    .line 45
    iput-boolean v0, p2, Landroidx/fragment/app/a;->o:Z

    .line 46
    iput-object p0, p1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 47
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->x:Z

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    .line 49
    invoke-virtual {p2, v4, p1, v2}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 50
    iget-boolean p1, p2, Landroidx/fragment/app/a;->g:Z

    if-nez p1, :cond_134

    .line 51
    iget-object p1, p2, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/y0;

    iget-object v2, p1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    if-eqz v2, :cond_13c

    .line 52
    iget-boolean v2, p1, Landroidx/fragment/app/y0;->J:Z

    if-eqz v2, :cond_a7

    goto/16 :goto_13c

    .line 53
    :cond_a7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/y0;->y(Z)V

    .line 54
    iget-object v2, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    if-eqz v2, :cond_fe

    .line 55
    iput-boolean v3, v2, Landroidx/fragment/app/a;->r:Z

    const/4 v2, 0x3

    .line 56
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reversing mTransitioningOp "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as part of execSingleAction for action "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FragmentManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_d4
    iget-object v2, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    invoke-virtual {v2, v3, v3}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 59
    iget-object v2, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    iget-object v4, p1, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    iget-object v5, p1, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 60
    iget-object v2, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    iget-object v2, v2, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :cond_eb
    :goto_eb
    if-ge v5, v4, :cond_fc

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/h1;

    .line 61
    iget-object v6, v6, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    if-eqz v6, :cond_eb

    .line 62
    iput-boolean v3, v6, Landroidx/fragment/app/c0;->m:Z

    goto :goto_eb

    .line 63
    :cond_fc
    iput-object v1, p1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 64
    :cond_fe
    iget-object v2, p1, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    iget-object v4, p1, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 65
    iput-boolean v0, p1, Landroidx/fragment/app/y0;->b:Z

    .line 66
    :try_start_107
    iget-object p2, p1, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/y0;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_12f

    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->d()V

    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->e0()V

    .line 69
    iget-boolean p2, p1, Landroidx/fragment/app/y0;->K:Z

    if-eqz p2, :cond_11d

    .line 70
    iput-boolean v3, p1, Landroidx/fragment/app/y0;->K:Z

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->c0()V

    .line 72
    :cond_11d
    iget-object p1, p1, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 73
    iget-object p1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 74
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13c

    :catchall_12f
    move-exception p2

    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->d()V

    .line 76
    throw p2

    .line 77
    :cond_134
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This transaction is already being added to the back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_13c
    :goto_13c
    iget-object p1, p3, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/y;->r()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_146
    :goto_146
    if-ge v3, p2, :cond_16d

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v3, v3, 0x1

    check-cast p3, Landroidx/fragment/app/g1;

    .line 79
    iget-object v0, p3, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 80
    iget v1, v0, Landroidx/fragment/app/c0;->G:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_146

    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    if-eqz v1, :cond_146

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_146

    .line 82
    iput-object p0, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p3}, Landroidx/fragment/app/g1;->b()V

    .line 84
    invoke-virtual {p3}, Landroidx/fragment/app/g1;->k()V

    goto :goto_146

    :cond_16d
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/j0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f090080

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroidx/fragment/app/c0;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    check-cast v0, Landroidx/fragment/app/c0;

    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    if-eqz v0, :cond_1a

    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "Views added to a FragmentContainerView must be associated with a Fragment. View "

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " is not associated with a Fragment."

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    .line 1
    const-string v0, "insets"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/fragment/app/j0;->c:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 12
    .line 13
    if-eqz v2, :cond_1c

    .line 14
    .line 15
    invoke-interface {v2, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "onApplyWindowInsetsListe\u2026lyWindowInsets(v, insets)"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_33

    .line 29
    :cond_1c
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Lj0/b1;->f()Landroid/view/WindowInsets;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_32

    .line 36
    .line 37
    invoke-static {p0, v0}, Lj0/b0;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_32

    .line 46
    .line 47
    invoke-static {v2, p0}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    move-object v0, v1

    .line 52
    :goto_33
    iget-object v1, v0, Lj0/b1;->a:Lj0/z0;

    .line 53
    .line 54
    invoke-virtual {v1}, Lj0/z0;->m()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5e

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_40
    if-ge v2, v1, :cond_5e

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v4, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-virtual {v0}, Lj0/b1;->f()Landroid/view/WindowInsets;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_5b

    .line 78
    .line 79
    invoke-static {v3, v4}, Lj0/b0;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5, v4}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_5b

    .line 88
    .line 89
    invoke-static {v5, v3}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 90
    .line 91
    .line 92
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_40

    .line 95
    :cond_5e
    return-object p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->d:Z

    .line 7
    .line 8
    if-eqz v0, :cond_22

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_22

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    check-cast v3, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-super {p0, p1, v3, v4, v5}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 32
    .line 33
    .line 34
    goto :goto_10

    .line 35
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "child"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/fragment/app/j0;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1e

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1e

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_1e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final endViewTransition(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/j0;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/j0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/j0;->d:Z

    .line 21
    .line 22
    :cond_15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->endViewTransition(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getFragment()Landroidx/fragment/app/c0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/c0;",
            ">()TF;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    const/4 v1, 0x0

    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    const v2, 0x7f090080

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroidx/fragment/app/c0;

    .line 13
    .line 14
    if-eqz v3, :cond_12

    .line 15
    .line 16
    check-cast v2, Landroidx/fragment/app/c0;

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object v2, v1

    .line 20
    :goto_13
    if-eqz v2, :cond_16

    .line 21
    .line 22
    goto :goto_24

    .line 23
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v2, v0, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v2, :cond_21

    .line 30
    .line 31
    check-cast v0, Landroid/view/View;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_21
    move-object v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_23
    move-object v2, v1

    .line 37
    :goto_24
    if-eqz v2, :cond_52

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->k()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_31

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->d()Landroidx/fragment/app/y0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_6f

    .line 50
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "The Fragment "

    .line 55
    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " that owns View "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_56
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 88
    .line 89
    if-eqz v2, :cond_69

    .line 90
    .line 91
    instance-of v2, v0, Landroidx/fragment/app/h0;

    .line 92
    .line 93
    if-eqz v2, :cond_62

    .line 94
    .line 95
    move-object v1, v0

    .line 96
    check-cast v1, Landroidx/fragment/app/h0;

    .line 97
    .line 98
    goto :goto_69

    .line 99
    :cond_62
    check-cast v0, Landroid/content/ContextWrapper;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_56

    .line 106
    :cond_69
    :goto_69
    if-eqz v1, :cond_78

    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/fragment/app/h0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_6f
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y0;->B(I)Landroidx/fragment/app/c0;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v2, "View "

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " is not within a subclass of FragmentActivity."

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 1
    const-string v0, "insets"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final removeAllViewsInLayout()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_6
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_18

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "view"

    .line 15
    .line 16
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_18
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeViewAt(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "view"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeViews(II)V
    .registers 7

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    move v1, p1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_14

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "view"

    .line 11
    .line 12
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final removeViewsInLayout(II)V
    .registers 7

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    move v1, p1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_14

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "view"

    .line 11
    .line 12
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/j0;->a(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setDrawDisappearingViewsLast(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/j0;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\"."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .registers 3

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/j0;->c:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 7
    .line 8
    return-void
.end method

.method public final startViewTransition(Landroid/view/View;)V
    .registers 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p0, :cond_10

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/fragment/app/j0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startViewTransition(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
