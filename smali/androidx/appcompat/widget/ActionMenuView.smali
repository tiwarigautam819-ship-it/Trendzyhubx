###### Class androidx.appcompat.widget.ActionMenuView (androidx.appcompat.widget.ActionMenuView)
.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/m;
.implements Ll/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Landroidx/appcompat/widget/a;

.field public C:Lg/m0;

.field public D:Ll/l;

.field public E:Z

.field public F:I

.field public final G:I

.field public final H:I

.field public I:Lm/j;

.field public x:Ll/n;

.field public y:Landroid/content/Context;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/b;->setBaselineAligned(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    const/high16 v1, 0x42600000    # 56.0f

    .line 19
    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v1, v1

    .line 22
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    .line 23
    .line 24
    const/high16 v1, 0x40800000    # 4.0f

    .line 25
    .line 26
    mul-float/2addr v0, v1

    .line 27
    float-to-int v0, v0

    .line 28
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroid/content/Context;

    .line 31
    .line 32
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 33
    .line 34
    return-void
.end method

.method public static i()Landroidx/appcompat/widget/ActionMenuView$a;
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 13
    .line 14
    return-object v0
.end method

.method public static j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$a;
    .registers 2

    .line 1
    if-eqz p0, :cond_20

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 4
    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 8
    .line 9
    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 15
    .line 16
    iput-boolean p0, v0, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 17
    .line 18
    goto :goto_17

    .line 19
    :cond_12
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    :goto_17
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    if-gtz p0, :cond_1f

    .line 27
    .line 28
    const/16 p0, 0x10

    .line 29
    .line 30
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    .line 32
    :cond_1f
    return-object v0

    .line 33
    :cond_20
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->i()Landroidx/appcompat/widget/ActionMenuView$a;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final a(Ll/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 2
    .line 3
    return-void
.end method

.method public final b(Ll/p;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v2, v1}, Ll/n;->q(Landroid/view/MenuItem;Ll/z;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final bridge synthetic e()Landroidx/appcompat/widget/b$a;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->i()Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/b$a;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final bridge synthetic g(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/b$a;
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->i()Landroidx/appcompat/widget/ActionMenuView$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$a;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 2
    .line 3
    if-nez v0, :cond_41

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ll/n;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ll/n;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 15
    .line 16
    new-instance v2, Lo5/c;

    .line 17
    .line 18
    const/16 v3, 0x12

    .line 19
    .line 20
    invoke-direct {v2, v3, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v1, Ll/n;->e:Ll/l;

    .line 24
    .line 25
    new-instance v1, Landroidx/appcompat/widget/a;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, v1, Landroidx/appcompat/widget/a;->l:Z

    .line 34
    .line 35
    iput-boolean v0, v1, Landroidx/appcompat/widget/a;->m:Z

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->C:Lg/m0;

    .line 38
    .line 39
    if-eqz v0, :cond_29

    .line 40
    .line 41
    goto :goto_30

    .line 42
    :cond_29
    new-instance v0, Le5/e;

    .line 43
    .line 44
    const/16 v2, 0x1d

    .line 45
    .line 46
    invoke-direct {v0, v2}, Le5/e;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_30
    iput-object v0, v1, Ll/d;->e:Ll/y;

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 59
    .line 60
    iput-object p0, v0, Ll/d;->h:Ll/b0;

    .line 61
    .line 62
    iget-object v0, v0, Ll/d;->c:Ll/n;

    .line 63
    .line 64
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 65
    .line 66
    :cond_41
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 67
    .line 68
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/a;->i:Lm/h;

    .line 7
    .line 8
    if-eqz v1, :cond_e

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    iget-boolean v1, v0, Landroidx/appcompat/widget/a;->k:Z

    .line 16
    .line 17
    if-eqz v1, :cond_15

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/a;->j:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge p1, v3, :cond_1e

    .line 20
    .line 21
    instance-of v3, v1, Lm/i;

    .line 22
    .line 23
    if-eqz v3, :cond_1e

    .line 24
    .line 25
    check-cast v1, Lm/i;

    .line 26
    .line 27
    invoke-interface {v1}, Lm/i;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1e
    if-lez p1, :cond_2c

    .line 32
    .line 33
    instance-of p1, v2, Lm/i;

    .line 34
    .line 35
    if-eqz p1, :cond_2c

    .line 36
    .line 37
    check-cast v2, Lm/i;

    .line 38
    .line 39
    invoke-interface {v2}, Lm/i;->c()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr p1, v0

    .line 44
    return p1

    .line 45
    :cond_2c
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 5
    .line 6
    if-eqz p1, :cond_1c

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->d()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1c

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->c()Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->l()Z

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 5
    .line 6
    if-eqz v0, :cond_19

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 12
    .line 13
    if-eqz v0, :cond_19

    .line 14
    .line 15
    invoke-virtual {v0}, Ll/x;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_19

    .line 20
    .line 21
    iget-object v0, v0, Ll/x;->i:Ll/v;

    .line 22
    .line 23
    invoke-interface {v0}, Ll/d0;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->E:Z

    .line 4
    .line 5
    if-nez v1, :cond_a

    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/b;->onLayout(ZIIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/widget/b;->getDividerWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    sget-boolean v6, Lm/l3;->a:Z

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    if-ne v6, v7, :cond_2e

    .line 44
    .line 45
    move v6, v7

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v6, 0x0

    .line 48
    :goto_2f
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    :goto_32
    const/16 v12, 0x8

    .line 52
    .line 53
    if-ge v9, v1, :cond_94

    .line 54
    .line 55
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-ne v14, v12, :cond_41

    .line 64
    .line 65
    goto :goto_91

    .line 66
    :cond_41
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 71
    .line 72
    iget-boolean v14, v12, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 73
    .line 74
    if-eqz v14, :cond_81

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->k(I)Z

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-eqz v14, :cond_56

    .line 85
    .line 86
    add-int/2addr v10, v3

    .line 87
    :cond_56
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v6, :cond_66

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 98
    .line 99
    add-int/2addr v15, v12

    .line 100
    add-int v12, v15, v10

    .line 101
    .line 102
    goto :goto_76

    .line 103
    :cond_66
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    sub-int v15, v15, v16

    .line 112
    .line 113
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 114
    .line 115
    sub-int v12, v15, v12

    .line 116
    .line 117
    sub-int v15, v12, v10

    .line 118
    .line 119
    :goto_76
    div-int/lit8 v16, v14, 0x2

    .line 120
    .line 121
    sub-int v8, v2, v16

    .line 122
    .line 123
    add-int/2addr v14, v8

    .line 124
    invoke-virtual {v13, v15, v8, v12, v14}, Landroid/view/View;->layout(IIII)V

    .line 125
    .line 126
    .line 127
    sub-int/2addr v5, v10

    .line 128
    move v10, v7

    .line 129
    goto :goto_91

    .line 130
    :cond_81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 135
    .line 136
    add-int/2addr v8, v13

    .line 137
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 138
    .line 139
    add-int/2addr v8, v12

    .line 140
    sub-int/2addr v5, v8

    .line 141
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->k(I)Z

    .line 142
    .line 143
    .line 144
    add-int/lit8 v11, v11, 0x1

    .line 145
    .line 146
    :goto_91
    add-int/lit8 v9, v9, 0x1

    .line 147
    .line 148
    goto :goto_32

    .line 149
    :cond_94
    if-ne v1, v7, :cond_b3

    .line 150
    .line 151
    if-nez v10, :cond_b3

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    div-int/lit8 v4, v4, 0x2

    .line 167
    .line 168
    div-int/lit8 v6, v3, 0x2

    .line 169
    .line 170
    sub-int/2addr v4, v6

    .line 171
    div-int/lit8 v6, v5, 0x2

    .line 172
    .line 173
    sub-int/2addr v2, v6

    .line 174
    add-int/2addr v3, v4

    .line 175
    add-int/2addr v5, v2

    .line 176
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_b3
    xor-int/lit8 v3, v10, 0x1

    .line 181
    .line 182
    sub-int/2addr v11, v3

    .line 183
    if-lez v11, :cond_bc

    .line 184
    .line 185
    div-int v3, v5, v11

    .line 186
    .line 187
    :goto_ba
    const/4 v4, 0x0

    .line 188
    goto :goto_be

    .line 189
    :cond_bc
    const/4 v3, 0x0

    .line 190
    goto :goto_ba

    .line 191
    :goto_be
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v6, :cond_102

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    sub-int/2addr v5, v6

    .line 206
    move v8, v4

    .line 207
    :goto_ce
    if-ge v8, v1, :cond_13c

    .line 208
    .line 209
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eq v7, v12, :cond_ff

    .line 224
    .line 225
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 226
    .line 227
    if-eqz v7, :cond_e5

    .line 228
    .line 229
    goto :goto_ff

    .line 230
    :cond_e5
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 231
    .line 232
    sub-int/2addr v5, v7

    .line 233
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    div-int/lit8 v10, v9, 0x2

    .line 242
    .line 243
    sub-int v10, v2, v10

    .line 244
    .line 245
    sub-int v11, v5, v7

    .line 246
    .line 247
    add-int/2addr v9, v10

    .line 248
    invoke-virtual {v4, v11, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 249
    .line 250
    .line 251
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 252
    .line 253
    add-int/2addr v7, v4

    .line 254
    add-int/2addr v7, v3

    .line 255
    sub-int/2addr v5, v7

    .line 256
    :cond_ff
    :goto_ff
    add-int/lit8 v8, v8, 0x1

    .line 257
    .line 258
    goto :goto_ce

    .line 259
    :cond_102
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    move v8, v4

    .line 264
    :goto_107
    if-ge v8, v1, :cond_13c

    .line 265
    .line 266
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 275
    .line 276
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eq v7, v12, :cond_139

    .line 281
    .line 282
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 283
    .line 284
    if-eqz v7, :cond_11e

    .line 285
    .line 286
    goto :goto_139

    .line 287
    :cond_11e
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 288
    .line 289
    add-int/2addr v5, v7

    .line 290
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    div-int/lit8 v10, v9, 0x2

    .line 299
    .line 300
    sub-int v10, v2, v10

    .line 301
    .line 302
    add-int v11, v5, v7

    .line 303
    .line 304
    add-int/2addr v9, v10

    .line 305
    invoke-virtual {v4, v5, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 306
    .line 307
    .line 308
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 309
    .line 310
    add-int/2addr v7, v4

    .line 311
    add-int/2addr v7, v3

    .line 312
    add-int/2addr v7, v5

    .line 313
    move v5, v7

    .line 314
    :cond_139
    :goto_139
    add-int/lit8 v8, v8, 0x1

    .line 315
    .line 316
    goto :goto_107

    .line 317
    :cond_13c
    return-void
.end method

.method public final onMeasure(II)V
    .registers 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->E:Z

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v2, v5, :cond_10

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v2, v4

    .line 18
    :goto_11
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->E:Z

    .line 19
    .line 20
    if-eq v1, v2, :cond_17

    .line 21
    .line 22
    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    .line 23
    .line 24
    :cond_17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->E:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2c

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 33
    .line 34
    if-eqz v2, :cond_2c

    .line 35
    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    .line 37
    .line 38
    if-eq v1, v6, :cond_2c

    .line 39
    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->F:I

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ll/n;->p(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->E:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2fb

    .line 52
    .line 53
    if-lez v1, :cond_2fb

    .line 54
    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->G:I

    .line 94
    .line 95
    div-int v10, v2, v8

    .line 96
    .line 97
    rem-int v11, v2, v8

    .line 98
    .line 99
    if-nez v10, :cond_68

    .line 100
    .line 101
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_68
    div-int/2addr v11, v10

    .line 106
    add-int/2addr v11, v8

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    move v3, v4

    .line 112
    move v12, v3

    .line 113
    move v13, v12

    .line 114
    move v14, v13

    .line 115
    move v15, v14

    .line 116
    move/from16 v16, v15

    .line 117
    .line 118
    const-wide/16 p1, 0x0

    .line 119
    .line 120
    const-wide/16 v18, 0x0

    .line 121
    .line 122
    :goto_79
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->H:I

    .line 123
    .line 124
    if-ge v14, v8, :cond_166

    .line 125
    .line 126
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    move/from16 v21, v6

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    move/from16 v22, v9

    .line 137
    .line 138
    const/16 v9, 0x8

    .line 139
    .line 140
    if-ne v6, v9, :cond_91

    .line 141
    .line 142
    move/from16 v23, v11

    .line 143
    .line 144
    goto/16 :goto_15b

    .line 145
    .line 146
    :cond_91
    instance-of v6, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 147
    .line 148
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    if-eqz v6, :cond_9b

    .line 152
    .line 153
    invoke-virtual {v4, v5, v9, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    :cond_9b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 161
    .line 162
    iput-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->f:Z

    .line 163
    .line 164
    iput v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->c:I

    .line 165
    .line 166
    iput v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 167
    .line 168
    iput-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->d:Z

    .line 169
    .line 170
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 171
    .line 172
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 173
    .line 174
    if-eqz v6, :cond_be

    .line 175
    .line 176
    move-object v9, v4

    .line 177
    check-cast v9, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 178
    .line 179
    invoke-virtual {v9}, Lm/w0;->getText()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-nez v9, :cond_be

    .line 188
    .line 189
    const/4 v9, 0x1

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    const/4 v9, 0x0

    .line 192
    :goto_bf
    iput-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->e:Z

    .line 193
    .line 194
    iget-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 195
    .line 196
    if-eqz v9, :cond_c7

    .line 197
    .line 198
    const/4 v9, 0x1

    .line 199
    goto :goto_c8

    .line 200
    :cond_c7
    move v9, v10

    .line 201
    :goto_c8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 202
    .line 203
    .line 204
    move-result-object v23

    .line 205
    move/from16 v24, v6

    .line 206
    .line 207
    move-object/from16 v6, v23

    .line 208
    .line 209
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 210
    .line 211
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 212
    .line 213
    .line 214
    move-result v23

    .line 215
    move/from16 v25, v10

    .line 216
    .line 217
    sub-int v10, v23, v22

    .line 218
    .line 219
    move/from16 v23, v11

    .line 220
    .line 221
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-eqz v24, :cond_ea

    .line 230
    .line 231
    move-object v11, v4

    .line 232
    check-cast v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 233
    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    const/4 v11, 0x0

    .line 236
    :goto_eb
    if-eqz v11, :cond_f9

    .line 237
    .line 238
    invoke-virtual {v11}, Lm/w0;->getText()Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    if-nez v11, :cond_f9

    .line 247
    .line 248
    const/4 v11, 0x1

    .line 249
    goto :goto_fa

    .line 250
    :cond_f9
    const/4 v11, 0x0

    .line 251
    :goto_fa
    move/from16 v24, v11

    .line 252
    .line 253
    if-lez v9, :cond_121

    .line 254
    .line 255
    if-eqz v11, :cond_103

    .line 256
    .line 257
    const/4 v11, 0x2

    .line 258
    if-lt v9, v11, :cond_121

    .line 259
    .line 260
    :cond_103
    mul-int v11, v23, v9

    .line 261
    .line 262
    const/high16 v9, -0x80000000

    .line 263
    .line 264
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    invoke-virtual {v4, v9, v10}, Landroid/view/View;->measure(II)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    div-int v11, v9, v23

    .line 276
    .line 277
    rem-int v9, v9, v23

    .line 278
    .line 279
    if-eqz v9, :cond_11a

    .line 280
    .line 281
    add-int/lit8 v11, v11, 0x1

    .line 282
    .line 283
    :cond_11a
    if-eqz v24, :cond_122

    .line 284
    .line 285
    const/4 v9, 0x2

    .line 286
    if-ge v11, v9, :cond_122

    .line 287
    .line 288
    const/4 v11, 0x2

    .line 289
    goto :goto_122

    .line 290
    :cond_121
    const/4 v11, 0x0

    .line 291
    :cond_122
    :goto_122
    iget-boolean v9, v6, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 292
    .line 293
    if-nez v9, :cond_12a

    .line 294
    .line 295
    if-eqz v24, :cond_12a

    .line 296
    .line 297
    const/4 v9, 0x1

    .line 298
    goto :goto_12b

    .line 299
    :cond_12a
    const/4 v9, 0x0

    .line 300
    :goto_12b
    iput-boolean v9, v6, Landroidx/appcompat/widget/ActionMenuView$a;->d:Z

    .line 301
    .line 302
    iput v11, v6, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 303
    .line 304
    mul-int v6, v11, v23

    .line 305
    .line 306
    const/high16 v9, 0x40000000    # 2.0f

    .line 307
    .line 308
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-virtual {v4, v6, v10}, Landroid/view/View;->measure(II)V

    .line 313
    .line 314
    .line 315
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$a;->d:Z

    .line 320
    .line 321
    if-eqz v6, :cond_144

    .line 322
    .line 323
    add-int/lit8 v16, v16, 0x1

    .line 324
    .line 325
    :cond_144
    iget-boolean v5, v5, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 326
    .line 327
    if-eqz v5, :cond_149

    .line 328
    .line 329
    const/4 v15, 0x1

    .line 330
    :cond_149
    sub-int v10, v25, v11

    .line 331
    .line 332
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    const/4 v4, 0x1

    .line 341
    if-ne v11, v4, :cond_15b

    .line 342
    .line 343
    shl-int v5, v4, v14

    .line 344
    .line 345
    int-to-long v4, v5

    .line 346
    or-long v18, v18, v4

    .line 347
    .line 348
    :cond_15b
    :goto_15b
    add-int/lit8 v14, v14, 0x1

    .line 349
    .line 350
    move/from16 v6, v21

    .line 351
    .line 352
    move/from16 v9, v22

    .line 353
    .line 354
    move/from16 v11, v23

    .line 355
    .line 356
    const/4 v4, 0x0

    .line 357
    goto/16 :goto_79

    .line 358
    .line 359
    :cond_166
    move/from16 v21, v6

    .line 360
    .line 361
    move/from16 v25, v10

    .line 362
    .line 363
    move/from16 v23, v11

    .line 364
    .line 365
    if-eqz v15, :cond_173

    .line 366
    .line 367
    const/4 v9, 0x2

    .line 368
    if-ne v12, v9, :cond_173

    .line 369
    .line 370
    const/4 v4, 0x1

    .line 371
    goto :goto_174

    .line 372
    :cond_173
    const/4 v4, 0x0

    .line 373
    :goto_174
    move/from16 v10, v25

    .line 374
    .line 375
    const/4 v6, 0x0

    .line 376
    :goto_177
    const-wide/16 v24, 0x1

    .line 377
    .line 378
    if-lez v16, :cond_208

    .line 379
    .line 380
    if-lez v10, :cond_208

    .line 381
    .line 382
    const v9, 0x7fffffff

    .line 383
    .line 384
    .line 385
    move-wide/from16 v26, p1

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    const/4 v14, 0x0

    .line 389
    :goto_184
    if-ge v14, v8, :cond_1b4

    .line 390
    .line 391
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v22

    .line 395
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 396
    .line 397
    .line 398
    move-result-object v22

    .line 399
    move/from16 v28, v3

    .line 400
    .line 401
    move-object/from16 v3, v22

    .line 402
    .line 403
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 404
    .line 405
    move/from16 v22, v4

    .line 406
    .line 407
    iget-boolean v4, v3, Landroidx/appcompat/widget/ActionMenuView$a;->d:Z

    .line 408
    .line 409
    if-nez v4, :cond_19b

    .line 410
    .line 411
    goto :goto_1ad

    .line 412
    :cond_19b
    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 413
    .line 414
    if-ge v3, v9, :cond_1a4

    .line 415
    .line 416
    shl-long v26, v24, v14

    .line 417
    .line 418
    move v9, v3

    .line 419
    const/4 v11, 0x1

    .line 420
    goto :goto_1ad

    .line 421
    :cond_1a4
    if-ne v3, v9, :cond_1ad

    .line 422
    .line 423
    shl-long v3, v24, v14

    .line 424
    .line 425
    or-long v26, v26, v3

    .line 426
    .line 427
    add-int/lit8 v3, v11, 0x1

    .line 428
    .line 429
    move v11, v3

    .line 430
    :cond_1ad
    :goto_1ad
    add-int/lit8 v14, v14, 0x1

    .line 431
    .line 432
    move/from16 v4, v22

    .line 433
    .line 434
    move/from16 v3, v28

    .line 435
    .line 436
    goto :goto_184

    .line 437
    :cond_1b4
    move/from16 v28, v3

    .line 438
    .line 439
    move/from16 v22, v4

    .line 440
    .line 441
    or-long v18, v18, v26

    .line 442
    .line 443
    if-le v11, v10, :cond_1bf

    .line 444
    .line 445
    :goto_1bc
    move/from16 v29, v15

    .line 446
    .line 447
    goto :goto_20b

    .line 448
    :cond_1bf
    add-int/lit8 v9, v9, 0x1

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    :goto_1c2
    if-ge v3, v8, :cond_201

    .line 452
    .line 453
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 462
    .line 463
    const/16 v17, 0x1

    .line 464
    .line 465
    shl-int v11, v17, v3

    .line 466
    .line 467
    move/from16 v29, v15

    .line 468
    .line 469
    int-to-long v14, v11

    .line 470
    and-long v24, v26, v14

    .line 471
    .line 472
    cmp-long v11, v24, p1

    .line 473
    .line 474
    if-nez v11, :cond_1e2

    .line 475
    .line 476
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 477
    .line 478
    if-ne v4, v9, :cond_1fc

    .line 479
    .line 480
    or-long v18, v18, v14

    .line 481
    .line 482
    goto :goto_1fc

    .line 483
    :cond_1e2
    if-eqz v22, :cond_1f2

    .line 484
    .line 485
    iget-boolean v11, v6, Landroidx/appcompat/widget/ActionMenuView$a;->e:Z

    .line 486
    .line 487
    if-eqz v11, :cond_1f2

    .line 488
    .line 489
    const/4 v11, 0x1

    .line 490
    if-ne v10, v11, :cond_1f3

    .line 491
    .line 492
    add-int v14, v5, v23

    .line 493
    .line 494
    const/4 v15, 0x0

    .line 495
    invoke-virtual {v4, v14, v15, v5, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 496
    .line 497
    .line 498
    goto :goto_1f3

    .line 499
    :cond_1f2
    const/4 v11, 0x1

    .line 500
    :cond_1f3
    :goto_1f3
    iget v4, v6, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 501
    .line 502
    add-int/2addr v4, v11

    .line 503
    iput v4, v6, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 504
    .line 505
    iput-boolean v11, v6, Landroidx/appcompat/widget/ActionMenuView$a;->f:Z

    .line 506
    .line 507
    add-int/lit8 v10, v10, -0x1

    .line 508
    .line 509
    :cond_1fc
    :goto_1fc
    add-int/lit8 v3, v3, 0x1

    .line 510
    .line 511
    move/from16 v15, v29

    .line 512
    .line 513
    goto :goto_1c2

    .line 514
    :cond_201
    move/from16 v4, v22

    .line 515
    .line 516
    move/from16 v3, v28

    .line 517
    .line 518
    const/4 v6, 0x1

    .line 519
    goto/16 :goto_177

    .line 520
    .line 521
    :cond_208
    move/from16 v28, v3

    .line 522
    .line 523
    goto :goto_1bc

    .line 524
    :goto_20b
    const/4 v4, 0x1

    .line 525
    if-nez v29, :cond_212

    .line 526
    .line 527
    if-ne v12, v4, :cond_212

    .line 528
    .line 529
    move v3, v4

    .line 530
    goto :goto_213

    .line 531
    :cond_212
    const/4 v3, 0x0

    .line 532
    :goto_213
    if-lez v10, :cond_2c5

    .line 533
    .line 534
    cmp-long v5, v18, p1

    .line 535
    .line 536
    if-eqz v5, :cond_2c5

    .line 537
    .line 538
    sub-int/2addr v12, v4

    .line 539
    if-lt v10, v12, :cond_220

    .line 540
    .line 541
    if-nez v3, :cond_220

    .line 542
    .line 543
    if-le v13, v4, :cond_2c5

    .line 544
    .line 545
    :cond_220
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    int-to-float v4, v4

    .line 550
    if-nez v3, :cond_25b

    .line 551
    .line 552
    and-long v11, v18, v24

    .line 553
    .line 554
    cmp-long v3, v11, p1

    .line 555
    .line 556
    const/high16 v5, 0x3f000000    # 0.5f

    .line 557
    .line 558
    if-eqz v3, :cond_23f

    .line 559
    .line 560
    const/4 v15, 0x0

    .line 561
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 570
    .line 571
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$a;->e:Z

    .line 572
    .line 573
    if-nez v3, :cond_23f

    .line 574
    .line 575
    sub-float/2addr v4, v5

    .line 576
    :cond_23f
    add-int/lit8 v3, v8, -0x1

    .line 577
    .line 578
    const/16 v17, 0x1

    .line 579
    .line 580
    shl-int v9, v17, v3

    .line 581
    .line 582
    int-to-long v11, v9

    .line 583
    and-long v11, v18, v11

    .line 584
    .line 585
    cmp-long v9, v11, p1

    .line 586
    .line 587
    if-eqz v9, :cond_25b

    .line 588
    .line 589
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 598
    .line 599
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$a;->e:Z

    .line 600
    .line 601
    if-nez v3, :cond_25b

    .line 602
    .line 603
    sub-float/2addr v4, v5

    .line 604
    :cond_25b
    const/4 v3, 0x0

    .line 605
    cmpl-float v3, v4, v3

    .line 606
    .line 607
    if-lez v3, :cond_266

    .line 608
    .line 609
    mul-int v10, v10, v23

    .line 610
    .line 611
    int-to-float v3, v10

    .line 612
    div-float/2addr v3, v4

    .line 613
    float-to-int v9, v3

    .line 614
    goto :goto_267

    .line 615
    :cond_266
    const/4 v9, 0x0

    .line 616
    :goto_267
    move v4, v6

    .line 617
    const/4 v3, 0x0

    .line 618
    :goto_269
    if-ge v3, v8, :cond_2c4

    .line 619
    .line 620
    const/16 v17, 0x1

    .line 621
    .line 622
    shl-int v5, v17, v3

    .line 623
    .line 624
    int-to-long v5, v5

    .line 625
    and-long v5, v18, v5

    .line 626
    .line 627
    cmp-long v5, v5, p1

    .line 628
    .line 629
    if-nez v5, :cond_27a

    .line 630
    .line 631
    const/4 v11, 0x1

    .line 632
    const/16 v20, 0x2

    .line 633
    .line 634
    goto :goto_2c1

    .line 635
    :cond_27a
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 644
    .line 645
    instance-of v5, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 646
    .line 647
    if-eqz v5, :cond_2a0

    .line 648
    .line 649
    iput v9, v6, Landroidx/appcompat/widget/ActionMenuView$a;->c:I

    .line 650
    .line 651
    const/4 v4, 0x1

    .line 652
    iput-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$a;->f:Z

    .line 653
    .line 654
    if-nez v3, :cond_29b

    .line 655
    .line 656
    iget-boolean v4, v6, Landroidx/appcompat/widget/ActionMenuView$a;->e:Z

    .line 657
    .line 658
    if-nez v4, :cond_29b

    .line 659
    .line 660
    neg-int v4, v9

    .line 661
    const/16 v20, 0x2

    .line 662
    .line 663
    div-int/lit8 v4, v4, 0x2

    .line 664
    .line 665
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 666
    .line 667
    goto :goto_29d

    .line 668
    :cond_29b
    const/16 v20, 0x2

    .line 669
    .line 670
    :goto_29d
    const/4 v4, 0x1

    .line 671
    const/4 v11, 0x1

    .line 672
    goto :goto_2c1

    .line 673
    :cond_2a0
    const/16 v20, 0x2

    .line 674
    .line 675
    iget-boolean v5, v6, Landroidx/appcompat/widget/ActionMenuView$a;->a:Z

    .line 676
    .line 677
    if-eqz v5, :cond_2b2

    .line 678
    .line 679
    iput v9, v6, Landroidx/appcompat/widget/ActionMenuView$a;->c:I

    .line 680
    .line 681
    const/4 v11, 0x1

    .line 682
    iput-boolean v11, v6, Landroidx/appcompat/widget/ActionMenuView$a;->f:Z

    .line 683
    .line 684
    neg-int v4, v9

    .line 685
    div-int/lit8 v4, v4, 0x2

    .line 686
    .line 687
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 688
    .line 689
    move v4, v11

    .line 690
    goto :goto_2c1

    .line 691
    :cond_2b2
    const/4 v11, 0x1

    .line 692
    if-eqz v3, :cond_2b9

    .line 693
    .line 694
    div-int/lit8 v5, v9, 0x2

    .line 695
    .line 696
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 697
    .line 698
    :cond_2b9
    add-int/lit8 v5, v8, -0x1

    .line 699
    .line 700
    if-eq v3, v5, :cond_2c1

    .line 701
    .line 702
    div-int/lit8 v5, v9, 0x2

    .line 703
    .line 704
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 705
    .line 706
    :cond_2c1
    :goto_2c1
    add-int/lit8 v3, v3, 0x1

    .line 707
    .line 708
    goto :goto_269

    .line 709
    :cond_2c4
    move v6, v4

    .line 710
    :cond_2c5
    if-eqz v6, :cond_2ee

    .line 711
    .line 712
    const/4 v4, 0x0

    .line 713
    :goto_2c8
    if-ge v4, v8, :cond_2ee

    .line 714
    .line 715
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 724
    .line 725
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$a;->f:Z

    .line 726
    .line 727
    if-nez v6, :cond_2db

    .line 728
    .line 729
    const/high16 v9, 0x40000000    # 2.0f

    .line 730
    .line 731
    goto :goto_2eb

    .line 732
    :cond_2db
    iget v6, v5, Landroidx/appcompat/widget/ActionMenuView$a;->b:I

    .line 733
    .line 734
    mul-int v6, v6, v23

    .line 735
    .line 736
    iget v5, v5, Landroidx/appcompat/widget/ActionMenuView$a;->c:I

    .line 737
    .line 738
    add-int/2addr v6, v5

    .line 739
    const/high16 v9, 0x40000000    # 2.0f

    .line 740
    .line 741
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 742
    .line 743
    .line 744
    move-result v5

    .line 745
    invoke-virtual {v3, v5, v7}, Landroid/view/View;->measure(II)V

    .line 746
    .line 747
    .line 748
    :goto_2eb
    add-int/lit8 v4, v4, 0x1

    .line 749
    .line 750
    goto :goto_2c8

    .line 751
    :cond_2ee
    const/high16 v9, 0x40000000    # 2.0f

    .line 752
    .line 753
    if-eq v1, v9, :cond_2f5

    .line 754
    .line 755
    move/from16 v6, v28

    .line 756
    .line 757
    goto :goto_2f7

    .line 758
    :cond_2f5
    move/from16 v6, v21

    .line 759
    .line 760
    :goto_2f7
    invoke-virtual {v0, v2, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 761
    .line 762
    .line 763
    return-void

    .line 764
    :cond_2fb
    move/from16 v10, p2

    .line 765
    .line 766
    const/4 v9, 0x0

    .line 767
    :goto_2fe
    if-ge v9, v1, :cond_312

    .line 768
    .line 769
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    .line 778
    .line 779
    const/4 v15, 0x0

    .line 780
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 781
    .line 782
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 783
    .line 784
    add-int/lit8 v9, v9, 0x1

    .line 785
    .line 786
    goto :goto_2fe

    .line 787
    :cond_312
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/b;->onMeasure(II)V

    .line 788
    .line 789
    .line 790
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 2
    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/widget/a;->y:Z

    .line 4
    .line 5
    return-void
.end method

.method public setOnMenuItemClickListener(Lm/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->I:Lm/j;

    .line 2
    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/a;->i:Lm/h;

    .line 7
    .line 8
    if-eqz v1, :cond_d

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Landroidx/appcompat/widget/a;->k:Z

    .line 16
    .line 17
    iput-object p1, v0, Landroidx/appcompat/widget/a;->j:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1a

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 6
    .line 7
    if-nez p1, :cond_f

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroid/content/Context;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->y:Landroid/content/Context;

    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 2
    .line 3
    iput-object p0, p1, Ll/d;->h:Ll/b0;

    .line 4
    .line 5
    iget-object p1, p1, Ll/d;->c:Ll/n;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->x:Ll/n;

    .line 8
    .line 9
    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.a (androidx.appcompat.widget.ActionMenuView$a)
.class public Landroidx/appcompat/widget/ActionMenuView$a;
.super Landroidx/appcompat/widget/b$a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/b$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
