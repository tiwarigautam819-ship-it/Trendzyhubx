###### Class androidx.coordinatorlayout.widget.b (androidx.coordinatorlayout.widget.b)
.class public final Landroidx/coordinatorlayout/widget/b;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

.field public b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public final m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x2

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 3
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 4
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 6
    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 7
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 8
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 12
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 13
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 15
    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 16
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 17
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    .line 19
    sget-object v2, Lv/a;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    const/4 v4, 0x2

    .line 22
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v5, 0x6

    .line 23
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    const/4 v1, 0x5

    .line 24
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    const/4 v1, 0x4

    .line 25
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    const/4 v1, 0x3

    .line 26
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    if-eqz v5, :cond_ec

    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 p1, 0x0

    goto/16 :goto_dd

    .line 29
    :cond_61
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    :cond_7d
    const/16 v5, 0x2e

    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_86

    goto :goto_a0

    .line 32
    :cond_86
    sget-object v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->y:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 33
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_a0
    :goto_a0
    :try_start_a0
    sget-object v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_b5

    .line 35
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_b5

    :catch_b3
    move-exception p1

    goto :goto_e0

    .line 37
    :cond_b5
    :goto_b5
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_d1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 39
    sget-object v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z:[Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 41
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_d1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_dd} :catch_b3

    .line 43
    :goto_dd
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    goto :goto_ec

    .line 44
    :goto_e0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Could not inflate Behavior subclass "

    .line 45
    invoke-static {v0, v1}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 47
    :cond_ec
    :goto_ec
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;

    if-eqz p1, :cond_f6

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f6
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 74
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 75
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 77
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 78
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 79
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 65
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 66
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 68
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 69
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 70
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/b;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 56
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 57
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->d:I

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 59
    iput v0, p0, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 60
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 61
    iput p1, p0, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/b;->m:Landroid/graphics/Rect;

    return-void
.end method
