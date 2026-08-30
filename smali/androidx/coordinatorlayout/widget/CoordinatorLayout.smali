###### Class androidx.coordinatorlayout.widget.CoordinatorLayout (androidx.coordinatorlayout.widget.CoordinatorLayout)
.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/o;
.implements Lj0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/ThreadLocal;

.field public static final B:La6/c;

.field public static final C:Li0/c;

.field public static final y:Ljava/lang/String;

.field public static final z:[Ljava/lang/Class;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/google/firebase/messaging/y;

.field public final c:Ljava/util/ArrayList;

.field public final d:[I

.field public e:Z

.field public f:Z

.field public final g:[I

.field public h:Landroid/view/View;

.field public i:Lw/b;

.field public j:Z

.field public k:Lj0/b1;

.field public l:Z

.field public m:Landroid/graphics/drawable/Drawable;

.field public v:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public w:Lk1/h;

.field public final x:Lj0/q;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, La6/c;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, La6/c;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B:La6/c;

    .line 24
    .line 25
    new-array v0, v1, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v1, Landroid/content/Context;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const-class v1, Landroid/util/AttributeSet;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z:[Ljava/lang/Class;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->A:Ljava/lang/ThreadLocal;

    .line 45
    .line 46
    new-instance v0, Li0/c;

    .line 47
    .line 48
    invoke-direct {v0}, Li0/c;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:Li0/c;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    const v5, 0x7f040079

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/y;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lcom/google/firebase/messaging/y;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [I

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:[I

    .line 34
    .line 35
    new-instance v0, Lj0/q;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lj0/q;

    .line 41
    .line 42
    sget-object v2, Lv/a;->a:[I

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-virtual {p1, p2, v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x0

    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p1

    .line 52
    move-object v3, p2

    .line 53
    invoke-static/range {v0 .. v6}, Lj0/k0;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_5c

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .line 78
    array-length p1, p1

    .line 79
    :goto_4e
    if-ge v7, p1, :cond_5c

    .line 80
    .line 81
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    .line 82
    .line 83
    aget v2, v1, v7

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    mul-float/2addr v2, p2

    .line 87
    float-to-int v2, v2

    .line 88
    aput v2, v1, v7

    .line 89
    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_4e

    .line 93
    :cond_5c
    const/4 p1, 0x1

    .line 94
    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t()V

    .line 104
    .line 105
    .line 106
    new-instance p2, Lw/a;

    .line 107
    .line 108
    invoke-direct {p2, p0}, Lw/a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 109
    .line 110
    .line 111
    invoke-super {p0, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 112
    .line 113
    .line 114
    sget-object p2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_7c

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    return-void
.end method

.method public static g()Landroid/graphics/Rect;
    .registers 1

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:Li0/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Li0/c;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-object v0
.end method

.method public static k(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V
    .registers 12

    .line 1
    iget v0, p3, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    :cond_6
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p3, Landroidx/coordinatorlayout/widget/b;->d:I

    .line 12
    .line 13
    and-int/lit8 v1, p3, 0x7

    .line 14
    .line 15
    if-nez v1, :cond_14

    .line 16
    .line 17
    const v1, 0x800003

    .line 18
    .line 19
    .line 20
    or-int/2addr p3, v1

    .line 21
    :cond_14
    and-int/lit8 v1, p3, 0x70

    .line 22
    .line 23
    if-nez v1, :cond_1a

    .line 24
    .line 25
    or-int/lit8 p3, p3, 0x30

    .line 26
    .line 27
    :cond_1a
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    and-int/lit8 p3, v0, 0x7

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x70

    .line 34
    .line 35
    and-int/lit8 v1, p0, 0x7

    .line 36
    .line 37
    and-int/lit8 p0, p0, 0x70

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v1, v3, :cond_32

    .line 42
    .line 43
    if-eq v1, v2, :cond_2f

    .line 44
    .line 45
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    goto :goto_3b

    .line 48
    :cond_2f
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    goto :goto_3b

    .line 51
    :cond_32
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    .line 59
    add-int/2addr v1, v4

    .line 60
    :goto_3b
    const/16 v4, 0x50

    .line 61
    .line 62
    const/16 v5, 0x10

    .line 63
    .line 64
    if-eq p0, v5, :cond_49

    .line 65
    .line 66
    if-eq p0, v4, :cond_46

    .line 67
    .line 68
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    goto :goto_52

    .line 71
    :cond_46
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    goto :goto_52

    .line 74
    :cond_49
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    .line 81
    .line 82
    add-int/2addr p0, p1

    .line 83
    :goto_52
    if-eq p3, v3, :cond_58

    .line 84
    .line 85
    if-eq p3, v2, :cond_5b

    .line 86
    .line 87
    sub-int/2addr v1, p4

    .line 88
    goto :goto_5b

    .line 89
    :cond_58
    div-int/lit8 p1, p4, 0x2

    .line 90
    .line 91
    sub-int/2addr v1, p1

    .line 92
    :cond_5b
    :goto_5b
    if-eq v0, v5, :cond_61

    .line 93
    .line 94
    if-eq v0, v4, :cond_64

    .line 95
    .line 96
    sub-int/2addr p0, p5

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    div-int/lit8 p1, p5, 0x2

    .line 99
    .line 100
    sub-int/2addr p0, p1

    .line 101
    :cond_64
    :goto_64
    add-int/2addr p4, v1

    .line 102
    add-int/2addr p5, p0

    .line 103
    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static m(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 8
    .line 9
    if-nez v1, :cond_5e

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v2, v1

    .line 17
    :goto_10
    if-eqz p0, :cond_21

    .line 18
    .line 19
    const-class v2, Landroidx/coordinatorlayout/widget/a;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/coordinatorlayout/widget/a;

    .line 26
    .line 27
    if-nez v2, :cond_21

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_10

    .line 34
    :cond_21
    const/4 p0, 0x1

    .line 35
    if-eqz v2, :cond_5c

    .line 36
    .line 37
    :try_start_24
    invoke-interface {v2}, Landroidx/coordinatorlayout/widget/a;->value()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 50
    .line 51
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 52
    .line 53
    if-eq v3, v1, :cond_5c

    .line 54
    .line 55
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 56
    .line 57
    iput-boolean p0, v0, Landroidx/coordinatorlayout/widget/b;->b:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3a} :catch_3b

    .line 58
    .line 59
    goto :goto_5c

    .line 60
    :catch_3b
    move-exception v1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Default behavior class "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Landroidx/coordinatorlayout/widget/a;->value()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " could not be instantiated. Did you forget a default constructor?"

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "CoordinatorLayout"

    .line 89
    .line 90
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_5c
    :goto_5c
    iput-boolean p0, v0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 94
    .line 95
    :cond_5e
    return-object v0
.end method

.method public static r(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 8
    .line 9
    if-eq v1, p1, :cond_13

    .line 10
    .line 11
    sub-int v1, p1, v1

    .line 12
    .line 13
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 16
    .line 17
    .line 18
    iput p1, v0, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public static s(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 8
    .line 9
    if-eq v1, p1, :cond_13

    .line 10
    .line 11
    sub-int v1, p1, v1

    .line 12
    .line 13
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    .line 17
    .line 18
    iput p1, v0, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 19
    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lj0/q;

    .line 3
    .line 4
    if-ne p4, p1, :cond_8

    .line 5
    .line 6
    iput p3, v0, Lj0/q;->b:I

    .line 7
    .line 8
    goto :goto_a

    .line 9
    :cond_8
    iput p3, v0, Lj0/q;->a:I

    .line 10
    .line 11
    :goto_a
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x0

    .line 18
    :goto_11
    if-ge p2, p1, :cond_23

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Landroidx/coordinatorlayout/widget/b;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    add-int/lit8 p2, p2, 0x1

    .line 34
    .line 35
    goto :goto_11

    .line 36
    :cond_23
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lj0/q;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p2, p1, :cond_9

    .line 6
    .line 7
    iput v1, v0, Lj0/q;->b:I

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    iput v1, v0, Lj0/q;->a:I

    .line 11
    .line 12
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_f
    if-ge v1, p1, :cond_21

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_f

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    .line 36
    .line 37
    return-void
.end method

.method public final c(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_6
    if-ge p3, p1, :cond_21

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    const/16 p6, 0x8

    .line 18
    .line 19
    if-ne p5, p6, :cond_15

    .line 20
    .line 21
    goto :goto_1e

    .line 22
    :cond_15
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    check-cast p4, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :goto_1e
    add-int/lit8 p3, p3, 0x1

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    aget p1, p7, p2

    .line 35
    .line 36
    aput p1, p7, p2

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    aget p2, p7, p1

    .line 40
    .line 41
    aput p2, p7, p1

    .line 42
    .line 43
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/b;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final d(Landroid/view/View;IIIII)V
    .registers 15

    .line 1
    const/4 v6, 0x0

    .line 2
    iget-object v7, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:[I

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;IIIII[I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final drawableStateChanged()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_16

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_16

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public final e(III[I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_6
    if-ge p3, p1, :cond_21

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-ne v1, v2, :cond_15

    .line 20
    .line 21
    goto :goto_1e

    .line 22
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :goto_1e
    add-int/lit8 p3, p3, 0x1

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    aput p2, p4, p2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput p2, p4, p1

    .line 38
    .line 39
    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_6
    if-ge p3, p1, :cond_20

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    check-cast p4, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    iget-object p4, p4, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 29
    .line 30
    :goto_1d
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    goto :goto_6

    .line 33
    :cond_20
    return p2
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/b;

    if-eqz v0, :cond_c

    .line 3
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    check-cast p1, Landroidx/coordinatorlayout/widget/b;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroidx/coordinatorlayout/widget/b;)V

    return-object v0

    .line 4
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 6
    :cond_18
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getLastWindowInsets()Lj0/b1;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->x:Lj0/q;

    .line 2
    .line 3
    iget v1, v0, Lj0/q;->a:I

    .line 4
    .line 5
    iget v0, v0, Lj0/q;->b:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final h(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v0, v4

    .line 23
    sub-int/2addr v0, p3

    .line 24
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    .line 26
    sub-int/2addr v0, v4

    .line 27
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    .line 41
    add-int/2addr v2, v3

    .line 42
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v1, v4

    .line 49
    sub-int/2addr v1, p4

    .line 50
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    .line 52
    sub-int/2addr v1, p1

    .line 53
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/2addr p3, v0

    .line 62
    add-int/2addr p4, p1

    .line 63
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final i(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_29

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-ne v0, v1, :cond_f

    .line 14
    .line 15
    goto :goto_29

    .line 16
    :cond_f
    if-eqz p3, :cond_15

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    :goto_29
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final j(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    sget-object v0, Lw/d;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lw/d;->a:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/Matrix;

    .line 22
    .line 23
    if-nez v1, :cond_21

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 35
    .line 36
    .line 37
    :goto_24
    invoke-static {p0, p1, v1}, Lw/d;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lw/d;->b:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    if-nez v0, :cond_39

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 62
    .line 63
    .line 64
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    const/high16 v1, 0x3f000000    # 0.5f

    .line 67
    .line 68
    add-float/2addr p1, v1

    .line 69
    float-to-int p1, p1

    .line 70
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 71
    .line 72
    add-float/2addr v2, v1

    .line 73
    float-to-int v2, v2

    .line 74
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    add-float/2addr v3, v1

    .line 77
    float-to-int v3, v3

    .line 78
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 79
    .line 80
    add-float/2addr v0, v1

    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final l(I)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "CoordinatorLayout"

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    .line 5
    .line 6
    if-nez v2, :cond_21

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "No keylines defined for "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, " - attempted index lookup "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_21
    if-ltz p1, :cond_2a

    .line 35
    .line 36
    array-length v3, v2

    .line 37
    if-lt p1, v3, :cond_27

    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    aget p1, v2, p1

    .line 41
    .line 42
    return p1

    .line 43
    :cond_2a
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, "Keyline index "

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " out of range for "

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v0
.end method

.method public final n(I)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    const/4 v14, 0x0

    .line 30
    :goto_1d
    sget-object v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:Li0/c;

    .line 31
    .line 32
    if-ge v14, v9, :cond_272

    .line 33
    .line 34
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Landroidx/coordinatorlayout/widget/b;

    .line 45
    .line 46
    if-nez v1, :cond_3f

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/16 v7, 0x8

    .line 53
    .line 54
    if-ne v6, v7, :cond_3f

    .line 55
    .line 56
    move-object v5, v2

    .line 57
    move v2, v9

    .line 58
    move-object v4, v12

    .line 59
    move/from16 v19, v14

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    goto/16 :goto_26b

    .line 63
    .line 64
    :cond_3f
    const/4 v6, 0x0

    .line 65
    :goto_40
    if-ge v6, v14, :cond_e5

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Landroid/view/View;

    .line 72
    .line 73
    iget-object v8, v5, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 74
    .line 75
    if-ne v8, v7, :cond_cb

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 82
    .line 83
    iget-object v8, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 84
    .line 85
    if-eqz v8, :cond_cb

    .line 86
    .line 87
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    move-object/from16 v16, v5

    .line 96
    .line 97
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    move/from16 v17, v3

    .line 102
    .line 103
    iget-object v3, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v0, v3, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 106
    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v4, v13, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 110
    .line 111
    .line 112
    move v3, v6

    .line 113
    move-object v6, v7

    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    move-object/from16 v18, v4

    .line 119
    .line 120
    move-object v4, v8

    .line 121
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    move-object/from16 v19, v16

    .line 126
    .line 127
    move-object/from16 v16, v2

    .line 128
    .line 129
    move-object/from16 v2, v19

    .line 130
    .line 131
    move/from16 v19, v17

    .line 132
    .line 133
    move/from16 v17, v3

    .line 134
    .line 135
    move/from16 v3, v19

    .line 136
    .line 137
    move/from16 v19, v14

    .line 138
    .line 139
    move-object/from16 v14, v18

    .line 140
    .line 141
    invoke-static/range {v3 .. v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V

    .line 142
    .line 143
    .line 144
    move/from16 v18, v9

    .line 145
    .line 146
    iget v9, v5, Landroid/graphics/Rect;->left:I

    .line 147
    .line 148
    move-object/from16 v20, v12

    .line 149
    .line 150
    iget v12, v13, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    if-ne v9, v12, :cond_9d

    .line 153
    .line 154
    iget v9, v5, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    :cond_9d
    invoke-virtual {v0, v6, v5, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V

    .line 159
    .line 160
    .line 161
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    iget v7, v13, Landroid/graphics/Rect;->left:I

    .line 164
    .line 165
    sub-int/2addr v6, v7

    .line 166
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    iget v8, v13, Landroid/graphics/Rect;->top:I

    .line 169
    .line 170
    sub-int/2addr v7, v8

    .line 171
    if-eqz v6, :cond_b1

    .line 172
    .line 173
    sget-object v8, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 174
    .line 175
    invoke-virtual {v14, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 176
    .line 177
    .line 178
    :cond_b1
    if-eqz v7, :cond_b8

    .line 179
    .line 180
    sget-object v6, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 181
    .line 182
    invoke-virtual {v14, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 183
    .line 184
    .line 185
    :cond_b8
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v15, v4}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v13}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v15, v5}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_d7

    .line 204
    :cond_cb
    move-object/from16 v16, v2

    .line 205
    .line 206
    move-object v2, v5

    .line 207
    move/from16 v17, v6

    .line 208
    .line 209
    move/from16 v18, v9

    .line 210
    .line 211
    move-object/from16 v20, v12

    .line 212
    .line 213
    move/from16 v19, v14

    .line 214
    .line 215
    move-object v14, v4

    .line 216
    :goto_d7
    add-int/lit8 v6, v17, 0x1

    .line 217
    .line 218
    move-object v5, v2

    .line 219
    move-object v4, v14

    .line 220
    move-object/from16 v2, v16

    .line 221
    .line 222
    move/from16 v9, v18

    .line 223
    .line 224
    move/from16 v14, v19

    .line 225
    .line 226
    move-object/from16 v12, v20

    .line 227
    .line 228
    goto/16 :goto_40

    .line 229
    .line 230
    :cond_e5
    move-object/from16 v16, v2

    .line 231
    .line 232
    move-object v2, v5

    .line 233
    move/from16 v18, v9

    .line 234
    .line 235
    move-object/from16 v20, v12

    .line 236
    .line 237
    move/from16 v19, v14

    .line 238
    .line 239
    move-object v14, v4

    .line 240
    const/4 v4, 0x1

    .line 241
    invoke-virtual {v0, v14, v11, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 242
    .line 243
    .line 244
    iget v5, v2, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 245
    .line 246
    const/4 v6, 0x5

    .line 247
    const/4 v7, 0x3

    .line 248
    const/16 v8, 0x50

    .line 249
    .line 250
    const/16 v9, 0x30

    .line 251
    .line 252
    if-eqz v5, :cond_14b

    .line 253
    .line 254
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_14b

    .line 259
    .line 260
    iget v5, v2, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 261
    .line 262
    invoke-static {v5, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    and-int/lit8 v12, v5, 0x70

    .line 267
    .line 268
    if-eq v12, v9, :cond_120

    .line 269
    .line 270
    if-eq v12, v8, :cond_110

    .line 271
    .line 272
    goto :goto_12a

    .line 273
    :cond_110
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    iget v4, v11, Landroid/graphics/Rect;->top:I

    .line 280
    .line 281
    sub-int/2addr v13, v4

    .line 282
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 287
    .line 288
    goto :goto_12a

    .line 289
    :cond_120
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 292
    .line 293
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 298
    .line 299
    :goto_12a
    and-int/lit8 v4, v5, 0x7

    .line 300
    .line 301
    if-eq v4, v7, :cond_141

    .line 302
    .line 303
    if-eq v4, v6, :cond_131

    .line 304
    .line 305
    goto :goto_14b

    .line 306
    :cond_131
    iget v4, v10, Landroid/graphics/Rect;->right:I

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 313
    .line 314
    sub-int/2addr v5, v12

    .line 315
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    goto :goto_14b

    .line 322
    :cond_141
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 323
    .line 324
    iget v5, v11, Landroid/graphics/Rect;->right:I

    .line 325
    .line 326
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 331
    .line 332
    :cond_14b
    :goto_14b
    iget v2, v2, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 333
    .line 334
    if-eqz v2, :cond_228

    .line 335
    .line 336
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_228

    .line 341
    .line 342
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 343
    .line 344
    invoke-virtual {v14}, Landroid/view/View;->isLaidOut()Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_15f

    .line 349
    .line 350
    goto/16 :goto_228

    .line 351
    .line 352
    :cond_15f
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-lez v2, :cond_228

    .line 357
    .line 358
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-gtz v2, :cond_16d

    .line 363
    .line 364
    goto/16 :goto_228

    .line 365
    .line 366
    :cond_16d
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 371
    .line 372
    iget-object v4, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 373
    .line 374
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 387
    .line 388
    .line 389
    move-result v13

    .line 390
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    invoke-virtual {v5, v12, v13, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v5}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-eqz v5, :cond_1a7

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v15, v4}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto/16 :goto_228

    .line 423
    .line 424
    :cond_1a7
    iget v5, v2, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 425
    .line 426
    invoke-static {v5, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    and-int/lit8 v6, v5, 0x30

    .line 431
    .line 432
    if-ne v6, v9, :cond_1c3

    .line 433
    .line 434
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 435
    .line 436
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 437
    .line 438
    sub-int/2addr v6, v7

    .line 439
    iget v7, v2, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 440
    .line 441
    sub-int/2addr v6, v7

    .line 442
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 443
    .line 444
    if-ge v6, v7, :cond_1c3

    .line 445
    .line 446
    sub-int/2addr v7, v6

    .line 447
    invoke-static {v14, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(Landroid/view/View;I)V

    .line 448
    .line 449
    .line 450
    const/4 v6, 0x1

    .line 451
    goto :goto_1c4

    .line 452
    :cond_1c3
    const/4 v6, 0x0

    .line 453
    :goto_1c4
    and-int/lit8 v7, v5, 0x50

    .line 454
    .line 455
    if-ne v7, v8, :cond_1de

    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 462
    .line 463
    sub-int/2addr v7, v8

    .line 464
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 465
    .line 466
    sub-int/2addr v7, v8

    .line 467
    iget v8, v2, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 468
    .line 469
    add-int/2addr v7, v8

    .line 470
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 471
    .line 472
    if-ge v7, v8, :cond_1de

    .line 473
    .line 474
    sub-int/2addr v7, v8

    .line 475
    invoke-static {v14, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(Landroid/view/View;I)V

    .line 476
    .line 477
    .line 478
    const/4 v6, 0x1

    .line 479
    :cond_1de
    if-nez v6, :cond_1e4

    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    invoke-static {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s(Landroid/view/View;I)V

    .line 483
    .line 484
    .line 485
    :cond_1e4
    and-int/lit8 v6, v5, 0x3

    .line 486
    .line 487
    const/4 v7, 0x3

    .line 488
    if-ne v6, v7, :cond_1fb

    .line 489
    .line 490
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 491
    .line 492
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 493
    .line 494
    sub-int/2addr v6, v7

    .line 495
    iget v7, v2, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 496
    .line 497
    sub-int/2addr v6, v7

    .line 498
    iget v7, v10, Landroid/graphics/Rect;->left:I

    .line 499
    .line 500
    if-ge v6, v7, :cond_1fb

    .line 501
    .line 502
    sub-int/2addr v7, v6

    .line 503
    invoke-static {v14, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;I)V

    .line 504
    .line 505
    .line 506
    const/4 v6, 0x1

    .line 507
    goto :goto_1fc

    .line 508
    :cond_1fb
    const/4 v6, 0x0

    .line 509
    :goto_1fc
    and-int/lit8 v5, v5, 0x5

    .line 510
    .line 511
    const/4 v7, 0x5

    .line 512
    if-ne v5, v7, :cond_219

    .line 513
    .line 514
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 519
    .line 520
    sub-int/2addr v5, v7

    .line 521
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 522
    .line 523
    sub-int/2addr v5, v7

    .line 524
    iget v2, v2, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 525
    .line 526
    add-int/2addr v5, v2

    .line 527
    iget v2, v10, Landroid/graphics/Rect;->right:I

    .line 528
    .line 529
    if-ge v5, v2, :cond_219

    .line 530
    .line 531
    sub-int/2addr v5, v2

    .line 532
    invoke-static {v14, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;I)V

    .line 533
    .line 534
    .line 535
    const/16 v17, 0x1

    .line 536
    .line 537
    goto :goto_21b

    .line 538
    :cond_219
    move/from16 v17, v6

    .line 539
    .line 540
    :goto_21b
    const/4 v6, 0x0

    .line 541
    if-nez v17, :cond_221

    .line 542
    .line 543
    invoke-static {v14, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;I)V

    .line 544
    .line 545
    .line 546
    :cond_221
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v15, v4}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    goto :goto_229

    .line 553
    :cond_228
    :goto_228
    const/4 v6, 0x0

    .line 554
    :goto_229
    const/4 v2, 0x2

    .line 555
    if-eq v1, v2, :cond_250

    .line 556
    .line 557
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 562
    .line 563
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    .line 564
    .line 565
    move-object/from16 v4, v20

    .line 566
    .line 567
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-eqz v2, :cond_244

    .line 575
    .line 576
    move-object/from16 v5, v16

    .line 577
    .line 578
    move/from16 v2, v18

    .line 579
    .line 580
    goto :goto_26b

    .line 581
    :cond_244
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 586
    .line 587
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    .line 588
    .line 589
    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 590
    .line 591
    .line 592
    goto :goto_252

    .line 593
    :cond_250
    move-object/from16 v4, v20

    .line 594
    .line 595
    :goto_252
    add-int/lit8 v14, v19, 0x1

    .line 596
    .line 597
    move/from16 v2, v18

    .line 598
    .line 599
    :goto_256
    move-object/from16 v5, v16

    .line 600
    .line 601
    if-ge v14, v2, :cond_26b

    .line 602
    .line 603
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    check-cast v7, Landroid/view/View;

    .line 608
    .line 609
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 610
    .line 611
    .line 612
    move-result-object v7

    .line 613
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 614
    .line 615
    iget-object v7, v7, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 616
    .line 617
    add-int/lit8 v14, v14, 0x1

    .line 618
    .line 619
    goto :goto_256

    .line 620
    :cond_26b
    :goto_26b
    add-int/lit8 v14, v19, 0x1

    .line 621
    .line 622
    move v9, v2

    .line 623
    move-object v12, v4

    .line 624
    move-object v2, v5

    .line 625
    goto/16 :goto_1d

    .line 626
    .line 627
    :cond_272
    move-object v4, v12

    .line 628
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v15, v10}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v15, v11}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v15, v4}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    return-void
.end method

.method public final o(Landroid/view/MotionEvent;I)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v2, v1, -0x1

    .line 18
    .line 19
    :goto_12
    if-ltz v2, :cond_26

    .line 20
    .line 21
    if-eqz v0, :cond_1b

    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v3, v2

    .line 29
    :goto_1c
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    goto :goto_12

    .line 39
    :cond_26
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->B:La6/c;

    .line 40
    .line 41
    if-eqz v0, :cond_2d

    .line 42
    .line 43
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_32
    if-ge v1, v0, :cond_53

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 64
    .line 65
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 66
    .line 67
    if-eqz v2, :cond_50

    .line 68
    .line 69
    if-eqz p2, :cond_50

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne p2, v2, :cond_4a

    .line 73
    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_32

    .line 84
    :cond_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 12
    .line 13
    if-nez v0, :cond_15

    .line 14
    .line 15
    new-instance v0, Lw/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lw/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 21
    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 32
    .line 33
    if-nez v0, :cond_2d

    .line 34
    .line 35
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2d

    .line 42
    .line 43
    invoke-static {p0}, Lj0/b0;->c(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 48
    .line 49
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_17

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 12
    .line 13
    if-eqz v0, :cond_17

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1f

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 33
    .line 34
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Z

    .line 5
    .line 6
    if-eqz v0, :cond_26

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_26

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    invoke-virtual {v0}, Lj0/b1;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v1

    .line 23
    :goto_16
    if-lez v0, :cond_26

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 8
    .line 9
    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/MotionEvent;I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    if-eq v0, p1, :cond_15

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    if-ne v0, p1, :cond_14

    .line 19
    .line 20
    goto :goto_15

    .line 21
    :cond_14
    return v1

    .line 22
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public final onLayout(ZIIII)V
    .registers 16

    .line 1
    sget-object p1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 p3, 0x0

    .line 14
    move p4, p3

    .line 15
    :goto_e
    if-ge p4, p2, :cond_1be

    .line 16
    .line 17
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    check-cast p5, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-ne v1, v2, :cond_20

    .line 30
    .line 31
    goto/16 :goto_1ba

    .line 32
    .line 33
    :cond_20
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/coordinatorlayout/widget/b;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroidx/coordinatorlayout/widget/b;

    .line 46
    .line 47
    iget-object v2, v1, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 48
    .line 49
    if-nez v2, :cond_40

    .line 50
    .line 51
    iget v3, v1, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 52
    .line 53
    const/4 v4, -0x1

    .line 54
    if-ne v3, v4, :cond_38

    .line 55
    .line 56
    goto :goto_40

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_40
    :goto_40
    sget-object v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:Li0/c;

    .line 66
    .line 67
    if-eqz v2, :cond_8c

    .line 68
    .line 69
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v3, v2

    .line 74
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :try_start_4d
    invoke-virtual {p0, v3, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 86
    .line 87
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-static/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v3, v2, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V

    .line 99
    .line 100
    .line 101
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 106
    .line 107
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    invoke-virtual {p5, v3, v4, v5, v7}, Landroid/view/View;->layout(IIII)V
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_7d

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v1}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v2}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1ba

    .line 125
    .line 126
    :catchall_7d
    move-exception v0

    .line 127
    move-object p1, v0

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v1}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v2}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_8c
    iget v1, v1, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 142
    .line 143
    if-ltz v1, :cond_10f

    .line 144
    .line 145
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 150
    .line 151
    iget v3, v2, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 152
    .line 153
    if-nez v3, :cond_9d

    .line 154
    .line 155
    const v3, 0x800035

    .line 156
    .line 157
    .line 158
    :cond_9d
    invoke-static {v3, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    and-int/lit8 v4, v3, 0x7

    .line 163
    .line 164
    and-int/lit8 v3, v3, 0x70

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    const/4 v9, 0x1

    .line 183
    if-ne v0, v9, :cond_ba

    .line 184
    .line 185
    sub-int v1, v5, v1

    .line 186
    .line 187
    :cond_ba
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(I)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    sub-int/2addr v1, v7

    .line 192
    if-eq v4, v9, :cond_c7

    .line 193
    .line 194
    const/4 v9, 0x5

    .line 195
    if-eq v4, v9, :cond_c5

    .line 196
    .line 197
    goto :goto_ca

    .line 198
    :cond_c5
    add-int/2addr v1, v7

    .line 199
    goto :goto_ca

    .line 200
    :cond_c7
    div-int/lit8 v4, v7, 0x2

    .line 201
    .line 202
    add-int/2addr v1, v4

    .line 203
    :goto_ca
    const/16 v4, 0x10

    .line 204
    .line 205
    if-eq v3, v4, :cond_d6

    .line 206
    .line 207
    const/16 v4, 0x50

    .line 208
    .line 209
    if-eq v3, v4, :cond_d4

    .line 210
    .line 211
    move v3, p3

    .line 212
    goto :goto_d8

    .line 213
    :cond_d4
    move v3, v8

    .line 214
    goto :goto_d8

    .line 215
    :cond_d6
    div-int/lit8 v3, v8, 0x2

    .line 216
    .line 217
    :goto_d8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 222
    .line 223
    add-int/2addr v4, v9

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    sub-int/2addr v5, v9

    .line 229
    sub-int/2addr v5, v7

    .line 230
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 231
    .line 232
    sub-int/2addr v5, v9

    .line 233
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 246
    .line 247
    add-int/2addr v4, v5

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    sub-int/2addr v6, v5

    .line 253
    sub-int/2addr v6, v8

    .line 254
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 255
    .line 256
    sub-int/2addr v6, v2

    .line 257
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    add-int/2addr v7, v1

    .line 266
    add-int/2addr v8, v2

    .line 267
    invoke-virtual {p5, v1, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_1ba

    .line 271
    .line 272
    :cond_10f
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Landroidx/coordinatorlayout/widget/b;

    .line 277
    .line 278
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 287
    .line 288
    add-int/2addr v2, v4

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    .line 295
    add-int/2addr v4, v5

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    sub-int/2addr v5, v7

    .line 305
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 306
    .line 307
    sub-int/2addr v5, v7

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    sub-int/2addr v7, v8

    .line 317
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 318
    .line 319
    sub-int/2addr v7, v8

    .line 320
    invoke-virtual {v3, v2, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 324
    .line 325
    if-eqz v2, :cond_180

    .line 326
    .line 327
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 328
    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_180

    .line 334
    .line 335
    invoke-virtual {p5}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-nez v2, :cond_180

    .line 340
    .line 341
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 342
    .line 343
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 344
    .line 345
    invoke-virtual {v4}, Lj0/b1;->b()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    add-int/2addr v4, v2

    .line 350
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 351
    .line 352
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 353
    .line 354
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 355
    .line 356
    invoke-virtual {v4}, Lj0/b1;->d()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    add-int/2addr v4, v2

    .line 361
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 362
    .line 363
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 364
    .line 365
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 366
    .line 367
    invoke-virtual {v4}, Lj0/b1;->c()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    sub-int/2addr v2, v4

    .line 372
    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 373
    .line 374
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 375
    .line 376
    iget-object v4, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 377
    .line 378
    invoke-virtual {v4}, Lj0/b1;->a()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    sub-int/2addr v2, v4

    .line 383
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 384
    .line 385
    :cond_180
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g()Landroid/graphics/Rect;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    iget v1, v1, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 390
    .line 391
    and-int/lit8 v2, v1, 0x7

    .line 392
    .line 393
    if-nez v2, :cond_18e

    .line 394
    .line 395
    const v2, 0x800003

    .line 396
    .line 397
    .line 398
    or-int/2addr v1, v2

    .line 399
    :cond_18e
    and-int/lit8 v2, v1, 0x70

    .line 400
    .line 401
    if-nez v2, :cond_194

    .line 402
    .line 403
    or-int/lit8 v1, v1, 0x30

    .line 404
    .line 405
    :cond_194
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    move v5, v0

    .line 410
    move v0, v1

    .line 411
    move v1, v2

    .line 412
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 417
    .line 418
    .line 419
    move v0, v5

    .line 420
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 421
    .line 422
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 423
    .line 424
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 425
    .line 426
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 427
    .line 428
    invoke-virtual {p5, v1, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6, v3}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v4}, Li0/c;->d(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :goto_1ba
    add-int/lit8 p4, p4, 0x1

    .line 444
    .line 445
    goto/16 :goto_e

    .line 446
    .line 447
    :cond_1be
    return-void
.end method

.method public final onMeasure(II)V
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v6, 0x0

    .line 11
    move v2, v6

    .line 12
    :goto_b
    const/4 v3, 0x1

    .line 13
    if-ge v2, v1, :cond_33

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lcom/google/firebase/messaging/y;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, Ls/j;

    .line 24
    .line 25
    iget v7, v5, Ls/j;->c:I

    .line 26
    .line 27
    move v8, v6

    .line 28
    :goto_1b
    if-ge v8, v7, :cond_30

    .line 29
    .line 30
    invoke-virtual {v5, v8}, Ls/j;->h(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    check-cast v9, Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v9, :cond_2d

    .line 37
    .line 38
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_2d

    .line 43
    .line 44
    move v1, v3

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    goto :goto_1b

    .line 49
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_b

    .line 52
    :cond_33
    move v1, v6

    .line 53
    :goto_34
    iget-boolean v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 54
    .line 55
    if-eq v1, v2, :cond_68

    .line 56
    .line 57
    if-eqz v1, :cond_55

    .line 58
    .line 59
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 60
    .line 61
    if-eqz v1, :cond_52

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 64
    .line 65
    if-nez v1, :cond_49

    .line 66
    .line 67
    new-instance v1, Lw/b;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lw/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 73
    .line 74
    :cond_49
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    .line 82
    .line 83
    :cond_52
    iput-boolean v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 84
    .line 85
    goto :goto_68

    .line 86
    :cond_55
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 87
    .line 88
    if-eqz v1, :cond_66

    .line 89
    .line 90
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 91
    .line 92
    if-eqz v1, :cond_66

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lw/b;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    .line 102
    .line 103
    :cond_66
    iput-boolean v6, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 104
    .line 105
    :cond_68
    :goto_68
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    sget-object v4, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-ne v9, v3, :cond_82

    .line 128
    .line 129
    move v10, v3

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v10, v6

    .line 132
    :goto_83
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    add-int v15, v7, v8

    .line 149
    .line 150
    add-int v16, v1, v2

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iget-object v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 161
    .line 162
    if-eqz v4, :cond_ac

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_ac

    .line 169
    .line 170
    move/from16 v17, v3

    .line 171
    .line 172
    goto :goto_ae

    .line 173
    :cond_ac
    move/from16 v17, v6

    .line 174
    .line 175
    :goto_ae
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    move v5, v6

    .line 182
    move/from16 v18, v5

    .line 183
    .line 184
    :goto_b7
    if-ge v5, v4, :cond_1b6

    .line 185
    .line 186
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v19

    .line 190
    check-cast v19, Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    move/from16 v21, v1

    .line 197
    .line 198
    const/16 v1, 0x8

    .line 199
    .line 200
    if-ne v6, v1, :cond_d9

    .line 201
    .line 202
    move-object/from16 v22, v3

    .line 203
    .line 204
    move/from16 v19, v4

    .line 205
    .line 206
    move/from16 v24, v5

    .line 207
    .line 208
    move/from16 v20, v7

    .line 209
    .line 210
    move/from16 v1, v21

    .line 211
    .line 212
    const/16 v23, 0x0

    .line 213
    .line 214
    move/from16 v21, v8

    .line 215
    .line 216
    goto/16 :goto_1a8

    .line 217
    .line 218
    :cond_d9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move-object v6, v1

    .line 223
    check-cast v6, Landroidx/coordinatorlayout/widget/b;

    .line 224
    .line 225
    iget v1, v6, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 226
    .line 227
    if-ltz v1, :cond_127

    .line 228
    .line 229
    if-eqz v11, :cond_127

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    move/from16 v22, v1

    .line 236
    .line 237
    iget v1, v6, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 238
    .line 239
    if-nez v1, :cond_f3

    .line 240
    .line 241
    const v1, 0x800035

    .line 242
    .line 243
    .line 244
    :cond_f3
    invoke-static {v1, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    and-int/lit8 v1, v1, 0x7

    .line 249
    .line 250
    move/from16 v23, v2

    .line 251
    .line 252
    const/4 v2, 0x3

    .line 253
    if-ne v1, v2, :cond_100

    .line 254
    .line 255
    if-eqz v10, :cond_105

    .line 256
    .line 257
    :cond_100
    const/4 v2, 0x5

    .line 258
    if-ne v1, v2, :cond_114

    .line 259
    .line 260
    if-eqz v10, :cond_114

    .line 261
    .line 262
    :cond_105
    sub-int v1, v12, v8

    .line 263
    .line 264
    sub-int v1, v1, v22

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    :goto_10e
    move-object/from16 v25, v3

    .line 272
    .line 273
    move v3, v1

    .line 274
    move-object/from16 v1, v25

    .line 275
    .line 276
    goto :goto_12c

    .line 277
    :cond_114
    if-ne v1, v2, :cond_118

    .line 278
    .line 279
    if-eqz v10, :cond_11d

    .line 280
    .line 281
    :cond_118
    const/4 v2, 0x3

    .line 282
    if-ne v1, v2, :cond_125

    .line 283
    .line 284
    if-eqz v10, :cond_125

    .line 285
    .line 286
    :cond_11d
    sub-int v1, v22, v7

    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    goto :goto_10e

    .line 294
    :cond_125
    :goto_125
    const/4 v2, 0x0

    .line 295
    goto :goto_12a

    .line 296
    :cond_127
    move/from16 v23, v2

    .line 297
    .line 298
    goto :goto_125

    .line 299
    :goto_12a
    move-object v1, v3

    .line 300
    move v3, v2

    .line 301
    :goto_12c
    if-eqz v17, :cond_161

    .line 302
    .line 303
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 304
    .line 305
    .line 306
    move-result v20

    .line 307
    if-nez v20, :cond_161

    .line 308
    .line 309
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 310
    .line 311
    invoke-virtual {v2}, Lj0/b1;->b()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    move-object/from16 v22, v1

    .line 316
    .line 317
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 318
    .line 319
    invoke-virtual {v1}, Lj0/b1;->c()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    add-int/2addr v1, v2

    .line 324
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 325
    .line 326
    invoke-virtual {v2}, Lj0/b1;->d()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    move/from16 v24, v1

    .line 331
    .line 332
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lj0/b1;

    .line 333
    .line 334
    invoke-virtual {v1}, Lj0/b1;->a()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    add-int/2addr v1, v2

    .line 339
    sub-int v2, v12, v24

    .line 340
    .line 341
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    sub-int v1, v14, v1

    .line 346
    .line 347
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    :goto_15e
    move/from16 v24, v5

    .line 352
    .line 353
    goto :goto_168

    .line 354
    :cond_161
    move-object/from16 v22, v1

    .line 355
    .line 356
    move/from16 v2, p1

    .line 357
    .line 358
    move/from16 v1, p2

    .line 359
    .line 360
    goto :goto_15e

    .line 361
    :goto_168
    const/4 v5, 0x0

    .line 362
    move/from16 v20, v4

    .line 363
    .line 364
    move v4, v1

    .line 365
    move-object/from16 v1, v19

    .line 366
    .line 367
    move/from16 v19, v20

    .line 368
    .line 369
    move/from16 v20, v7

    .line 370
    .line 371
    move/from16 v7, v21

    .line 372
    .line 373
    move/from16 v21, v8

    .line 374
    .line 375
    move/from16 v8, v23

    .line 376
    .line 377
    const/16 v23, 0x0

    .line 378
    .line 379
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    add-int/2addr v2, v15

    .line 387
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 388
    .line 389
    add-int/2addr v2, v3

    .line 390
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 391
    .line 392
    add-int/2addr v2, v3

    .line 393
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    add-int v3, v3, v16

    .line 402
    .line 403
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 404
    .line 405
    add-int/2addr v3, v4

    .line 406
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 407
    .line 408
    add-int/2addr v3, v4

    .line 409
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    move/from16 v6, v18

    .line 418
    .line 419
    invoke-static {v6, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 420
    .line 421
    .line 422
    move-result v18

    .line 423
    move v1, v2

    .line 424
    move v2, v3

    .line 425
    :goto_1a8
    add-int/lit8 v5, v24, 0x1

    .line 426
    .line 427
    move/from16 v4, v19

    .line 428
    .line 429
    move/from16 v7, v20

    .line 430
    .line 431
    move/from16 v8, v21

    .line 432
    .line 433
    move-object/from16 v3, v22

    .line 434
    .line 435
    move/from16 v6, v23

    .line 436
    .line 437
    goto/16 :goto_b7

    .line 438
    .line 439
    :cond_1b6
    move v7, v1

    .line 440
    move v8, v2

    .line 441
    move/from16 v6, v18

    .line 442
    .line 443
    const/high16 v1, -0x1000000

    .line 444
    .line 445
    and-int/2addr v1, v6

    .line 446
    move/from16 v2, p1

    .line 447
    .line 448
    invoke-static {v7, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    shl-int/lit8 v2, v6, 0x10

    .line 453
    .line 454
    move/from16 v3, p2

    .line 455
    .line 456
    invoke-static {v8, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 461
    .line 462
    .line 463
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_6
    if-ge p3, p1, :cond_21

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_1e

    .line 22
    :cond_15
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    check-cast p4, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :goto_1e
    add-int/lit8 p3, p3, 0x1

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    return p2
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_6
    if-ge p3, p1, :cond_21

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-ne v1, v2, :cond_15

    .line 20
    .line 21
    goto :goto_1e

    .line 22
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :goto_1e
    add-int/lit8 p3, p3, 0x1

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    return p2
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(III[I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;IIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    .line 1
    instance-of v0, p1, Lw/c;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lw/c;

    .line 10
    .line 11
    iget-object v0, p1, Lo0/b;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lw/c;->c:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_16
    if-ge v1, v0, :cond_34

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    if-eq v3, v4, :cond_31

    .line 41
    .line 42
    if-eqz v2, :cond_31

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/os/Parcelable;

    .line 49
    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_16

    .line 53
    :cond_34
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .line 1
    new-instance v0, Lw/c;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lo0/b;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ge v3, v2, :cond_34

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/coordinatorlayout/widget/b;

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 37
    .line 38
    const/4 v6, -0x1

    .line 39
    if-eq v5, v6, :cond_31

    .line 40
    .line 41
    if-eqz v4, :cond_31

    .line 42
    .line 43
    sget-object v4, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 44
    .line 45
    if-eqz v4, :cond_31

    .line 46
    .line 47
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_31
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_13

    .line 53
    :cond_34
    iput-object v1, v0, Lw/c;->c:Landroid/util/SparseArray;

    .line 54
    .line 55
    return-object v0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f(Landroid/view/View;Landroid/view/View;II)Z

    .line 3
    .line 4
    .line 5
    return v0
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o(Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq v0, v1, :cond_13

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_12

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    return p1

    .line 20
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 21
    .line 22
    .line 23
    return p1
.end method

.method public final p()V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lcom/google/firebase/messaging/y;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ls/j;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lg/j;

    .line 15
    .line 16
    iget-object v4, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Ls/j;

    .line 19
    .line 20
    iget v5, v2, Ls/j;->c:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    move v7, v6

    .line 24
    :goto_17
    if-ge v7, v5, :cond_2a

    .line 25
    .line 26
    invoke-virtual {v2, v7}, Ls/j;->h(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    check-cast v8, Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz v8, :cond_27

    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v8}, Lg/j;->d(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_27
    add-int/lit8 v7, v7, 0x1

    .line 41
    .line 42
    goto :goto_17

    .line 43
    :cond_2a
    invoke-virtual {v2}, Ls/j;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    move v5, v6

    .line 51
    :goto_32
    if-ge v5, v2, :cond_164

    .line 52
    .line 53
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    iget v9, v8, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 62
    .line 63
    const/4 v10, -0x1

    .line 64
    const/4 v11, 0x0

    .line 65
    if-ne v9, v10, :cond_48

    .line 66
    .line 67
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 68
    .line 69
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 70
    .line 71
    goto/16 :goto_c7

    .line 72
    .line 73
    :cond_48
    iget-object v10, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 74
    .line 75
    if-eqz v10, :cond_74

    .line 76
    .line 77
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eq v10, v9, :cond_53

    .line 82
    .line 83
    goto :goto_74

    .line 84
    :cond_53
    iget-object v10, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    :goto_59
    if-eq v12, p0, :cond_71

    .line 91
    .line 92
    if-eqz v12, :cond_6c

    .line 93
    .line 94
    if-ne v12, v7, :cond_60

    .line 95
    .line 96
    goto :goto_6c

    .line 97
    :cond_60
    instance-of v13, v12, Landroid/view/View;

    .line 98
    .line 99
    if-eqz v13, :cond_67

    .line 100
    .line 101
    move-object v10, v12

    .line 102
    check-cast v10, Landroid/view/View;

    .line 103
    .line 104
    :cond_67
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    goto :goto_59

    .line 109
    :cond_6c
    :goto_6c
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 110
    .line 111
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 112
    .line 113
    goto :goto_74

    .line 114
    :cond_71
    iput-object v10, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 115
    .line 116
    goto :goto_c7

    .line 117
    :cond_74
    :goto_74
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    iput-object v10, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 122
    .line 123
    if-eqz v10, :cond_bd

    .line 124
    .line 125
    if-ne v10, p0, :cond_91

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_89

    .line 132
    .line 133
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 134
    .line 135
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 136
    .line 137
    goto :goto_c7

    .line 138
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_91
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    :goto_95
    if-eq v9, p0, :cond_ba

    .line 151
    .line 152
    if-eqz v9, :cond_ba

    .line 153
    .line 154
    if-ne v9, v7, :cond_ae

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_a6

    .line 161
    .line 162
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 163
    .line 164
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 165
    .line 166
    goto :goto_c7

    .line 167
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    const-string v1, "Anchor must not be a descendant of the anchored view"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_ae
    instance-of v12, v9, Landroid/view/View;

    .line 176
    .line 177
    if-eqz v12, :cond_b5

    .line 178
    .line 179
    move-object v10, v9

    .line 180
    check-cast v10, Landroid/view/View;

    .line 181
    .line 182
    :cond_b5
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    goto :goto_95

    .line 187
    :cond_ba
    iput-object v10, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 188
    .line 189
    goto :goto_c7

    .line 190
    :cond_bd
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_140

    .line 195
    .line 196
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 197
    .line 198
    iput-object v11, v8, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 199
    .line 200
    :goto_c7
    invoke-virtual {v4, v7}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-nez v9, :cond_d0

    .line 205
    .line 206
    invoke-virtual {v4, v7, v11}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_d0
    move v9, v6

    .line 210
    :goto_d1
    if-ge v9, v2, :cond_13c

    .line 211
    .line 212
    if-ne v9, v5, :cond_d6

    .line 213
    .line 214
    goto :goto_131

    .line 215
    :cond_d6
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    iget-object v12, v8, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 220
    .line 221
    if-eq v10, v12, :cond_fb

    .line 222
    .line 223
    sget-object v12, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    check-cast v13, Landroidx/coordinatorlayout/widget/b;

    .line 234
    .line 235
    iget v13, v13, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 236
    .line 237
    invoke-static {v13, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    if-eqz v13, :cond_131

    .line 242
    .line 243
    iget v14, v8, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 244
    .line 245
    invoke-static {v14, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    and-int/2addr v12, v13

    .line 250
    if-ne v12, v13, :cond_131

    .line 251
    .line 252
    :cond_fb
    invoke-virtual {v4, v10}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-nez v12, :cond_10a

    .line 257
    .line 258
    invoke-virtual {v4, v10}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_10a

    .line 263
    .line 264
    invoke-virtual {v4, v10, v11}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_10a
    invoke-virtual {v4, v10}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    if-eqz v12, :cond_134

    .line 272
    .line 273
    invoke-virtual {v4, v7}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    if-eqz v12, :cond_134

    .line 278
    .line 279
    invoke-virtual {v4, v10}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    check-cast v12, Ljava/util/ArrayList;

    .line 284
    .line 285
    if-nez v12, :cond_12e

    .line 286
    .line 287
    invoke-virtual {v3}, Lg/j;->a()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    check-cast v12, Ljava/util/ArrayList;

    .line 292
    .line 293
    if-nez v12, :cond_12b

    .line 294
    .line 295
    new-instance v12, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .line 299
    .line 300
    :cond_12b
    invoke-virtual {v4, v10, v12}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    :cond_12e
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :cond_131
    :goto_131
    add-int/lit8 v9, v9, 0x1

    .line 307
    .line 308
    goto :goto_d1

    .line 309
    :cond_134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_13c
    add-int/lit8 v5, v5, 0x1

    .line 318
    .line 319
    goto/16 :goto_32

    .line 320
    .line 321
    :cond_140
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    .line 326
    .line 327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v2, " to anchor view "

    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :cond_164
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 362
    .line 363
    .line 364
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v3, Ljava/util/HashSet;

    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 369
    .line 370
    .line 371
    iget v5, v4, Ls/j;->c:I

    .line 372
    .line 373
    :goto_174
    if-ge v6, v5, :cond_180

    .line 374
    .line 375
    invoke-virtual {v4, v6}, Ls/j;->e(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v1, v7, v2, v3}, Lcom/google/firebase/messaging/y;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 380
    .line 381
    .line 382
    add-int/lit8 v6, v6, 0x1

    .line 383
    .line 384
    goto :goto_174

    .line 385
    :cond_180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    .line 387
    .line 388
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public final q()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_18

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_18
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    .line 26
    .line 27
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3c

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    .line 7
    .line 8
    if-nez p1, :cond_3c

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-ge v1, p1, :cond_31

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    .line 29
    .line 30
    if-eqz v2, :cond_2e

    .line 31
    .line 32
    if-nez v0, :cond_2e

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v7, 0x3

    .line 41
    const/4 v8, 0x0

    .line 42
    move-wide v5, v3

    .line 43
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_f

    .line 50
    :cond_31
    if-eqz v0, :cond_36

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 53
    .line 54
    .line 55
    :cond_36
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q()V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    .line 60
    .line 61
    :cond_3c
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->v:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_47

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    .line 10
    .line 11
    :cond_a
    if-eqz p1, :cond_10

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_10
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v1, :cond_42

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_23

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_39

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v0, v1

    .line 59
    :goto_3a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    sget-object p1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 70
    .line 71
    .line 72
    :cond_47
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move p1, v0

    .line 10
    :goto_9
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_18

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, p1, :cond_18

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public final t()V
    .registers 3

    .line 1
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_20

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lk1/h;

    .line 10
    .line 11
    if-nez v0, :cond_15

    .line 12
    .line 13
    new-instance v0, Lk1/h;

    .line 14
    .line 15
    const/16 v1, 0x1c

    .line 16
    .line 17
    invoke-direct {v0, v1, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lk1/h;

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->w:Lk1/h;

    .line 23
    .line 24
    invoke-static {p0, v0}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x500

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x1

    .line 15
    return p1
.end method

###### Class androidx.coordinatorlayout.widget.CoordinatorLayout.a (androidx.coordinatorlayout.widget.CoordinatorLayout$a)
.class public abstract Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
