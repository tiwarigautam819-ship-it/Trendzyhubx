###### Class androidx.fragment.app.m0 (androidx.fragment.app.m0)
.class public final Landroidx/fragment/app/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/y0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/m0;->a:Landroidx/fragment/app/y0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15

    .line 2
    const-class v0, Landroidx/fragment/app/j0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/m0;->a:Landroidx/fragment/app/y0;

    if-eqz v0, :cond_14

    .line 3
    new-instance p1, Landroidx/fragment/app/j0;

    invoke-direct {p1, p3, p4, v1}, Landroidx/fragment/app/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/y0;)V

    return-object p1

    .line 4
    :cond_14
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1f

    goto/16 :goto_1d0

    .line 5
    :cond_1f
    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v2, Ls0/a;->a:[I

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_32

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_32
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 8
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x2

    .line 9
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1d0

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 12
    :try_start_46
    invoke-static {v2, p2}, Landroidx/fragment/app/r0;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 13
    const-class v9, Landroidx/fragment/app/c0;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move v2, v3

    :goto_52
    if-nez v2, :cond_56

    goto/16 :goto_1d0

    :cond_56
    if-eqz p1, :cond_5c

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    :cond_5c
    if-ne v3, v5, :cond_81

    if-ne v6, v5, :cond_81

    if-eqz v8, :cond_63

    goto :goto_81

    .line 15
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    :goto_81
    if-eq v6, v5, :cond_88

    .line 16
    invoke-virtual {v1, v6}, Landroidx/fragment/app/y0;->B(I)Landroidx/fragment/app/c0;

    move-result-object v2

    goto :goto_89

    :cond_88
    move-object v2, v0

    :goto_89
    if-nez v2, :cond_91

    if-eqz v8, :cond_91

    .line 17
    invoke-virtual {v1, v8}, Landroidx/fragment/app/y0;->C(Ljava/lang/String;)Landroidx/fragment/app/c0;

    move-result-object v2

    :cond_91
    if-nez v2, :cond_99

    if-eq v3, v5, :cond_99

    .line 18
    invoke-virtual {v1, v3}, Landroidx/fragment/app/y0;->B(I)Landroidx/fragment/app/c0;

    move-result-object v2

    .line 19
    :cond_99
    const-string v5, "Fragment "

    const-string v9, "FragmentManager"

    if-nez v2, :cond_f2

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->G()Landroidx/fragment/app/r0;

    move-result-object p4

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    invoke-virtual {p4, p2}, Landroidx/fragment/app/r0;->a(Ljava/lang/String;)Landroidx/fragment/app/c0;

    move-result-object v2

    .line 23
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->v:Z

    if-eqz v6, :cond_b0

    move p3, v6

    goto :goto_b1

    :cond_b0
    move p3, v3

    .line 24
    :goto_b1
    iput p3, v2, Landroidx/fragment/app/c0;->F:I

    .line 25
    iput v3, v2, Landroidx/fragment/app/c0;->G:I

    .line 26
    iput-object v8, v2, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 27
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->w:Z

    .line 28
    iput-object v1, v2, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 29
    iget-object p3, v1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 30
    iput-object p3, v2, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 31
    iget-object p4, p3, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 32
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->N:Z

    if-nez p3, :cond_c6

    goto :goto_c8

    .line 33
    :cond_c6
    iget-object v0, p3, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    :goto_c8
    if-eqz v0, :cond_cc

    .line 34
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->N:Z

    .line 35
    :cond_cc
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->a(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    move-result-object p3

    .line 36
    invoke-static {v7}, Landroidx/fragment/app/y0;->J(I)Z

    move-result p4

    if-eqz p4, :cond_132

    .line 37
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 39
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 40
    :cond_f2
    iget-boolean p3, v2, Landroidx/fragment/app/c0;->w:Z

    if-nez p3, :cond_192

    .line 41
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->w:Z

    .line 42
    iput-object v1, v2, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 43
    iget-object p3, v1, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 44
    iput-object p3, v2, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 45
    iget-object p4, p3, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 46
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->N:Z

    if-nez p3, :cond_105

    goto :goto_107

    .line 47
    :cond_105
    iget-object v0, p3, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    :goto_107
    if-eqz v0, :cond_10b

    .line 48
    iput-boolean v4, v2, Landroidx/fragment/app/c0;->N:Z

    .line 49
    :cond_10b
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    move-result-object p3

    .line 50
    invoke-static {v7}, Landroidx/fragment/app/y0;->J(I)Z

    move-result p4

    if-eqz p4, :cond_132

    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Retained Fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_132
    :goto_132
    check-cast p1, Landroid/view/ViewGroup;

    sget-object p4, Lt0/c;->a:Lt0/b;

    .line 55
    new-instance p4, Lt0/a;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to use <fragment> tag to add fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-direct {p4, v2, v0}, Lt0/e;-><init>(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 58
    invoke-static {p4}, Lt0/c;->b(Lt0/e;)V

    .line 59
    invoke-static {v2}, Lt0/c;->a(Landroidx/fragment/app/c0;)Lt0/b;

    move-result-object p4

    .line 60
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, v2, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {p3}, Landroidx/fragment/app/g1;->k()V

    .line 63
    invoke-virtual {p3}, Landroidx/fragment/app/g1;->j()V

    .line 64
    iget-object p1, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    if-eqz p1, :cond_186

    if-eqz v6, :cond_16c

    .line 65
    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    .line 66
    :cond_16c
    iget-object p1, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_179

    .line 67
    iget-object p1, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :cond_179
    iget-object p1, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/l0;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/l0;-><init>(Landroidx/fragment/app/m0;Landroidx/fragment/app/g1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    iget-object p1, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    return-object p1

    .line 70
    :cond_186
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, " did not create a view."

    .line 71
    invoke-static {v5, p2, p3}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_192
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d0
    :goto_1d0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/m0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
