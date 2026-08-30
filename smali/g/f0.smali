###### Class g.f0 (g.f0)
.class public final Lg/f0;
.super Lg/s;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll/l;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final p0:Ls/j;

.field public static final q0:[I

.field public static final r0:Z


# instance fields
.field public A:Lg/u;

.field public B:Lg/v;

.field public C:Lk/b;

.field public D:Landroidx/appcompat/widget/ActionBarContextView;

.field public E:Landroid/widget/PopupWindow;

.field public F:Lg/t;

.field public G:Lj0/o0;

.field public H:Z

.field public I:Landroid/view/ViewGroup;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/view/View;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:[Lg/e0;

.field public U:Lg/e0;

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Landroid/content/res/Configuration;

.field public final a0:I

.field public b0:I

.field public c0:I

.field public d0:Z

.field public e0:Lg/b0;

.field public f0:Lg/b0;

.field public g0:Z

.field public h0:I

.field public final i0:Lg/t;

.field public final j:Ljava/lang/Object;

.field public j0:Z

.field public final k:Landroid/content/Context;

.field public k0:Landroid/graphics/Rect;

.field public l:Landroid/view/Window;

.field public l0:Landroid/graphics/Rect;

.field public m:Lg/a0;

.field public m0:Lg/i0;

.field public n0:Landroid/window/OnBackInvokedDispatcher;

.field public o0:Landroid/window/OnBackInvokedCallback;

.field public final v:Ljava/lang/Object;

.field public w:Lg/b;

.field public x:Lk/i;

.field public y:Ljava/lang/CharSequence;

.field public z:Lm/e1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ls/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lg/f0;->p0:Ls/j;

    .line 8
    .line 9
    const v0, 0x1010054

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lg/f0;->q0:[I

    .line 17
    .line 18
    const-string v0, "robolectric"

    .line 19
    .line 20
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    sput-boolean v0, Lg/f0;->r0:Z

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lg/n;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg/f0;->G:Lj0/o0;

    .line 6
    .line 7
    const/16 v1, -0x64

    .line 8
    .line 9
    iput v1, p0, Lg/f0;->a0:I

    .line 10
    .line 11
    new-instance v2, Lg/t;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v3}, Lg/t;-><init>(Lg/f0;I)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lg/f0;->i0:Lg/t;

    .line 18
    .line 19
    iput-object p1, p0, Lg/f0;->k:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p3, p0, Lg/f0;->v:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p4, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of p3, p4, Landroid/app/Dialog;

    .line 26
    .line 27
    if-eqz p3, :cond_3d

    .line 28
    .line 29
    :goto_1c
    if-eqz p1, :cond_31

    .line 30
    .line 31
    instance-of p3, p1, Lg/m;

    .line 32
    .line 33
    if-eqz p3, :cond_26

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Lg/m;

    .line 37
    .line 38
    goto :goto_31

    .line 39
    :cond_26
    instance-of p3, p1, Landroid/content/ContextWrapper;

    .line 40
    .line 41
    if-eqz p3, :cond_31

    .line 42
    .line 43
    check-cast p1, Landroid/content/ContextWrapper;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1c

    .line 50
    :cond_31
    :goto_31
    if-eqz v0, :cond_3d

    .line 51
    .line 52
    invoke-virtual {v0}, Lg/m;->getDelegate()Lg/s;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lg/f0;

    .line 57
    .line 58
    iget p1, p1, Lg/f0;->a0:I

    .line 59
    .line 60
    iput p1, p0, Lg/f0;->a0:I

    .line 61
    .line 62
    :cond_3d
    iget p1, p0, Lg/f0;->a0:I

    .line 63
    .line 64
    if-ne p1, v1, :cond_68

    .line 65
    .line 66
    iget-object p1, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p3, Lg/f0;->p0:Ls/j;

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Integer;

    .line 83
    .line 84
    if-eqz p1, :cond_68

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lg/f0;->a0:I

    .line 91
    .line 92
    iget-object p1, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p3, p1}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_68
    if-eqz p2, :cond_6d

    .line 106
    .line 107
    invoke-virtual {p0, p2}, Lg/f0;->p(Landroid/view/Window;)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    invoke-static {}, Lm/p;->c()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static A(Landroid/content/res/Configuration;)Lf0/f;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0}, Lg/y;->b(Landroid/content/res/Configuration;)Lf0/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {p0}, Lg/x;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lf0/f;->b(Ljava/lang/String;)Lf0/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static q(Landroid/content/Context;)Lf0/f;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_7

    .line 6
    .line 7
    goto :goto_b

    .line 8
    :cond_7
    sget-object v1, Lg/s;->c:Lf0/f;

    .line 9
    .line 10
    if-nez v1, :cond_d

    .line 11
    .line 12
    :goto_b
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_d
    iget-object v1, v1, Lf0/f;->a:Lf0/h;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lg/f0;->A(Landroid/content/res/Configuration;)Lf0/f;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 v2, 0x18

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-lt v0, v2, :cond_6f

    .line 36
    .line 37
    invoke-interface {v1}, Lf0/h;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2d

    .line 42
    .line 43
    sget-object v0, Lf0/f;->b:Lf0/f;

    .line 44
    .line 45
    goto :goto_84

    .line 46
    :cond_2d
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-interface {v1}, Lf0/h;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-object v4, p0, Lf0/f;->a:Lf0/h;

    .line 56
    .line 57
    invoke-interface {v4}, Lf0/h;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v2

    .line 62
    if-ge v3, v4, :cond_5e

    .line 63
    .line 64
    invoke-interface {v1}, Lf0/h;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v3, v2, :cond_4a

    .line 69
    .line 70
    invoke-interface {v1, v3}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_56

    .line 75
    :cond_4a
    invoke-interface {v1}, Lf0/h;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sub-int v2, v3, v2

    .line 80
    .line 81
    iget-object v4, p0, Lf0/f;->a:Lf0/h;

    .line 82
    .line 83
    invoke-interface {v4, v2}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_56
    if-eqz v2, :cond_5b

    .line 88
    .line 89
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_32

    .line 95
    :cond_5e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    new-array v1, v1, [Ljava/util/Locale;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, [Ljava/util/Locale;

    .line 106
    .line 107
    invoke-static {v0}, Lf0/f;->a([Ljava/util/Locale;)Lf0/f;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_84

    .line 112
    :cond_6f
    invoke-interface {v1}, Lf0/h;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_78

    .line 117
    .line 118
    sget-object v0, Lf0/f;->b:Lf0/f;

    .line 119
    .line 120
    goto :goto_84

    .line 121
    :cond_78
    invoke-interface {v1, v3}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lg/x;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lf0/f;->b(Ljava/lang/String;)Lf0/f;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_84
    iget-object v1, v0, Lf0/f;->a:Lf0/h;

    .line 134
    .line 135
    invoke-interface {v1}, Lf0/h;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_8d

    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_8d
    return-object v0
.end method

.method public static u(Landroid/content/Context;ILf0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_1f

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_1c

    .line 7
    .line 8
    if-eqz p4, :cond_b

    .line 9
    .line 10
    move p0, v1

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x30

    .line 27
    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    const/16 p0, 0x20

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/16 p0, 0x10

    .line 33
    .line 34
    :goto_21
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p4, 0x0

    .line 40
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    .line 42
    if-eqz p3, :cond_2e

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    .line 49
    and-int/lit8 p3, p3, -0x31

    .line 50
    .line 51
    or-int/2addr p0, p3

    .line 52
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    .line 54
    if-eqz p2, :cond_51

    .line 55
    .line 56
    iget-object p0, p2, Lf0/f;->a:Lf0/h;

    .line 57
    .line 58
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 p4, 0x18

    .line 61
    .line 62
    if-lt p3, p4, :cond_43

    .line 63
    .line 64
    invoke-static {p1, p2}, Lg/y;->d(Landroid/content/res/Configuration;Lf0/f;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_43
    invoke-interface {p0, v1}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v1}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 80
    .line 81
    .line 82
    :cond_51
    return-object p1
.end method


# virtual methods
.method public final B(I)Lg/e0;
    .registers 6

    .line 1
    iget-object v0, p0, Lg/f0;->T:[Lg/e0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_15

    .line 8
    .line 9
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Lg/e0;

    .line 12
    .line 13
    if-eqz v0, :cond_12

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_12
    iput-object v2, p0, Lg/f0;->T:[Lg/e0;

    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :cond_15
    aget-object v2, v0, p1

    .line 23
    .line 24
    if-nez v2, :cond_24

    .line 25
    .line 26
    new-instance v2, Lg/e0;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput p1, v2, Lg/e0;->a:I

    .line 32
    .line 33
    iput-boolean v1, v2, Lg/e0;->n:Z

    .line 34
    .line 35
    aput-object v2, v0, p1

    .line 36
    .line 37
    :cond_24
    return-object v2
.end method

.method public final C()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lg/f0;->x()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lg/f0;->N:Z

    .line 5
    .line 6
    if-eqz v0, :cond_34

    .line 7
    .line 8
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 9
    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    goto :goto_34

    .line 13
    :cond_c
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v1, :cond_1e

    .line 18
    .line 19
    new-instance v1, Lg/s0;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 22
    .line 23
    iget-boolean v2, p0, Lg/f0;->O:Z

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lg/s0;-><init>(Landroid/app/Activity;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lg/f0;->w:Lg/b;

    .line 29
    .line 30
    goto :goto_2b

    .line 31
    :cond_1e
    instance-of v1, v0, Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz v1, :cond_2b

    .line 34
    .line 35
    new-instance v1, Lg/s0;

    .line 36
    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lg/s0;-><init>(Landroid/app/Dialog;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lg/f0;->w:Lg/b;

    .line 43
    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 45
    .line 46
    if-eqz v0, :cond_34

    .line 47
    .line 48
    iget-boolean v1, p0, Lg/f0;->j0:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lg/b;->l(Z)V

    .line 51
    .line 52
    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method public final D(I)V
    .registers 4

    .line 1
    iget v0, p0, Lg/f0;->h0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 5
    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lg/f0;->h0:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lg/f0;->g0:Z

    .line 10
    .line 11
    if-nez p1, :cond_1b

    .line 12
    .line 13
    iget-object p1, p0, Lg/f0;->l:Landroid/view/Window;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    iget-object v0, p0, Lg/f0;->i0:Lg/t;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lg/f0;->g0:Z

    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final E(Landroid/content/Context;I)I
    .registers 5

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_49

    .line 5
    .line 6
    if-eq p2, v1, :cond_48

    .line 7
    .line 8
    if-eqz p2, :cond_2c

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_48

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_48

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_24

    .line 18
    .line 19
    iget-object p2, p0, Lg/f0;->f0:Lg/b0;

    .line 20
    .line 21
    if-nez p2, :cond_1d

    .line 22
    .line 23
    new-instance p2, Lg/b0;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lg/b0;-><init>(Lg/f0;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lg/f0;->f0:Lg/b0;

    .line 29
    .line 30
    :cond_1d
    iget-object p1, p0, Lg/f0;->f0:Lg/b0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lg/b0;->e()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "uimode"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/UiModeManager;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3f

    .line 62
    .line 63
    goto :goto_49

    .line 64
    :cond_3f
    invoke-virtual {p0, p1}, Lg/f0;->z(Landroid/content/Context;)Lg/c0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lg/c0;->e()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_48
    return p2

    .line 74
    :cond_49
    :goto_49
    return v1
.end method

.method public final F()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lg/f0;->V:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lg/f0;->V:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lg/e0;->m:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_14

    .line 14
    .line 15
    if-nez v0, :cond_29

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4}, Lg/f0;->t(Lg/e0;Z)V

    .line 18
    .line 19
    .line 20
    return v4

    .line 21
    :cond_14
    iget-object v0, p0, Lg/f0;->C:Lk/b;

    .line 22
    .line 23
    if-eqz v0, :cond_1c

    .line 24
    .line 25
    invoke-virtual {v0}, Lk/b;->a()V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lg/f0;->C()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 33
    .line 34
    if-eqz v0, :cond_2a

    .line 35
    .line 36
    invoke-virtual {v0}, Lg/b;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 41
    .line 42
    :cond_29
    return v4

    .line 43
    :cond_2a
    return v1
.end method

.method public final G(Lg/e0;Landroid/view/KeyEvent;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lg/e0;->m:Z

    .line 6
    .line 7
    iget v3, v1, Lg/e0;->a:I

    .line 8
    .line 9
    if-nez v2, :cond_1d8

    .line 10
    .line 11
    iget-boolean v2, v0, Lg/f0;->Y:Z

    .line 12
    .line 13
    if-eqz v2, :cond_10

    .line 14
    .line 15
    goto/16 :goto_1d8

    .line 16
    .line 17
    :cond_10
    iget-object v2, v0, Lg/f0;->k:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v3, :cond_25

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_25

    .line 35
    .line 36
    goto/16 :goto_1d8

    .line 37
    .line 38
    :cond_25
    iget-object v4, v0, Lg/f0;->l:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_3a

    .line 46
    .line 47
    iget-object v6, v1, Lg/e0;->h:Ll/n;

    .line 48
    .line 49
    invoke-interface {v4, v3, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_3a

    .line 54
    .line 55
    invoke-virtual {v0, v1, v5}, Lg/f0;->t(Lg/e0;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    const-string v4, "window"

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/view/WindowManager;

    .line 66
    .line 67
    if-nez v4, :cond_46

    .line 68
    .line 69
    goto/16 :goto_1d8

    .line 70
    .line 71
    :cond_46
    invoke-virtual/range {p0 .. p2}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4e

    .line 76
    .line 77
    goto/16 :goto_1d8

    .line 78
    .line 79
    :cond_4e
    iget-object v6, v1, Lg/e0;->e:Lg/d0;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, -0x2

    .line 83
    if-eqz v6, :cond_6b

    .line 84
    .line 85
    iget-boolean v9, v1, Lg/e0;->n:Z

    .line 86
    .line 87
    if-eqz v9, :cond_59

    .line 88
    .line 89
    goto :goto_6b

    .line 90
    :cond_59
    iget-object v2, v1, Lg/e0;->g:Landroid/view/View;

    .line 91
    .line 92
    if-eqz v2, :cond_1b0

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_1b0

    .line 99
    .line 100
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    const/4 v6, -0x1

    .line 103
    if-ne v2, v6, :cond_1b0

    .line 104
    .line 105
    move v10, v6

    .line 106
    goto/16 :goto_1b1

    .line 107
    .line 108
    :cond_6b
    :goto_6b
    if-nez v6, :cond_e6

    .line 109
    .line 110
    invoke-virtual {v0}, Lg/f0;->C()V

    .line 111
    .line 112
    .line 113
    iget-object v6, v0, Lg/f0;->w:Lg/b;

    .line 114
    .line 115
    if-eqz v6, :cond_79

    .line 116
    .line 117
    invoke-virtual {v6}, Lg/b;->e()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    const/4 v6, 0x0

    .line 123
    :goto_7a
    if-nez v6, :cond_7d

    .line 124
    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move-object v2, v6

    .line 127
    :goto_7e
    new-instance v6, Landroid/util/TypedValue;

    .line 128
    .line 129
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 145
    .line 146
    .line 147
    const v10, 0x7f040002

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 151
    .line 152
    .line 153
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 154
    .line 155
    if-eqz v10, :cond_9f

    .line 156
    .line 157
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 158
    .line 159
    .line 160
    :cond_9f
    const v10, 0x7f0400e0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 164
    .line 165
    .line 166
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 167
    .line 168
    if-eqz v6, :cond_ad

    .line 169
    .line 170
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_b3

    .line 174
    :cond_ad
    const v6, 0x7f10010b

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 178
    .line 179
    .line 180
    :goto_b3
    new-instance v6, Lk/d;

    .line 181
    .line 182
    invoke-direct {v6, v2, v7}, Lk/d;-><init>(Landroid/content/Context;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Lk/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 190
    .line 191
    .line 192
    iput-object v6, v1, Lg/e0;->j:Lk/d;

    .line 193
    .line 194
    sget-object v2, Lf/a;->j:[I

    .line 195
    .line 196
    invoke-virtual {v6, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const/16 v6, 0x56

    .line 201
    .line 202
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    iput v6, v1, Lg/e0;->b:I

    .line 207
    .line 208
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iput v6, v1, Lg/e0;->d:I

    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    new-instance v2, Lg/d0;

    .line 218
    .line 219
    iget-object v6, v1, Lg/e0;->j:Lk/d;

    .line 220
    .line 221
    invoke-direct {v2, v0, v6}, Lg/d0;-><init>(Lg/f0;Lk/d;)V

    .line 222
    .line 223
    .line 224
    iput-object v2, v1, Lg/e0;->e:Lg/d0;

    .line 225
    .line 226
    const/16 v2, 0x51

    .line 227
    .line 228
    iput v2, v1, Lg/e0;->c:I

    .line 229
    .line 230
    goto :goto_f5

    .line 231
    :cond_e6
    iget-boolean v2, v1, Lg/e0;->n:Z

    .line 232
    .line 233
    if-eqz v2, :cond_f5

    .line 234
    .line 235
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-lez v2, :cond_f5

    .line 240
    .line 241
    iget-object v2, v1, Lg/e0;->e:Lg/d0;

    .line 242
    .line 243
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 244
    .line 245
    .line 246
    :cond_f5
    :goto_f5
    iget-object v2, v1, Lg/e0;->g:Landroid/view/View;

    .line 247
    .line 248
    if-eqz v2, :cond_fc

    .line 249
    .line 250
    iput-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 251
    .line 252
    goto :goto_157

    .line 253
    :cond_fc
    iget-object v2, v1, Lg/e0;->h:Ll/n;

    .line 254
    .line 255
    if-nez v2, :cond_102

    .line 256
    .line 257
    goto/16 :goto_1d6

    .line 258
    .line 259
    :cond_102
    iget-object v2, v0, Lg/f0;->B:Lg/v;

    .line 260
    .line 261
    if-nez v2, :cond_10d

    .line 262
    .line 263
    new-instance v2, Lg/v;

    .line 264
    .line 265
    invoke-direct {v2, v0}, Lg/v;-><init>(Lg/f0;)V

    .line 266
    .line 267
    .line 268
    iput-object v2, v0, Lg/f0;->B:Lg/v;

    .line 269
    .line 270
    :cond_10d
    iget-object v2, v0, Lg/f0;->B:Lg/v;

    .line 271
    .line 272
    iget-object v6, v1, Lg/e0;->i:Ll/j;

    .line 273
    .line 274
    if-nez v6, :cond_125

    .line 275
    .line 276
    new-instance v6, Ll/j;

    .line 277
    .line 278
    iget-object v9, v1, Lg/e0;->j:Lk/d;

    .line 279
    .line 280
    invoke-direct {v6, v9}, Ll/j;-><init>(Landroid/content/ContextWrapper;)V

    .line 281
    .line 282
    .line 283
    iput-object v6, v1, Lg/e0;->i:Ll/j;

    .line 284
    .line 285
    iput-object v2, v6, Ll/j;->e:Ll/y;

    .line 286
    .line 287
    iget-object v2, v1, Lg/e0;->h:Ll/n;

    .line 288
    .line 289
    iget-object v9, v2, Ll/n;->a:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v2, v6, v9}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 292
    .line 293
    .line 294
    :cond_125
    iget-object v2, v1, Lg/e0;->i:Ll/j;

    .line 295
    .line 296
    iget-object v6, v1, Lg/e0;->e:Lg/d0;

    .line 297
    .line 298
    iget-object v9, v2, Ll/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 299
    .line 300
    if-nez v9, :cond_151

    .line 301
    .line 302
    iget-object v9, v2, Ll/j;->b:Landroid/view/LayoutInflater;

    .line 303
    .line 304
    const v10, 0x7f0c000d

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 312
    .line 313
    iput-object v6, v2, Ll/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 314
    .line 315
    iget-object v6, v2, Ll/j;->f:Ll/i;

    .line 316
    .line 317
    if-nez v6, :cond_145

    .line 318
    .line 319
    new-instance v6, Ll/i;

    .line 320
    .line 321
    invoke-direct {v6, v2}, Ll/i;-><init>(Ll/j;)V

    .line 322
    .line 323
    .line 324
    iput-object v6, v2, Ll/j;->f:Ll/i;

    .line 325
    .line 326
    :cond_145
    iget-object v6, v2, Ll/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 327
    .line 328
    iget-object v9, v2, Ll/j;->f:Ll/i;

    .line 329
    .line 330
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    .line 332
    .line 333
    iget-object v6, v2, Ll/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 334
    .line 335
    invoke-virtual {v6, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    .line 337
    .line 338
    :cond_151
    iget-object v2, v2, Ll/j;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 339
    .line 340
    iput-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 341
    .line 342
    if-eqz v2, :cond_1d6

    .line 343
    .line 344
    :goto_157
    iget-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 345
    .line 346
    if-nez v2, :cond_15d

    .line 347
    .line 348
    goto/16 :goto_1d6

    .line 349
    .line 350
    :cond_15d
    iget-object v2, v1, Lg/e0;->g:Landroid/view/View;

    .line 351
    .line 352
    if-eqz v2, :cond_162

    .line 353
    .line 354
    goto :goto_177

    .line 355
    :cond_162
    iget-object v2, v1, Lg/e0;->i:Ll/j;

    .line 356
    .line 357
    iget-object v6, v2, Ll/j;->f:Ll/i;

    .line 358
    .line 359
    if-nez v6, :cond_16f

    .line 360
    .line 361
    new-instance v6, Ll/i;

    .line 362
    .line 363
    invoke-direct {v6, v2}, Ll/i;-><init>(Ll/j;)V

    .line 364
    .line 365
    .line 366
    iput-object v6, v2, Ll/j;->f:Ll/i;

    .line 367
    .line 368
    :cond_16f
    iget-object v2, v2, Ll/j;->f:Ll/i;

    .line 369
    .line 370
    invoke-virtual {v2}, Ll/i;->getCount()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-lez v2, :cond_1d6

    .line 375
    .line 376
    :goto_177
    iget-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 377
    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-nez v2, :cond_184

    .line 383
    .line 384
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 385
    .line 386
    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 387
    .line 388
    .line 389
    :cond_184
    iget v6, v1, Lg/e0;->b:I

    .line 390
    .line 391
    iget-object v9, v1, Lg/e0;->e:Lg/d0;

    .line 392
    .line 393
    invoke-virtual {v9, v6}, Lg/d0;->setBackgroundResource(I)V

    .line 394
    .line 395
    .line 396
    iget-object v6, v1, Lg/e0;->f:Landroid/view/View;

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 403
    .line 404
    if-eqz v9, :cond_19c

    .line 405
    .line 406
    check-cast v6, Landroid/view/ViewGroup;

    .line 407
    .line 408
    iget-object v9, v1, Lg/e0;->f:Landroid/view/View;

    .line 409
    .line 410
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    :cond_19c
    iget-object v6, v1, Lg/e0;->e:Lg/d0;

    .line 414
    .line 415
    iget-object v9, v1, Lg/e0;->f:Landroid/view/View;

    .line 416
    .line 417
    invoke-virtual {v6, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .line 419
    .line 420
    iget-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-nez v2, :cond_1b0

    .line 427
    .line 428
    iget-object v2, v1, Lg/e0;->f:Landroid/view/View;

    .line 429
    .line 430
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 431
    .line 432
    .line 433
    :cond_1b0
    move v10, v8

    .line 434
    :goto_1b1
    iput-boolean v7, v1, Lg/e0;->l:Z

    .line 435
    .line 436
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 437
    .line 438
    const/high16 v15, 0x820000

    .line 439
    .line 440
    const/16 v16, -0x3

    .line 441
    .line 442
    const/4 v11, -0x2

    .line 443
    const/4 v12, 0x0

    .line 444
    const/4 v13, 0x0

    .line 445
    const/16 v14, 0x3ea

    .line 446
    .line 447
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 448
    .line 449
    .line 450
    iget v2, v1, Lg/e0;->c:I

    .line 451
    .line 452
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 453
    .line 454
    iget v2, v1, Lg/e0;->d:I

    .line 455
    .line 456
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 457
    .line 458
    iget-object v2, v1, Lg/e0;->e:Lg/d0;

    .line 459
    .line 460
    invoke-interface {v4, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    .line 462
    .line 463
    iput-boolean v5, v1, Lg/e0;->m:Z

    .line 464
    .line 465
    if-nez v3, :cond_1d8

    .line 466
    .line 467
    invoke-virtual {v0}, Lg/f0;->K()V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :cond_1d6
    :goto_1d6
    iput-boolean v5, v1, Lg/e0;->n:Z

    .line 472
    .line 473
    :cond_1d8
    :goto_1d8
    return-void
.end method

.method public final H(Lg/e0;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    iget-boolean v0, p1, Lg/e0;->k:Z

    .line 10
    .line 11
    if-nez v0, :cond_12

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 18
    .line 19
    :cond_12
    iget-object p1, p1, Lg/e0;->h:Ll/n;

    .line 20
    .line 21
    if-eqz p1, :cond_1b

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Ll/n;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_1b
    return v1
.end method

.method public final I(Lg/e0;Landroid/view/KeyEvent;)Z
    .registers 15

    .line 1
    iget-boolean v0, p0, Lg/f0;->Y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    goto/16 :goto_11a

    .line 7
    .line 8
    :cond_7
    iget-boolean v0, p1, Lg/e0;->k:Z

    .line 9
    .line 10
    iget v2, p1, Lg/e0;->a:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    return v3

    .line 16
    :cond_f
    iget-object v0, p0, Lg/f0;->U:Lg/e0;

    .line 17
    .line 18
    if-eqz v0, :cond_18

    .line 19
    .line 20
    if-eq v0, p1, :cond_18

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lg/f0;->t(Lg/e0;Z)V

    .line 23
    .line 24
    .line 25
    :cond_18
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_26

    .line 32
    .line 33
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, p1, Lg/e0;->g:Landroid/view/View;

    .line 38
    .line 39
    :cond_26
    const/16 v4, 0x6c

    .line 40
    .line 41
    if-eqz v2, :cond_2f

    .line 42
    .line 43
    if-ne v2, v4, :cond_2d

    .line 44
    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    move v5, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    :goto_2f
    move v5, v3

    .line 49
    :goto_30
    if-eqz v5, :cond_41

    .line 50
    .line 51
    iget-object v6, p0, Lg/f0;->z:Lm/e1;

    .line 52
    .line 53
    if-eqz v6, :cond_41

    .line 54
    .line 55
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 58
    .line 59
    .line 60
    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 61
    .line 62
    check-cast v6, Landroidx/appcompat/widget/i;

    .line 63
    .line 64
    iput-boolean v3, v6, Landroidx/appcompat/widget/i;->l:Z

    .line 65
    .line 66
    :cond_41
    iget-object v6, p1, Lg/e0;->g:Landroid/view/View;

    .line 67
    .line 68
    if-nez v6, :cond_169

    .line 69
    .line 70
    if-eqz v5, :cond_4d

    .line 71
    .line 72
    iget-object v6, p0, Lg/f0;->w:Lg/b;

    .line 73
    .line 74
    instance-of v6, v6, Lg/n0;

    .line 75
    .line 76
    if-nez v6, :cond_169

    .line 77
    .line 78
    :cond_4d
    iget-object v6, p1, Lg/e0;->h:Ll/n;

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    if-eqz v6, :cond_56

    .line 82
    .line 83
    iget-boolean v8, p1, Lg/e0;->o:Z

    .line 84
    .line 85
    if-eqz v8, :cond_11d

    .line 86
    .line 87
    :cond_56
    if-nez v6, :cond_d8

    .line 88
    .line 89
    iget-object v6, p0, Lg/f0;->k:Landroid/content/Context;

    .line 90
    .line 91
    if-eqz v2, :cond_5e

    .line 92
    .line 93
    if-ne v2, v4, :cond_b5

    .line 94
    .line 95
    :cond_5e
    iget-object v4, p0, Lg/f0;->z:Lm/e1;

    .line 96
    .line 97
    if-eqz v4, :cond_b5

    .line 98
    .line 99
    new-instance v4, Landroid/util/TypedValue;

    .line 100
    .line 101
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const v9, 0x7f040009

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v9, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 112
    .line 113
    .line 114
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 115
    .line 116
    const v10, 0x7f04000a

    .line 117
    .line 118
    .line 119
    if-eqz v9, :cond_8c

    .line 120
    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 130
    .line 131
    .line 132
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 133
    .line 134
    invoke-virtual {v9, v11, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 138
    .line 139
    .line 140
    goto :goto_90

    .line 141
    :cond_8c
    invoke-virtual {v8, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 142
    .line 143
    .line 144
    move-object v9, v7

    .line 145
    :goto_90
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 146
    .line 147
    if-eqz v10, :cond_a6

    .line 148
    .line 149
    if-nez v9, :cond_a1

    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 160
    .line 161
    .line 162
    :cond_a1
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 163
    .line 164
    invoke-virtual {v9, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 165
    .line 166
    .line 167
    :cond_a6
    if-eqz v9, :cond_b5

    .line 168
    .line 169
    new-instance v4, Lk/d;

    .line 170
    .line 171
    invoke-direct {v4, v6, v1}, Lk/d;-><init>(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Lk/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 179
    .line 180
    .line 181
    move-object v6, v4

    .line 182
    :cond_b5
    new-instance v4, Ll/n;

    .line 183
    .line 184
    invoke-direct {v4, v6}, Ll/n;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    iput-object p0, v4, Ll/n;->e:Ll/l;

    .line 188
    .line 189
    iget-object v6, p1, Lg/e0;->h:Ll/n;

    .line 190
    .line 191
    if-ne v4, v6, :cond_c1

    .line 192
    .line 193
    goto :goto_d3

    .line 194
    :cond_c1
    if-eqz v6, :cond_c8

    .line 195
    .line 196
    iget-object v8, p1, Lg/e0;->i:Ll/j;

    .line 197
    .line 198
    invoke-virtual {v6, v8}, Ll/n;->r(Ll/z;)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    iput-object v4, p1, Lg/e0;->h:Ll/n;

    .line 202
    .line 203
    iget-object v6, p1, Lg/e0;->i:Ll/j;

    .line 204
    .line 205
    if-eqz v6, :cond_d3

    .line 206
    .line 207
    iget-object v8, v4, Ll/n;->a:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v4, v6, v8}, Ll/n;->b(Ll/z;Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    :cond_d3
    :goto_d3
    iget-object v4, p1, Lg/e0;->h:Ll/n;

    .line 213
    .line 214
    if-nez v4, :cond_d8

    .line 215
    .line 216
    goto :goto_11a

    .line 217
    :cond_d8
    if-eqz v5, :cond_f2

    .line 218
    .line 219
    iget-object v4, p0, Lg/f0;->z:Lm/e1;

    .line 220
    .line 221
    if-eqz v4, :cond_f2

    .line 222
    .line 223
    iget-object v6, p0, Lg/f0;->A:Lg/u;

    .line 224
    .line 225
    if-nez v6, :cond_e9

    .line 226
    .line 227
    new-instance v6, Lg/u;

    .line 228
    .line 229
    invoke-direct {v6, p0}, Lg/u;-><init>(Lg/f0;)V

    .line 230
    .line 231
    .line 232
    iput-object v6, p0, Lg/f0;->A:Lg/u;

    .line 233
    .line 234
    :cond_e9
    iget-object v6, p1, Lg/e0;->h:Ll/n;

    .line 235
    .line 236
    iget-object v8, p0, Lg/f0;->A:Lg/u;

    .line 237
    .line 238
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 239
    .line 240
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Ll/y;)V

    .line 241
    .line 242
    .line 243
    :cond_f2
    iget-object v4, p1, Lg/e0;->h:Ll/n;

    .line 244
    .line 245
    invoke-virtual {v4}, Ll/n;->w()V

    .line 246
    .line 247
    .line 248
    iget-object v4, p1, Lg/e0;->h:Ll/n;

    .line 249
    .line 250
    invoke-interface {v0, v2, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_11b

    .line 255
    .line 256
    iget-object p2, p1, Lg/e0;->h:Ll/n;

    .line 257
    .line 258
    if-nez p2, :cond_104

    .line 259
    .line 260
    goto :goto_10d

    .line 261
    :cond_104
    if-eqz p2, :cond_10b

    .line 262
    .line 263
    iget-object v0, p1, Lg/e0;->i:Ll/j;

    .line 264
    .line 265
    invoke-virtual {p2, v0}, Ll/n;->r(Ll/z;)V

    .line 266
    .line 267
    .line 268
    :cond_10b
    iput-object v7, p1, Lg/e0;->h:Ll/n;

    .line 269
    .line 270
    :goto_10d
    if-eqz v5, :cond_11a

    .line 271
    .line 272
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 273
    .line 274
    if-eqz p1, :cond_11a

    .line 275
    .line 276
    iget-object p2, p0, Lg/f0;->A:Lg/u;

    .line 277
    .line 278
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 279
    .line 280
    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Ll/y;)V

    .line 281
    .line 282
    .line 283
    :cond_11a
    :goto_11a
    return v1

    .line 284
    :cond_11b
    iput-boolean v1, p1, Lg/e0;->o:Z

    .line 285
    .line 286
    :cond_11d
    iget-object v2, p1, Lg/e0;->h:Ll/n;

    .line 287
    .line 288
    invoke-virtual {v2}, Ll/n;->w()V

    .line 289
    .line 290
    .line 291
    iget-object v2, p1, Lg/e0;->p:Landroid/os/Bundle;

    .line 292
    .line 293
    if-eqz v2, :cond_12d

    .line 294
    .line 295
    iget-object v4, p1, Lg/e0;->h:Ll/n;

    .line 296
    .line 297
    invoke-virtual {v4, v2}, Ll/n;->s(Landroid/os/Bundle;)V

    .line 298
    .line 299
    .line 300
    iput-object v7, p1, Lg/e0;->p:Landroid/os/Bundle;

    .line 301
    .line 302
    :cond_12d
    iget-object v2, p1, Lg/e0;->g:Landroid/view/View;

    .line 303
    .line 304
    iget-object v4, p1, Lg/e0;->h:Ll/n;

    .line 305
    .line 306
    invoke-interface {v0, v1, v2, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_14a

    .line 311
    .line 312
    if-eqz v5, :cond_144

    .line 313
    .line 314
    iget-object p2, p0, Lg/f0;->z:Lm/e1;

    .line 315
    .line 316
    if-eqz p2, :cond_144

    .line 317
    .line 318
    iget-object v0, p0, Lg/f0;->A:Lg/u;

    .line 319
    .line 320
    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 321
    .line 322
    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/view/Menu;Ll/y;)V

    .line 323
    .line 324
    .line 325
    :cond_144
    iget-object p1, p1, Lg/e0;->h:Ll/n;

    .line 326
    .line 327
    invoke-virtual {p1}, Ll/n;->v()V

    .line 328
    .line 329
    .line 330
    return v1

    .line 331
    :cond_14a
    if-eqz p2, :cond_151

    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    goto :goto_152

    .line 338
    :cond_151
    const/4 p2, -0x1

    .line 339
    :goto_152
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 344
    .line 345
    .line 346
    move-result p2

    .line 347
    if-eq p2, v3, :cond_15e

    .line 348
    .line 349
    move p2, v3

    .line 350
    goto :goto_15f

    .line 351
    :cond_15e
    move p2, v1

    .line 352
    :goto_15f
    iget-object v0, p1, Lg/e0;->h:Ll/n;

    .line 353
    .line 354
    invoke-virtual {v0, p2}, Ll/n;->setQwertyMode(Z)V

    .line 355
    .line 356
    .line 357
    iget-object p2, p1, Lg/e0;->h:Ll/n;

    .line 358
    .line 359
    invoke-virtual {p2}, Ll/n;->v()V

    .line 360
    .line 361
    .line 362
    :cond_169
    iput-boolean v3, p1, Lg/e0;->k:Z

    .line 363
    .line 364
    iput-boolean v1, p1, Lg/e0;->l:Z

    .line 365
    .line 366
    iput-object p1, p0, Lg/f0;->U:Lg/e0;

    .line 367
    .line 368
    return v3
.end method

.method public final J()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lg/f0;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 7
    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final K()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_39

    .line 6
    .line 7
    iget-object v0, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    goto :goto_1c

    .line 13
    :cond_c
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Lg/e0;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_17

    .line 21
    .line 22
    :goto_15
    move v1, v2

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget-object v0, p0, Lg/f0;->C:Lk/b;

    .line 25
    .line 26
    if-eqz v0, :cond_1c

    .line 27
    .line 28
    goto :goto_15

    .line 29
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2b

    .line 30
    .line 31
    iget-object v0, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 32
    .line 33
    if-nez v0, :cond_2b

    .line 34
    .line 35
    iget-object v0, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 36
    .line 37
    invoke-static {v0, p0}, Lg/z;->b(Ljava/lang/Object;Lg/f0;)Landroid/window/OnBackInvokedCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    if-nez v1, :cond_39

    .line 45
    .line 46
    iget-object v0, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 47
    .line 48
    if-eqz v0, :cond_39

    .line 49
    .line 50
    iget-object v1, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lg/z;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 57
    .line 58
    :cond_39
    return-void
.end method

.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/f0;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_10

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lg/f0;

    .line 22
    .line 23
    if-nez v0, :cond_1f

    .line 24
    .line 25
    const-string v0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    invoke-virtual {p0}, Lg/f0;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg/b;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_14

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lg/f0;->D(I)V

    .line 19
    .line 20
    .line 21
    :cond_14
    :goto_14
    return-void
.end method

.method public final d(Ll/n;Landroid/view/MenuItem;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_31

    .line 9
    .line 10
    iget-boolean v2, p0, Lg/f0;->Y:Z

    .line 11
    .line 12
    if-nez v2, :cond_31

    .line 13
    .line 14
    invoke-virtual {p1}, Ll/n;->k()Ll/n;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p0, Lg/f0;->T:[Lg/e0;

    .line 19
    .line 20
    if-eqz v2, :cond_17

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v3, v1

    .line 25
    :goto_18
    move v4, v1

    .line 26
    :goto_19
    if-ge v4, v3, :cond_27

    .line 27
    .line 28
    aget-object v5, v2, v4

    .line 29
    .line 30
    if-eqz v5, :cond_24

    .line 31
    .line 32
    iget-object v6, v5, Lg/e0;->h:Ll/n;

    .line 33
    .line 34
    if-ne v6, p1, :cond_24

    .line 35
    .line 36
    goto :goto_28

    .line 37
    :cond_24
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_19

    .line 40
    :cond_27
    const/4 v5, 0x0

    .line 41
    :goto_28
    if-eqz v5, :cond_31

    .line 42
    .line 43
    iget p1, v5, Lg/e0;->a:I

    .line 44
    .line 45
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_31
    return v1
.end method

.method public final e()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/f0;->W:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lg/f0;->o(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lg/f0;->y()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_44

    .line 16
    .line 17
    :try_start_10
    check-cast v1, Landroid/app/Activity;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_12} :catch_22

    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Ly/e;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1a} :catch_22

    .line 27
    goto :goto_23

    .line 28
    :catch_1b
    move-exception v1

    .line 29
    :try_start_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_22} :catch_22

    .line 35
    :catch_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    if-eqz v1, :cond_2f

    .line 37
    .line 38
    iget-object v1, p0, Lg/f0;->w:Lg/b;

    .line 39
    .line 40
    if-nez v1, :cond_2c

    .line 41
    .line 42
    iput-boolean v0, p0, Lg/f0;->j0:Z

    .line 43
    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    invoke-virtual {v1, v0}, Lg/b;->l(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    :goto_2f
    sget-object v1, Lg/s;->h:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_32
    invoke-static {p0}, Lg/s;->g(Lg/f0;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lg/s;->g:Ls/f;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ls/f;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_44

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_41

    .line 68
    throw v0

    .line 69
    :cond_44
    :goto_44
    new-instance v1, Landroid/content/res/Configuration;

    .line 70
    .line 71
    iget-object v2, p0, Lg/f0;->k:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lg/f0;->Z:Landroid/content/res/Configuration;

    .line 85
    .line 86
    iput-boolean v0, p0, Lg/f0;->X:Z

    .line 87
    .line 88
    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    sget-object v0, Lg/s;->h:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    invoke-static {p0}, Lg/s;->g(Lg/f0;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_11

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    .line 17
    throw v1

    .line 18
    :cond_11
    :goto_11
    iget-boolean v0, p0, Lg/f0;->g0:Z

    .line 19
    .line 20
    if-eqz v0, :cond_20

    .line 21
    .line 22
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lg/f0;->i0:Lg/t;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lg/f0;->Y:Z

    .line 35
    .line 36
    iget v0, p0, Lg/f0;->a0:I

    .line 37
    .line 38
    const/16 v1, -0x64

    .line 39
    .line 40
    if-eq v0, v1, :cond_4d

    .line 41
    .line 42
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v1, :cond_4d

    .line 47
    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4d

    .line 55
    .line 56
    sget-object v0, Lg/f0;->p0:Ls/j;

    .line 57
    .line 58
    iget-object v1, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lg/f0;->a0:I

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_5c

    .line 78
    :cond_4d
    sget-object v0, Lg/f0;->p0:Ls/j;

    .line 79
    .line 80
    iget-object v1, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_5c
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 94
    .line 95
    if-eqz v0, :cond_63

    .line 96
    .line 97
    invoke-virtual {v0}, Lg/b;->h()V

    .line 98
    .line 99
    .line 100
    :cond_63
    iget-object v0, p0, Lg/f0;->e0:Lg/b0;

    .line 101
    .line 102
    if-eqz v0, :cond_6a

    .line 103
    .line 104
    invoke-virtual {v0}, Lg/c0;->c()V

    .line 105
    .line 106
    .line 107
    :cond_6a
    iget-object v0, p0, Lg/f0;->f0:Lg/b0;

    .line 108
    .line 109
    if-eqz v0, :cond_71

    .line 110
    .line 111
    invoke-virtual {v0}, Lg/c0;->c()V

    .line 112
    .line 113
    .line 114
    :cond_71
    return-void
.end method

.method public final h(Ll/n;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_d3

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 13
    .line 14
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_d3

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 25
    .line 26
    if-eqz p1, :cond_d3

    .line 27
    .line 28
    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    .line 29
    .line 30
    if-eqz p1, :cond_d3

    .line 31
    .line 32
    iget-object p1, p0, Lg/f0;->k:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4a

    .line 43
    .line 44
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 45
    .line 46
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 52
    .line 53
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 58
    .line 59
    if-eqz p1, :cond_d3

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 62
    .line 63
    if-eqz p1, :cond_d3

    .line 64
    .line 65
    iget-object v2, p1, Landroidx/appcompat/widget/a;->C:Lm/g;

    .line 66
    .line 67
    if-nez v2, :cond_4a

    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->e()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_d3

    .line 74
    .line 75
    :cond_4a
    iget-object p1, p0, Lg/f0;->l:Landroid/view/Window;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v2, p0, Lg/f0;->z:Lm/e1;

    .line 82
    .line 83
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 86
    .line 87
    .line 88
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 89
    .line 90
    check-cast v2, Landroidx/appcompat/widget/i;

    .line 91
    .line 92
    iget-object v2, v2, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/16 v3, 0x6c

    .line 99
    .line 100
    if-eqz v2, :cond_8c

    .line 101
    .line 102
    iget-object v0, p0, Lg/f0;->z:Lm/e1;

    .line 103
    .line 104
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 110
    .line 111
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 112
    .line 113
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 116
    .line 117
    if-eqz v0, :cond_7e

    .line 118
    .line 119
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 120
    .line 121
    if-eqz v0, :cond_7e

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :cond_7e
    iget-boolean v0, p0, Lg/f0;->Y:Z

    .line 128
    .line 129
    if-nez v0, :cond_d2

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Lg/e0;->h:Ll/n;

    .line 136
    .line 137
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8c
    if-eqz p1, :cond_d2

    .line 142
    .line 143
    iget-boolean v2, p0, Lg/f0;->Y:Z

    .line 144
    .line 145
    if-nez v2, :cond_d2

    .line 146
    .line 147
    iget-boolean v2, p0, Lg/f0;->g0:Z

    .line 148
    .line 149
    if-eqz v2, :cond_a9

    .line 150
    .line 151
    iget v2, p0, Lg/f0;->h0:I

    .line 152
    .line 153
    and-int/2addr v0, v2

    .line 154
    if-eqz v0, :cond_a9

    .line 155
    .line 156
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v2, p0, Lg/f0;->i0:Lg/t;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lg/t;->run()V

    .line 168
    .line 169
    .line 170
    :cond_a9
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v2, v0, Lg/e0;->h:Ll/n;

    .line 175
    .line 176
    if-eqz v2, :cond_d2

    .line 177
    .line 178
    iget-boolean v4, v0, Lg/e0;->o:Z

    .line 179
    .line 180
    if-nez v4, :cond_d2

    .line 181
    .line 182
    iget-object v4, v0, Lg/e0;->g:Landroid/view/View;

    .line 183
    .line 184
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_d2

    .line 189
    .line 190
    iget-object v0, v0, Lg/e0;->h:Ll/n;

    .line 191
    .line 192
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 196
    .line 197
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 203
    .line 204
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 205
    .line 206
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 209
    .line 210
    .line 211
    :cond_d2
    return-void

    .line 212
    :cond_d3
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-boolean v0, p1, Lg/e0;->n:Z

    .line 217
    .line 218
    invoke-virtual {p0, p1, v1}, Lg/f0;->t(Lg/e0;Z)V

    .line 219
    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0}, Lg/f0;->G(Lg/e0;Landroid/view/KeyEvent;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final i(I)Z
    .registers 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x6d

    .line 4
    .line 5
    const/16 v2, 0x6c

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v0, :cond_11

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_1b

    .line 18
    :cond_11
    const/16 v0, 0x9

    .line 19
    .line 20
    if-ne p1, v0, :cond_1b

    .line 21
    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 23
    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move p1, v1

    .line 28
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lg/f0;->R:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_23

    .line 32
    .line 33
    if-ne p1, v2, :cond_23

    .line 34
    .line 35
    return v3

    .line 36
    :cond_23
    iget-boolean v0, p0, Lg/f0;->N:Z

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v0, :cond_2c

    .line 40
    .line 41
    if-ne p1, v4, :cond_2c

    .line 42
    .line 43
    iput-boolean v3, p0, Lg/f0;->N:Z

    .line 44
    .line 45
    :cond_2c
    if-eq p1, v4, :cond_61

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq p1, v0, :cond_5b

    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    if-eq p1, v0, :cond_55

    .line 52
    .line 53
    const/16 v0, 0xa

    .line 54
    .line 55
    if-eq p1, v0, :cond_4f

    .line 56
    .line 57
    if-eq p1, v2, :cond_49

    .line 58
    .line 59
    if-eq p1, v1, :cond_43

    .line 60
    .line 61
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_43
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 69
    .line 70
    .line 71
    iput-boolean v4, p0, Lg/f0;->O:Z

    .line 72
    .line 73
    return v4

    .line 74
    :cond_49
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Lg/f0;->N:Z

    .line 78
    .line 79
    return v4

    .line 80
    :cond_4f
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 81
    .line 82
    .line 83
    iput-boolean v4, p0, Lg/f0;->P:Z

    .line 84
    .line 85
    return v4

    .line 86
    :cond_55
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 87
    .line 88
    .line 89
    iput-boolean v4, p0, Lg/f0;->M:Z

    .line 90
    .line 91
    return v4

    .line 92
    :cond_5b
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 93
    .line 94
    .line 95
    iput-boolean v4, p0, Lg/f0;->L:Z

    .line 96
    .line 97
    return v4

    .line 98
    :cond_61
    invoke-virtual {p0}, Lg/f0;->J()V

    .line 99
    .line 100
    .line 101
    iput-boolean v4, p0, Lg/f0;->R:Z

    .line 102
    .line 103
    return v4
.end method

.method public final j(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lg/f0;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lg/f0;->k:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lg/f0;->m:Lg/a0;

    .line 28
    .line 29
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lg/a0;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final k(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lg/f0;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lg/f0;->m:Lg/a0;

    .line 22
    .line 23
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lg/a0;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lg/f0;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lg/f0;->m:Lg/a0;

    .line 22
    .line 23
    iget-object p2, p0, Lg/f0;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lg/a0;->a(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg/f0;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lg/f0;->z:Lm/e1;

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lm/e1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lg/f0;->w:Lg/b;

    .line 12
    .line 13
    if-eqz v0, :cond_12

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lg/b;->n(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lg/f0;->J:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_19

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public final n(Lk/a;)Lk/b;
    .registers 10

    .line 1
    if-eqz p1, :cond_1b2

    .line 2
    .line 3
    iget-object v0, p0, Lg/f0;->C:Lk/b;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Lk/b;->a()V

    .line 8
    .line 9
    .line 10
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Lg/f0;Lk/a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lg/f0;->C()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lg/f0;->w:Lg/b;

    .line 19
    .line 20
    iget-object v1, p0, Lg/f0;->v:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz p1, :cond_22

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lg/b;->o(Lcom/google/android/gms/internal/measurement/y4;)Lk/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lg/f0;->C:Lk/b;

    .line 29
    .line 30
    if-eqz p1, :cond_22

    .line 31
    .line 32
    invoke-interface {v1, p1}, Lg/n;->onSupportActionModeStarted(Lk/b;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object p1, p0, Lg/f0;->C:Lk/b;

    .line 36
    .line 37
    if-nez p1, :cond_1ac

    .line 38
    .line 39
    iget-object p1, p0, Lg/f0;->G:Lj0/o0;

    .line 40
    .line 41
    if-eqz p1, :cond_2d

    .line 42
    .line 43
    invoke-virtual {p1}, Lj0/o0;->b()V

    .line 44
    .line 45
    .line 46
    :cond_2d
    iget-object p1, p0, Lg/f0;->C:Lk/b;

    .line 47
    .line 48
    if-eqz p1, :cond_34

    .line 49
    .line 50
    invoke-virtual {p1}, Lk/b;->a()V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-boolean p1, p0, Lg/f0;->Y:Z

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez p1, :cond_3e

    .line 57
    .line 58
    :try_start_39
    invoke-interface {v1, v0}, Lg/n;->onWindowStartingSupportActionMode(Lk/a;)Lk/b;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_3d
    .catch Ljava/lang/AbstractMethodError; {:try_start_39 .. :try_end_3d} :catch_3e

    .line 62
    goto :goto_3f

    .line 63
    :catch_3e
    :cond_3e
    move-object p1, v2

    .line 64
    :goto_3f
    if-eqz p1, :cond_45

    .line 65
    .line 66
    iput-object p1, p0, Lg/f0;->C:Lk/b;

    .line 67
    .line 68
    goto/16 :goto_19e

    .line 69
    .line 70
    :cond_45
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    if-nez p1, :cond_fb

    .line 75
    .line 76
    iget-boolean p1, p0, Lg/f0;->Q:Z

    .line 77
    .line 78
    iget-object v5, p0, Lg/f0;->k:Landroid/content/Context;

    .line 79
    .line 80
    if-eqz p1, :cond_ce

    .line 81
    .line 82
    new-instance p1, Landroid/util/TypedValue;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const v7, 0x7f040009

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 95
    .line 96
    .line 97
    iget v7, p1, Landroid/util/TypedValue;->resourceId:I

    .line 98
    .line 99
    if-eqz v7, :cond_81

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 110
    .line 111
    .line 112
    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    .line 113
    .line 114
    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lk/d;

    .line 118
    .line 119
    invoke-direct {v6, v5, v4}, Lk/d;-><init>(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Lk/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 127
    .line 128
    .line 129
    move-object v5, v6

    .line 130
    :cond_81
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 131
    .line 132
    invoke-direct {v6, v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    .line 134
    .line 135
    iput-object v6, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 136
    .line 137
    new-instance v6, Landroid/widget/PopupWindow;

    .line 138
    .line 139
    const v7, 0x7f040018

    .line 140
    .line 141
    .line 142
    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    .line 144
    .line 145
    iput-object v6, p0, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 146
    .line 147
    const/4 v7, 0x2

    .line 148
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 149
    .line 150
    .line 151
    iget-object v6, p0, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 152
    .line 153
    iget-object v7, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    iget-object v6, p0, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 159
    .line 160
    const/4 v7, -0x1

    .line 161
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const v7, 0x7f040003

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v7, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 172
    .line 173
    .line 174
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 175
    .line 176
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {p1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    iget-object v5, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 189
    .line 190
    invoke-virtual {v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 194
    .line 195
    const/4 v5, -0x2

    .line 196
    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lg/t;

    .line 200
    .line 201
    invoke-direct {p1, p0, v3}, Lg/t;-><init>(Lg/f0;I)V

    .line 202
    .line 203
    .line 204
    iput-object p1, p0, Lg/f0;->F:Lg/t;

    .line 205
    .line 206
    goto :goto_fb

    .line 207
    :cond_ce
    iget-object p1, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 208
    .line 209
    const v6, 0x7f090036

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    .line 217
    .line 218
    if-eqz p1, :cond_fb

    .line 219
    .line 220
    invoke-virtual {p0}, Lg/f0;->C()V

    .line 221
    .line 222
    .line 223
    iget-object v6, p0, Lg/f0;->w:Lg/b;

    .line 224
    .line 225
    if-eqz v6, :cond_e7

    .line 226
    .line 227
    invoke-virtual {v6}, Lg/b;->e()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    move-object v6, v2

    .line 233
    :goto_e8
    if-nez v6, :cond_eb

    .line 234
    .line 235
    goto :goto_ec

    .line 236
    :cond_eb
    move-object v5, v6

    .line 237
    :goto_ec
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    .line 249
    .line 250
    iput-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 251
    .line 252
    :cond_fb
    :goto_fb
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 253
    .line 254
    if-eqz p1, :cond_19e

    .line 255
    .line 256
    iget-object p1, p0, Lg/f0;->G:Lj0/o0;

    .line 257
    .line 258
    if-eqz p1, :cond_106

    .line 259
    .line 260
    invoke-virtual {p1}, Lj0/o0;->b()V

    .line 261
    .line 262
    .line 263
    :cond_106
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 264
    .line 265
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 266
    .line 267
    .line 268
    new-instance p1, Lk/e;

    .line 269
    .line 270
    iget-object v5, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    iget-object v6, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 277
    .line 278
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    iput-object v5, p1, Lk/e;->c:Landroid/content/Context;

    .line 282
    .line 283
    iput-object v6, p1, Lk/e;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 284
    .line 285
    iput-object v0, p1, Lk/e;->e:Lcom/google/android/gms/internal/measurement/y4;

    .line 286
    .line 287
    new-instance v5, Ll/n;

    .line 288
    .line 289
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-direct {v5, v6}, Ll/n;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    iput v3, v5, Ll/n;->l:I

    .line 297
    .line 298
    iput-object v5, p1, Lk/e;->h:Ll/n;

    .line 299
    .line 300
    iput-object p1, v5, Ll/n;->e:Ll/l;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v0, Lk/a;

    .line 305
    .line 306
    invoke-interface {v0, p1, v5}, Lk/a;->e(Lk/b;Landroid/view/Menu;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_19c

    .line 311
    .line 312
    invoke-virtual {p1}, Lk/e;->i()V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lk/b;)V

    .line 318
    .line 319
    .line 320
    iput-object p1, p0, Lg/f0;->C:Lk/b;

    .line 321
    .line 322
    iget-boolean p1, p0, Lg/f0;->H:Z

    .line 323
    .line 324
    const/high16 v0, 0x3f800000    # 1.0f

    .line 325
    .line 326
    if-eqz p1, :cond_16b

    .line 327
    .line 328
    iget-object p1, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 329
    .line 330
    if-eqz p1, :cond_16b

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_16b

    .line 337
    .line 338
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 339
    .line 340
    const/4 v2, 0x0

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 345
    .line 346
    invoke-static {p1}, Lj0/k0;->a(Landroid/view/View;)Lj0/o0;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p1, v0}, Lj0/o0;->a(F)V

    .line 351
    .line 352
    .line 353
    iput-object p1, p0, Lg/f0;->G:Lj0/o0;

    .line 354
    .line 355
    new-instance v0, Lg/w;

    .line 356
    .line 357
    invoke-direct {v0, v3, p0}, Lg/w;-><init>(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v0}, Lj0/o0;->d(Lj0/p0;)V

    .line 361
    .line 362
    .line 363
    goto :goto_18c

    .line 364
    :cond_16b
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 365
    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 370
    .line 371
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    instance-of p1, p1, Landroid/view/View;

    .line 381
    .line 382
    if-eqz p1, :cond_18c

    .line 383
    .line 384
    iget-object p1, p0, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 385
    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Landroid/view/View;

    .line 391
    .line 392
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 393
    .line 394
    invoke-static {p1}, Lj0/b0;->c(Landroid/view/View;)V

    .line 395
    .line 396
    .line 397
    :cond_18c
    :goto_18c
    iget-object p1, p0, Lg/f0;->E:Landroid/widget/PopupWindow;

    .line 398
    .line 399
    if-eqz p1, :cond_19e

    .line 400
    .line 401
    iget-object p1, p0, Lg/f0;->l:Landroid/view/Window;

    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iget-object v0, p0, Lg/f0;->F:Lg/t;

    .line 408
    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_19e

    .line 413
    :cond_19c
    iput-object v2, p0, Lg/f0;->C:Lk/b;

    .line 414
    .line 415
    :cond_19e
    :goto_19e
    iget-object p1, p0, Lg/f0;->C:Lk/b;

    .line 416
    .line 417
    if-eqz p1, :cond_1a5

    .line 418
    .line 419
    invoke-interface {v1, p1}, Lg/n;->onSupportActionModeStarted(Lk/b;)V

    .line 420
    .line 421
    .line 422
    :cond_1a5
    invoke-virtual {p0}, Lg/f0;->K()V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lg/f0;->C:Lk/b;

    .line 426
    .line 427
    iput-object p1, p0, Lg/f0;->C:Lk/b;

    .line 428
    .line 429
    :cond_1ac
    invoke-virtual {p0}, Lg/f0;->K()V

    .line 430
    .line 431
    .line 432
    iget-object p1, p0, Lg/f0;->C:Lk/b;

    .line 433
    .line 434
    return-object p1

    .line 435
    :cond_1b2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 436
    .line 437
    const-string v0, "ActionMode callback can not be null."

    .line 438
    .line 439
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p1
.end method

.method public final o(ZZ)Z
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lg/f0;->Y:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v2

    .line 9
    :cond_8
    const/16 v0, -0x64

    .line 10
    .line 11
    iget v3, v1, Lg/f0;->a0:I

    .line 12
    .line 13
    if-eq v3, v0, :cond_f

    .line 14
    .line 15
    goto :goto_11

    .line 16
    :cond_f
    sget v3, Lg/s;->b:I

    .line 17
    .line 18
    :goto_11
    iget-object v4, v1, Lg/f0;->k:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1, v4, v3}, Lg/f0;->E(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v6, 0x21

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-ge v0, v6, :cond_23

    .line 30
    .line 31
    invoke-static {v4}, Lg/f0;->q(Landroid/content/Context;)Lf0/f;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v6, v7

    .line 37
    :goto_24
    if-nez p2, :cond_34

    .line 38
    .line 39
    if-eqz v6, :cond_34

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6}, Lg/f0;->A(Landroid/content/res/Configuration;)Lf0/f;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :cond_34
    invoke-static {v4, v5, v6, v7, v2}, Lg/f0;->u(Landroid/content/Context;ILf0/f;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-boolean v9, v1, Lg/f0;->d0:Z

    .line 58
    .line 59
    const/16 v10, 0x18

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    iget-object v12, v1, Lg/f0;->j:Ljava/lang/Object;

    .line 63
    .line 64
    if-nez v9, :cond_78

    .line 65
    .line 66
    instance-of v9, v12, Landroid/app/Activity;

    .line 67
    .line 68
    if-eqz v9, :cond_78

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    if-nez v9, :cond_4d

    .line 75
    .line 76
    move v0, v2

    .line 77
    goto :goto_7c

    .line 78
    :cond_4d
    const/16 v13, 0x1d

    .line 79
    .line 80
    if-lt v0, v13, :cond_54

    .line 81
    .line 82
    const/high16 v0, 0x100c0000

    .line 83
    .line 84
    goto :goto_5a

    .line 85
    :cond_54
    if-lt v0, v10, :cond_59

    .line 86
    .line 87
    const/high16 v0, 0xc0000

    .line 88
    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v0, v2

    .line 91
    :goto_5a
    :try_start_5a
    new-instance v13, Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-direct {v13, v4, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v13, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_78

    .line 105
    .line 106
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 107
    .line 108
    iput v0, v1, Lg/f0;->c0:I
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_6d} :catch_6e

    .line 109
    .line 110
    goto :goto_78

    .line 111
    :catch_6e
    move-exception v0

    .line 112
    const-string v9, "AppCompatDelegate"

    .line 113
    .line 114
    const-string v13, "Exception while getting ActivityInfo"

    .line 115
    .line 116
    invoke-static {v9, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    iput v2, v1, Lg/f0;->c0:I

    .line 120
    .line 121
    :cond_78
    :goto_78
    iput-boolean v11, v1, Lg/f0;->d0:Z

    .line 122
    .line 123
    iget v0, v1, Lg/f0;->c0:I

    .line 124
    .line 125
    :goto_7c
    iget-object v9, v1, Lg/f0;->Z:Landroid/content/res/Configuration;

    .line 126
    .line 127
    if-nez v9, :cond_88

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    :cond_88
    iget v13, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 138
    .line 139
    and-int/lit8 v13, v13, 0x30

    .line 140
    .line 141
    iget v14, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 142
    .line 143
    and-int/lit8 v14, v14, 0x30

    .line 144
    .line 145
    invoke-static {v9}, Lg/f0;->A(Landroid/content/res/Configuration;)Lf0/f;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-nez v6, :cond_98

    .line 150
    .line 151
    move-object v15, v7

    .line 152
    goto :goto_9c

    .line 153
    :cond_98
    invoke-static {v8}, Lg/f0;->A(Landroid/content/res/Configuration;)Lf0/f;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    :goto_9c
    if-eq v13, v14, :cond_a1

    .line 158
    .line 159
    const/16 v13, 0x200

    .line 160
    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move v13, v2

    .line 163
    :goto_a2
    if-eqz v15, :cond_ac

    .line 164
    .line 165
    invoke-virtual {v9, v15}, Lf0/f;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-nez v9, :cond_ac

    .line 170
    .line 171
    or-int/lit16 v13, v13, 0x2004

    .line 172
    .line 173
    :cond_ac
    not-int v9, v0

    .line 174
    and-int/2addr v9, v13

    .line 175
    const/16 v11, 0x1c

    .line 176
    .line 177
    if-eqz v9, :cond_101

    .line 178
    .line 179
    if-eqz p1, :cond_101

    .line 180
    .line 181
    iget-boolean v9, v1, Lg/f0;->W:Z

    .line 182
    .line 183
    if-eqz v9, :cond_101

    .line 184
    .line 185
    sget-boolean v9, Lg/f0;->r0:Z

    .line 186
    .line 187
    if-nez v9, :cond_c0

    .line 188
    .line 189
    iget-boolean v9, v1, Lg/f0;->X:Z

    .line 190
    .line 191
    if-eqz v9, :cond_101

    .line 192
    .line 193
    :cond_c0
    instance-of v9, v12, Landroid/app/Activity;

    .line 194
    .line 195
    if-eqz v9, :cond_101

    .line 196
    .line 197
    move-object v9, v12

    .line 198
    check-cast v9, Landroid/app/Activity;

    .line 199
    .line 200
    invoke-virtual {v9}, Landroid/app/Activity;->isChild()Z

    .line 201
    .line 202
    .line 203
    move-result v16

    .line 204
    if-nez v16, :cond_101

    .line 205
    .line 206
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v2, 0x1f

    .line 209
    .line 210
    if-lt v7, v2, :cond_e6

    .line 211
    .line 212
    and-int/lit16 v2, v13, 0x2000

    .line 213
    .line 214
    if-eqz v2, :cond_e6

    .line 215
    .line 216
    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutDirection(I)V

    .line 229
    .line 230
    .line 231
    :cond_e6
    if-lt v7, v11, :cond_ec

    .line 232
    .line 233
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    .line 234
    .line 235
    .line 236
    goto :goto_ff

    .line 237
    :cond_ec
    new-instance v2, Landroid/os/Handler;

    .line 238
    .line 239
    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    .line 245
    .line 246
    new-instance v7, La2/g;

    .line 247
    .line 248
    const/16 v8, 0x10

    .line 249
    .line 250
    invoke-direct {v7, v8, v9}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    :goto_ff
    const/4 v2, 0x1

    .line 257
    goto :goto_102

    .line 258
    :cond_101
    const/4 v2, 0x0

    .line 259
    :goto_102
    if-nez v2, :cond_22c

    .line 260
    .line 261
    if-eqz v13, :cond_22c

    .line 262
    .line 263
    and-int/2addr v0, v13

    .line 264
    if-ne v0, v13, :cond_10b

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    goto :goto_10c

    .line 268
    :cond_10b
    const/4 v2, 0x0

    .line 269
    :goto_10c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    new-instance v8, Landroid/content/res/Configuration;

    .line 274
    .line 275
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 287
    .line 288
    and-int/lit8 v0, v0, -0x31

    .line 289
    .line 290
    or-int/2addr v0, v14

    .line 291
    iput v0, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 292
    .line 293
    if-eqz v15, :cond_13f

    .line 294
    .line 295
    iget-object v0, v15, Lf0/f;->a:Lf0/h;

    .line 296
    .line 297
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 298
    .line 299
    if-lt v9, v10, :cond_130

    .line 300
    .line 301
    invoke-static {v8, v15}, Lg/y;->d(Landroid/content/res/Configuration;Lf0/f;)V

    .line 302
    .line 303
    .line 304
    goto :goto_13f

    .line 305
    :cond_130
    const/4 v9, 0x0

    .line 306
    invoke-interface {v0, v9}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-virtual {v8, v14}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v9}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 318
    .line 319
    .line 320
    :cond_13f
    :goto_13f
    const/4 v9, 0x0

    .line 321
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 322
    .line 323
    .line 324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .line 326
    const/16 v14, 0x1a

    .line 327
    .line 328
    if-ge v0, v14, :cond_1e8

    .line 329
    .line 330
    if-lt v0, v11, :cond_14d

    .line 331
    .line 332
    goto/16 :goto_1e8

    .line 333
    .line 334
    :cond_14d
    const-string v11, "mDrawableCache"

    .line 335
    .line 336
    const-class v14, Landroid/content/res/Resources;

    .line 337
    .line 338
    const-string v9, "ResourcesFlusher"

    .line 339
    .line 340
    if-lt v0, v10, :cond_1b9

    .line 341
    .line 342
    sget-boolean v0, Lj7/g;->h:Z

    .line 343
    .line 344
    if-nez v0, :cond_170

    .line 345
    .line 346
    :try_start_159
    const-string v0, "mResourcesImpl"

    .line 347
    .line 348
    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    sput-object v0, Lj7/g;->g:Ljava/lang/reflect/Field;

    .line 353
    .line 354
    const/4 v14, 0x1

    .line 355
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_165
    .catch Ljava/lang/NoSuchFieldException; {:try_start_159 .. :try_end_165} :catch_167

    .line 356
    .line 357
    .line 358
    :goto_165
    const/4 v14, 0x1

    .line 359
    goto :goto_16e

    .line 360
    :catch_167
    move-exception v0

    .line 361
    const-string v14, "Could not retrieve Resources#mResourcesImpl field"

    .line 362
    .line 363
    invoke-static {v9, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .line 365
    .line 366
    goto :goto_165

    .line 367
    :goto_16e
    sput-boolean v14, Lj7/g;->h:Z

    .line 368
    .line 369
    :cond_170
    sget-object v0, Lj7/g;->g:Ljava/lang/reflect/Field;

    .line 370
    .line 371
    if-nez v0, :cond_176

    .line 372
    .line 373
    goto/16 :goto_1e8

    .line 374
    .line 375
    :cond_176
    :try_start_176
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0
    :try_end_17a
    .catch Ljava/lang/IllegalAccessException; {:try_start_176 .. :try_end_17a} :catch_17c

    .line 379
    move-object v7, v0

    .line 380
    goto :goto_183

    .line 381
    :catch_17c
    move-exception v0

    .line 382
    const-string v7, "Could not retrieve value from Resources#mResourcesImpl"

    .line 383
    .line 384
    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .line 386
    .line 387
    const/4 v7, 0x0

    .line 388
    :goto_183
    if-nez v7, :cond_186

    .line 389
    .line 390
    goto :goto_1e8

    .line 391
    :cond_186
    sget-boolean v0, Lj7/g;->b:Z

    .line 392
    .line 393
    if-nez v0, :cond_1a3

    .line 394
    .line 395
    :try_start_18a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sput-object v0, Lj7/g;->a:Ljava/lang/reflect/Field;

    .line 404
    .line 405
    const/4 v14, 0x1

    .line 406
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_198
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18a .. :try_end_198} :catch_19a

    .line 407
    .line 408
    .line 409
    :goto_198
    const/4 v14, 0x1

    .line 410
    goto :goto_1a1

    .line 411
    :catch_19a
    move-exception v0

    .line 412
    const-string v11, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 413
    .line 414
    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .line 416
    .line 417
    goto :goto_198

    .line 418
    :goto_1a1
    sput-boolean v14, Lj7/g;->b:Z

    .line 419
    .line 420
    :cond_1a3
    sget-object v0, Lj7/g;->a:Ljava/lang/reflect/Field;

    .line 421
    .line 422
    if-eqz v0, :cond_1b2

    .line 423
    .line 424
    :try_start_1a7
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7
    :try_end_1ab
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a7 .. :try_end_1ab} :catch_1ac

    .line 428
    goto :goto_1b3

    .line 429
    :catch_1ac
    move-exception v0

    .line 430
    const-string v7, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 431
    .line 432
    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .line 434
    .line 435
    :cond_1b2
    const/4 v7, 0x0

    .line 436
    :goto_1b3
    if-eqz v7, :cond_1e8

    .line 437
    .line 438
    invoke-static {v7}, Lj7/g;->j(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto :goto_1e8

    .line 442
    :cond_1b9
    sget-boolean v0, Lj7/g;->b:Z

    .line 443
    .line 444
    if-nez v0, :cond_1d2

    .line 445
    .line 446
    :try_start_1bd
    invoke-virtual {v14, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sput-object v0, Lj7/g;->a:Ljava/lang/reflect/Field;

    .line 451
    .line 452
    const/4 v14, 0x1

    .line 453
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1c7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1bd .. :try_end_1c7} :catch_1c9

    .line 454
    .line 455
    .line 456
    :goto_1c7
    const/4 v14, 0x1

    .line 457
    goto :goto_1d0

    .line 458
    :catch_1c9
    move-exception v0

    .line 459
    const-string v11, "Could not retrieve Resources#mDrawableCache field"

    .line 460
    .line 461
    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .line 463
    .line 464
    goto :goto_1c7

    .line 465
    :goto_1d0
    sput-boolean v14, Lj7/g;->b:Z

    .line 466
    .line 467
    :cond_1d2
    sget-object v0, Lj7/g;->a:Ljava/lang/reflect/Field;

    .line 468
    .line 469
    if-eqz v0, :cond_1e1

    .line 470
    .line 471
    :try_start_1d6
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v7
    :try_end_1da
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d6 .. :try_end_1da} :catch_1db

    .line 475
    goto :goto_1e2

    .line 476
    :catch_1db
    move-exception v0

    .line 477
    const-string v7, "Could not retrieve value from Resources#mDrawableCache"

    .line 478
    .line 479
    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .line 481
    .line 482
    :cond_1e1
    const/4 v7, 0x0

    .line 483
    :goto_1e2
    if-nez v7, :cond_1e5

    .line 484
    .line 485
    goto :goto_1e8

    .line 486
    :cond_1e5
    invoke-static {v7}, Lj7/g;->j(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :cond_1e8
    :goto_1e8
    iget v0, v1, Lg/f0;->b0:I

    .line 490
    .line 491
    if-eqz v0, :cond_1fa

    .line 492
    .line 493
    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    iget v7, v1, Lg/f0;->b0:I

    .line 501
    .line 502
    const/4 v14, 0x1

    .line 503
    invoke-virtual {v0, v7, v14}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 504
    .line 505
    .line 506
    goto :goto_1fb

    .line 507
    :cond_1fa
    const/4 v14, 0x1

    .line 508
    :goto_1fb
    if-eqz v2, :cond_22a

    .line 509
    .line 510
    instance-of v0, v12, Landroid/app/Activity;

    .line 511
    .line 512
    if-eqz v0, :cond_22a

    .line 513
    .line 514
    move-object v0, v12

    .line 515
    check-cast v0, Landroid/app/Activity;

    .line 516
    .line 517
    instance-of v2, v0, Landroidx/lifecycle/t;

    .line 518
    .line 519
    if-eqz v2, :cond_21f

    .line 520
    .line 521
    move-object v2, v0

    .line 522
    check-cast v2, Landroidx/lifecycle/t;

    .line 523
    .line 524
    invoke-interface {v2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Landroidx/lifecycle/v;

    .line 529
    .line 530
    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 531
    .line 532
    sget-object v7, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 533
    .line 534
    invoke-virtual {v2, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-ltz v2, :cond_22a

    .line 539
    .line 540
    invoke-virtual {v0, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    .line 542
    .line 543
    goto :goto_22a

    .line 544
    :cond_21f
    iget-boolean v2, v1, Lg/f0;->X:Z

    .line 545
    .line 546
    if-eqz v2, :cond_22a

    .line 547
    .line 548
    iget-boolean v2, v1, Lg/f0;->Y:Z

    .line 549
    .line 550
    if-nez v2, :cond_22a

    .line 551
    .line 552
    invoke-virtual {v0, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 553
    .line 554
    .line 555
    :cond_22a
    :goto_22a
    move v11, v14

    .line 556
    goto :goto_22d

    .line 557
    :cond_22c
    move v11, v2

    .line 558
    :goto_22d
    if-eqz v11, :cond_246

    .line 559
    .line 560
    instance-of v0, v12, Lg/m;

    .line 561
    .line 562
    if-eqz v0, :cond_246

    .line 563
    .line 564
    and-int/lit16 v0, v13, 0x200

    .line 565
    .line 566
    if-eqz v0, :cond_23d

    .line 567
    .line 568
    move-object v0, v12

    .line 569
    check-cast v0, Lg/m;

    .line 570
    .line 571
    invoke-virtual {v0, v5}, Lg/m;->onNightModeChanged(I)V

    .line 572
    .line 573
    .line 574
    :cond_23d
    and-int/lit8 v0, v13, 0x4

    .line 575
    .line 576
    if-eqz v0, :cond_246

    .line 577
    .line 578
    check-cast v12, Lg/m;

    .line 579
    .line 580
    invoke-virtual {v12, v6}, Lg/m;->onLocalesChanged(Lf0/f;)V

    .line 581
    .line 582
    .line 583
    :cond_246
    if-eqz v15, :cond_266

    .line 584
    .line 585
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-static {v0}, Lg/f0;->A(Landroid/content/res/Configuration;)Lf0/f;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 598
    .line 599
    if-lt v2, v10, :cond_25c

    .line 600
    .line 601
    invoke-static {v0}, Lg/y;->c(Lf0/f;)V

    .line 602
    .line 603
    .line 604
    goto :goto_266

    .line 605
    :cond_25c
    iget-object v0, v0, Lf0/f;->a:Lf0/h;

    .line 606
    .line 607
    const/4 v9, 0x0

    .line 608
    invoke-interface {v0, v9}, Lf0/h;->get(I)Ljava/util/Locale;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 613
    .line 614
    .line 615
    :cond_266
    :goto_266
    if-nez v3, :cond_270

    .line 616
    .line 617
    invoke-virtual {v1, v4}, Lg/f0;->z(Landroid/content/Context;)Lg/c0;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lg/c0;->h()V

    .line 622
    .line 623
    .line 624
    goto :goto_277

    .line 625
    :cond_270
    iget-object v0, v1, Lg/f0;->e0:Lg/b0;

    .line 626
    .line 627
    if-eqz v0, :cond_277

    .line 628
    .line 629
    invoke-virtual {v0}, Lg/c0;->c()V

    .line 630
    .line 631
    .line 632
    :cond_277
    :goto_277
    const/4 v0, 0x3

    .line 633
    if-ne v3, v0, :cond_28b

    .line 634
    .line 635
    iget-object v0, v1, Lg/f0;->f0:Lg/b0;

    .line 636
    .line 637
    if-nez v0, :cond_285

    .line 638
    .line 639
    new-instance v0, Lg/b0;

    .line 640
    .line 641
    invoke-direct {v0, v1, v4}, Lg/b0;-><init>(Lg/f0;Landroid/content/Context;)V

    .line 642
    .line 643
    .line 644
    iput-object v0, v1, Lg/f0;->f0:Lg/b0;

    .line 645
    .line 646
    :cond_285
    iget-object v0, v1, Lg/f0;->f0:Lg/b0;

    .line 647
    .line 648
    invoke-virtual {v0}, Lg/c0;->h()V

    .line 649
    .line 650
    .line 651
    goto :goto_292

    .line 652
    :cond_28b
    iget-object v0, v1, Lg/f0;->f0:Lg/b0;

    .line 653
    .line 654
    if-eqz v0, :cond_292

    .line 655
    .line 656
    invoke-virtual {v0}, Lg/c0;->c()V

    .line 657
    .line 658
    .line 659
    :cond_292
    :goto_292
    return v11
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13

    .line 1
    iget-object p1, p0, Lg/f0;->m0:Lg/i0;

    const/4 v1, 0x0

    if-nez p1, :cond_56

    .line 2
    sget-object p1, Lf/a;->j:[I

    iget-object v0, p0, Lg/f0;->k:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v2, 0x74

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_20

    .line 5
    new-instance p1, Lg/i0;

    invoke-direct {p1}, Lg/i0;-><init>()V

    iput-object p1, p0, Lg/f0;->m0:Lg/i0;

    goto :goto_56

    .line 6
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/i0;

    iput-object p1, p0, Lg/f0;->m0:Lg/i0;
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_35

    goto :goto_56

    :catchall_35
    move-exception v0

    move-object p1, v0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Falling back to default."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Lg/i0;

    invoke-direct {p1}, Lg/i0;-><init>()V

    iput-object p1, p0, Lg/f0;->m0:Lg/i0;

    .line 11
    :cond_56
    :goto_56
    iget-object p1, p0, Lg/f0;->m0:Lg/i0;

    .line 12
    sget v0, Lm/i3;->a:I

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v0, Lf/a;->y:[I

    const/4 v5, 0x0

    invoke-virtual {p3, p4, v0, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    .line 15
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_72

    .line 16
    const-string v4, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_88

    .line 18
    instance-of v0, p3, Lk/d;

    if-eqz v0, :cond_82

    move-object v0, p3

    check-cast v0, Lk/d;

    .line 19
    iget v0, v0, Lk/d;->a:I

    if-eq v0, v3, :cond_88

    .line 20
    :cond_82
    new-instance v0, Lk/d;

    invoke-direct {v0, p3, v3}, Lk/d;-><init>(Landroid/content/Context;I)V

    goto :goto_89

    :cond_88
    move-object v0, p3

    .line 21
    :goto_89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_27e

    :goto_96
    move v2, v7

    goto/16 :goto_140

    :sswitch_99
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto :goto_96

    :cond_a2
    const/16 v2, 0xd

    goto/16 :goto_140

    :sswitch_a6
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    goto :goto_96

    :cond_af
    const/16 v2, 0xc

    goto/16 :goto_140

    :sswitch_b3
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    goto :goto_96

    :cond_bc
    const/16 v2, 0xb

    goto/16 :goto_140

    :sswitch_c0
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    goto :goto_96

    :cond_c9
    const/16 v2, 0xa

    goto/16 :goto_140

    :sswitch_cd
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d6

    goto :goto_96

    :cond_d6
    const/16 v2, 0x9

    goto/16 :goto_140

    :sswitch_da
    const-string v2, "ToggleButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    goto :goto_96

    :cond_e3
    const/16 v2, 0x8

    goto/16 :goto_140

    :sswitch_e7
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    goto :goto_96

    :cond_f0
    const/4 v2, 0x7

    goto :goto_140

    :sswitch_f2
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    goto :goto_96

    :cond_fb
    const/4 v2, 0x6

    goto :goto_140

    :sswitch_fd
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    goto :goto_96

    :cond_106
    const/4 v2, 0x5

    goto :goto_140

    :sswitch_108
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_140

    goto :goto_96

    :sswitch_111
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11b

    goto/16 :goto_96

    :cond_11b
    move v2, v4

    goto :goto_140

    :sswitch_11d
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_127

    goto/16 :goto_96

    :cond_127
    const/4 v2, 0x2

    goto :goto_140

    :sswitch_129
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_133

    goto/16 :goto_96

    :cond_133
    move v2, v6

    goto :goto_140

    :sswitch_135
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13f

    goto/16 :goto_96

    :cond_13f
    const/4 v2, 0x0

    :cond_140
    :goto_140
    packed-switch v2, :pswitch_data_2b8

    move-object v2, v1

    goto :goto_198

    .line 22
    :pswitch_145
    new-instance v2, Lm/l;

    invoke-direct {v2, v0, p4}, Lm/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 23
    :pswitch_14b
    new-instance v2, Lm/r;

    invoke-direct {v2, v0, p4}, Lm/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 24
    :pswitch_151
    new-instance v2, Lm/m;

    invoke-direct {v2, v0, p4}, Lm/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 25
    :pswitch_157
    new-instance v2, Lm/k;

    invoke-direct {v2, v0, p4}, Lm/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 26
    :pswitch_15d
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v2, v0, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 27
    :pswitch_163
    new-instance v2, Lm/c1;

    invoke-direct {v2, v0, p4}, Lm/c1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 28
    :pswitch_169
    new-instance v2, Lm/x;

    invoke-direct {v2, v0, p4}, Lm/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 29
    :pswitch_16f
    new-instance v2, Lm/l0;

    invoke-direct {v2, v0, p4}, Lm/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 30
    :pswitch_175
    new-instance v2, Lm/a0;

    invoke-direct {v2, v0, p4}, Lm/a0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 31
    :pswitch_17b
    new-instance v2, Lm/t;

    invoke-direct {v2, v0, p4}, Lm/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 32
    :pswitch_181
    new-instance v2, Lm/w0;

    invoke-direct {v2, v0, p4}, Lm/w0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 33
    :pswitch_187
    new-instance v2, Lm/u;

    invoke-direct {v2, v0, p4}, Lm/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 34
    :pswitch_18d
    new-instance v2, Lm/n;

    invoke-direct {v2, v0, p4}, Lm/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_198

    .line 35
    :pswitch_193
    new-instance v2, Lm/y;

    invoke-direct {v2, v0, p4}, Lm/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_198
    if-nez v2, :cond_1ea

    if-eq p3, v0, :cond_1ea

    .line 36
    iget-object p3, p1, Lg/i0;->a:[Ljava/lang/Object;

    const-string v2, "view"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 37
    const-string p2, "class"

    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_1ac
    :try_start_1ac
    aput-object v0, p3, v5

    .line 39
    aput-object p4, p3, v6

    const/16 v2, 0x2e

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v7, v2, :cond_1d6

    move v2, v5

    .line 41
    :goto_1b9
    sget-object v3, Lg/i0;->g:[Ljava/lang/String;

    if-ge v2, v4, :cond_1d1

    .line 42
    aget-object v3, v3, v2

    invoke-virtual {p1, v0, p2, v3}, Lg/i0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1c3} :catch_1e5
    .catchall {:try_start_1ac .. :try_end_1c3} :catchall_1ce

    if-eqz v3, :cond_1cb

    .line 43
    aput-object v1, p3, v5

    .line 44
    aput-object v1, p3, v6

    move-object v1, v3

    goto :goto_1eb

    :cond_1cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b9

    :catchall_1ce
    move-exception v0

    move-object p1, v0

    goto :goto_1e0

    .line 45
    :cond_1d1
    aput-object v1, p3, v5

    .line 46
    aput-object v1, p3, v6

    goto :goto_1eb

    .line 47
    :cond_1d6
    :try_start_1d6
    invoke-virtual {p1, v0, p2, v1}, Lg/i0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_1da
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1da} :catch_1e5
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_1ce

    .line 48
    aput-object v1, p3, v5

    .line 49
    aput-object v1, p3, v6

    move-object v1, p1

    goto :goto_1eb

    .line 50
    :goto_1e0
    aput-object v1, p3, v5

    .line 51
    aput-object v1, p3, v6

    .line 52
    throw p1

    .line 53
    :catch_1e5
    aput-object v1, p3, v5

    .line 54
    aput-object v1, p3, v6

    goto :goto_1eb

    :cond_1ea
    move-object v1, v2

    :goto_1eb
    if-eqz v1, :cond_27c

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_213

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_1fc

    goto :goto_213

    .line 57
    :cond_1fc
    sget-object p2, Lg/i0;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_210

    .line 59
    new-instance p3, Lg/h0;

    invoke-direct {p3, v1, p2}, Lg/h0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_210
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    :cond_213
    :goto_213
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le p1, v6, :cond_21a

    goto :goto_27c

    .line 62
    :cond_21a
    sget-object p1, Lg/i0;->d:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-class v4, Ljava/lang/Boolean;

    if-eqz p2, :cond_23e

    .line 64
    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 65
    sget-object p3, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 66
    new-instance v2, Lj0/y;

    const v3, 0x7f0900d8

    const/4 v7, 0x2

    .line 67
    invoke-direct/range {v2 .. v7}, Lj0/y;-><init>(ILjava/lang/Class;III)V

    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lj0/a0;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 69
    :cond_23e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object p1, Lg/i0;->e:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_254

    .line 72
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 73
    :cond_254
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object p1, Lg/i0;->f:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_279

    .line 76
    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 77
    sget-object p3, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 78
    new-instance v2, Lj0/y;

    const v3, 0x7f0900dd

    const/4 v7, 0x0

    .line 79
    invoke-direct/range {v2 .. v7}, Lj0/y;-><init>(ILjava/lang/Class;III)V

    .line 80
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lj0/a0;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 81
    :cond_279
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_27c
    :goto_27c
    return-object v1

    nop

    :sswitch_data_27e
    .sparse-switch
        -0x7404ceea -> :sswitch_135
        -0x56c015e7 -> :sswitch_129
        -0x503aa7ad -> :sswitch_11d
        -0x37f7066e -> :sswitch_111
        -0x37e04bb3 -> :sswitch_108
        -0x274065a5 -> :sswitch_fd
        -0x1440b607 -> :sswitch_f2
        0x2e46a6ed -> :sswitch_e7
        0x2fa453c6 -> :sswitch_da
        0x431b5280 -> :sswitch_cd
        0x5445f9ba -> :sswitch_c0
        0x5f7507c3 -> :sswitch_b3
        0x63577677 -> :sswitch_a6
        0x77471352 -> :sswitch_99
    .end sparse-switch

    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_193
        :pswitch_18d
        :pswitch_187
        :pswitch_181
        :pswitch_17b
        :pswitch_175
        :pswitch_16f
        :pswitch_169
        :pswitch_163
        :pswitch_15d
        :pswitch_157
        :pswitch_151
        :pswitch_14b
        :pswitch_145
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, p2, p3}, Lg/f0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroid/view/Window;)V
    .registers 9

    .line 1
    const-string v0, "AppCompat has already installed itself into the Window"

    .line 2
    .line 3
    iget-object v1, p0, Lg/f0;->l:Landroid/view/Window;

    .line 4
    .line 5
    if-nez v1, :cond_80

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lg/a0;

    .line 12
    .line 13
    if-nez v2, :cond_7a

    .line 14
    .line 15
    new-instance v0, Lg/a0;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lg/a0;-><init>(Lg/f0;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lg/f0;->m:Lg/a0;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lg/f0;->k:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Lg/f0;->q0:[I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3f

    .line 40
    .line 41
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3f

    .line 46
    .line 47
    invoke-static {}, Lm/p;->a()Lm/p;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    monitor-enter v4

    .line 52
    :try_start_33
    iget-object v5, v4, Lm/p;->a:Lm/f2;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v0, v3, v6}, Lm/f2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3c

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_40

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .line 63
    throw p1

    .line 64
    :cond_3f
    move-object v0, v2

    .line 65
    :goto_40
    if-eqz v0, :cond_45

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lg/f0;->l:Landroid/view/Window;

    .line 74
    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v0, 0x21

    .line 78
    .line 79
    if-lt p1, v0, :cond_79

    .line 80
    .line 81
    iget-object p1, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 82
    .line 83
    if-nez p1, :cond_79

    .line 84
    .line 85
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 86
    .line 87
    if-eqz p1, :cond_61

    .line 88
    .line 89
    iget-object v1, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 90
    .line 91
    if-eqz v1, :cond_61

    .line 92
    .line 93
    invoke-static {p1, v1}, Lg/z;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lg/f0;->o0:Landroid/window/OnBackInvokedCallback;

    .line 97
    .line 98
    :cond_61
    instance-of p1, v0, Landroid/app/Activity;

    .line 99
    .line 100
    if-eqz p1, :cond_74

    .line 101
    .line 102
    check-cast v0, Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_74

    .line 109
    .line 110
    invoke-static {v0}, Lg/z;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 115
    .line 116
    goto :goto_76

    .line 117
    :cond_74
    iput-object v2, p0, Lg/f0;->n0:Landroid/window/OnBackInvokedDispatcher;

    .line 118
    .line 119
    :goto_76
    invoke-virtual {p0}, Lg/f0;->K()V

    .line 120
    .line 121
    .line 122
    :cond_79
    return-void

    .line 123
    :cond_7a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final r(ILg/e0;Ll/n;)V
    .registers 7

    .line 1
    if-nez p3, :cond_11

    .line 2
    .line 3
    if-nez p2, :cond_d

    .line 4
    .line 5
    if-ltz p1, :cond_d

    .line 6
    .line 7
    iget-object v0, p0, Lg/f0;->T:[Lg/e0;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_d

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_d
    if-eqz p2, :cond_11

    .line 15
    .line 16
    iget-object p3, p2, Lg/e0;->h:Ll/n;

    .line 17
    .line 18
    :cond_11
    if-eqz p2, :cond_18

    .line 19
    .line 20
    iget-boolean p2, p2, Lg/e0;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_18

    .line 23
    .line 24
    goto :goto_35

    .line 25
    :cond_18
    iget-boolean p2, p0, Lg/f0;->Y:Z

    .line 26
    .line 27
    if-nez p2, :cond_35

    .line 28
    .line 29
    iget-object p2, p0, Lg/f0;->m:Lg/a0;

    .line 30
    .line 31
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_29
    iput-boolean v1, p2, Lg/a0;->e:Z

    .line 43
    .line 44
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_31

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p2, Lg/a0;->e:Z

    .line 48
    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    iput-boolean v2, p2, Lg/a0;->e:Z

    .line 52
    .line 53
    throw p1

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public final s(Ll/n;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lg/f0;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lg/f0;->S:Z

    .line 8
    .line 9
    iget-object v0, p0, Lg/f0;->z:Lm/e1;

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    .line 24
    if-eqz v0, :cond_2f

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 27
    .line 28
    if-eqz v0, :cond_2f

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->c()Z

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroidx/appcompat/widget/a;->B:Lm/e;

    .line 34
    .line 35
    if-eqz v0, :cond_2f

    .line 36
    .line 37
    invoke-virtual {v0}, Ll/x;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2f

    .line 42
    .line 43
    iget-object v0, v0, Ll/x;->i:Ll/v;

    .line 44
    .line 45
    invoke-interface {v0}, Ll/d0;->dismiss()V

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_40

    .line 55
    .line 56
    iget-boolean v1, p0, Lg/f0;->Y:Z

    .line 57
    .line 58
    if-nez v1, :cond_40

    .line 59
    .line 60
    const/16 v1, 0x6c

    .line 61
    .line 62
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 63
    .line 64
    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lg/f0;->S:Z

    .line 67
    .line 68
    return-void
.end method

.method public final t(Lg/e0;Z)V
    .registers 6

    .line 1
    if-eqz p2, :cond_21

    .line 2
    .line 3
    iget v0, p1, Lg/e0;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_21

    .line 6
    .line 7
    iget-object v0, p0, Lg/f0;->z:Lm/e1;

    .line 8
    .line 9
    if-eqz v0, :cond_21

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_21

    .line 27
    .line 28
    iget-object p1, p1, Lg/e0;->h:Ll/n;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lg/f0;->s(Ll/n;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iget-object v0, p0, Lg/f0;->k:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "window"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/WindowManager;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_40

    .line 46
    .line 47
    iget-boolean v2, p1, Lg/e0;->m:Z

    .line 48
    .line 49
    if-eqz v2, :cond_40

    .line 50
    .line 51
    iget-object v2, p1, Lg/e0;->e:Lg/d0;

    .line 52
    .line 53
    if-eqz v2, :cond_40

    .line 54
    .line 55
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_40

    .line 59
    .line 60
    iget p2, p1, Lg/e0;->a:I

    .line 61
    .line 62
    invoke-virtual {p0, p2, p1, v1}, Lg/f0;->r(ILg/e0;Ll/n;)V

    .line 63
    .line 64
    .line 65
    :cond_40
    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p1, Lg/e0;->k:Z

    .line 67
    .line 68
    iput-boolean p2, p1, Lg/e0;->l:Z

    .line 69
    .line 70
    iput-boolean p2, p1, Lg/e0;->m:Z

    .line 71
    .line 72
    iput-object v1, p1, Lg/e0;->f:Landroid/view/View;

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p1, Lg/e0;->n:Z

    .line 76
    .line 77
    iget-object p2, p0, Lg/f0;->U:Lg/e0;

    .line 78
    .line 79
    if-ne p2, p1, :cond_52

    .line 80
    .line 81
    iput-object v1, p0, Lg/f0;->U:Lg/e0;

    .line 82
    .line 83
    :cond_52
    iget p1, p1, Lg/e0;->a:I

    .line 84
    .line 85
    if-nez p1, :cond_59

    .line 86
    .line 87
    invoke-virtual {p0}, Lg/f0;->K()V

    .line 88
    .line 89
    .line 90
    :cond_59
    return-void
.end method

.method public final v(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lj0/i;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_b

    .line 7
    .line 8
    instance-of v0, v0, Lg/k;

    .line 9
    .line 10
    if-eqz v0, :cond_1b

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1b

    .line 19
    .line 20
    invoke-static {v0, p1}, Ll2/e;->i(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1b

    .line 25
    .line 26
    goto/16 :goto_13b

    .line 27
    .line 28
    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/16 v3, 0x52

    .line 34
    .line 35
    if-ne v0, v3, :cond_3f

    .line 36
    .line 37
    iget-object v0, p0, Lg/f0;->m:Lg/a0;

    .line 38
    .line 39
    iget-object v4, p0, Lg/f0;->l:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :try_start_2f
    iput-boolean v2, v0, Lg/a0;->d:Z

    .line 49
    .line 50
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result v4
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3b

    .line 54
    iput-boolean v1, v0, Lg/a0;->d:Z

    .line 55
    .line 56
    if-eqz v4, :cond_3f

    .line 57
    .line 58
    goto/16 :goto_13b

    .line 59
    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    iput-boolean v1, v0, Lg/a0;->d:Z

    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x4

    .line 73
    if-nez v4, :cond_6f

    .line 74
    .line 75
    if-eq v0, v5, :cond_62

    .line 76
    .line 77
    if-eq v0, v3, :cond_50

    .line 78
    .line 79
    goto/16 :goto_13c

    .line 80
    .line 81
    :cond_50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_13b

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean v1, v0, Lg/e0;->m:Z

    .line 92
    .line 93
    if-nez v1, :cond_13b

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    and-int/lit16 p1, p1, 0x80

    .line 104
    .line 105
    if-eqz p1, :cond_6b

    .line 106
    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v2, v1

    .line 109
    :goto_6c
    iput-boolean v2, p0, Lg/f0;->V:Z

    .line 110
    .line 111
    return v1

    .line 112
    :cond_6f
    if-eq v0, v5, :cond_135

    .line 113
    .line 114
    if-eq v0, v3, :cond_75

    .line 115
    .line 116
    goto/16 :goto_13c

    .line 117
    .line 118
    :cond_75
    iget-object v0, p0, Lg/f0;->C:Lk/b;

    .line 119
    .line 120
    if-eqz v0, :cond_7b

    .line 121
    .line 122
    goto/16 :goto_13b

    .line 123
    .line 124
    :cond_7b
    invoke-virtual {p0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 129
    .line 130
    iget-object v4, p0, Lg/f0;->k:Landroid/content/Context;

    .line 131
    .line 132
    if-eqz v3, :cond_f3

    .line 133
    .line 134
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 137
    .line 138
    .line 139
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 140
    .line 141
    check-cast v3, Landroidx/appcompat/widget/i;

    .line 142
    .line 143
    iget-object v3, v3, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_f3

    .line 150
    .line 151
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 152
    .line 153
    if-eqz v3, :cond_f3

    .line 154
    .line 155
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->A:Z

    .line 156
    .line 157
    if-eqz v3, :cond_f3

    .line 158
    .line 159
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_f3

    .line 168
    .line 169
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 170
    .line 171
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 174
    .line 175
    .line 176
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 177
    .line 178
    check-cast v3, Landroidx/appcompat/widget/i;

    .line 179
    .line 180
    iget-object v3, v3, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 181
    .line 182
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_d7

    .line 187
    .line 188
    iget-boolean v3, p0, Lg/f0;->Y:Z

    .line 189
    .line 190
    if-nez v3, :cond_113

    .line 191
    .line 192
    invoke-virtual {p0, v0, p1}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_113

    .line 197
    .line 198
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 199
    .line 200
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 203
    .line 204
    .line 205
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 206
    .line 207
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 208
    .line 209
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    goto :goto_119

    .line 216
    :cond_d7
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 217
    .line 218
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 221
    .line 222
    .line 223
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lm/f1;

    .line 224
    .line 225
    check-cast p1, Landroidx/appcompat/widget/i;

    .line 226
    .line 227
    iget-object p1, p1, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 228
    .line 229
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 230
    .line 231
    if-eqz p1, :cond_113

    .line 232
    .line 233
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/a;

    .line 234
    .line 235
    if-eqz p1, :cond_113

    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/appcompat/widget/a;->c()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_113

    .line 242
    .line 243
    goto :goto_111

    .line 244
    :cond_f3
    iget-boolean v3, v0, Lg/e0;->m:Z

    .line 245
    .line 246
    if-nez v3, :cond_115

    .line 247
    .line 248
    iget-boolean v5, v0, Lg/e0;->l:Z

    .line 249
    .line 250
    if-eqz v5, :cond_fc

    .line 251
    .line 252
    goto :goto_115

    .line 253
    :cond_fc
    iget-boolean v3, v0, Lg/e0;->k:Z

    .line 254
    .line 255
    if-eqz v3, :cond_113

    .line 256
    .line 257
    iget-boolean v3, v0, Lg/e0;->o:Z

    .line 258
    .line 259
    if-eqz v3, :cond_10b

    .line 260
    .line 261
    iput-boolean v1, v0, Lg/e0;->k:Z

    .line 262
    .line 263
    invoke-virtual {p0, v0, p1}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    goto :goto_10c

    .line 268
    :cond_10b
    move v3, v2

    .line 269
    :goto_10c
    if-eqz v3, :cond_113

    .line 270
    .line 271
    invoke-virtual {p0, v0, p1}, Lg/f0;->G(Lg/e0;Landroid/view/KeyEvent;)V

    .line 272
    .line 273
    .line 274
    :goto_111
    move p1, v2

    .line 275
    goto :goto_119

    .line 276
    :cond_113
    move p1, v1

    .line 277
    goto :goto_119

    .line 278
    :cond_115
    :goto_115
    invoke-virtual {p0, v0, v2}, Lg/f0;->t(Lg/e0;Z)V

    .line 279
    .line 280
    .line 281
    move p1, v3

    .line 282
    :goto_119
    if-eqz p1, :cond_13b

    .line 283
    .line 284
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    const-string v0, "audio"

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Landroid/media/AudioManager;

    .line 295
    .line 296
    if-eqz p1, :cond_12d

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 299
    .line 300
    .line 301
    return v2

    .line 302
    :cond_12d
    const-string p1, "AppCompatDelegate"

    .line 303
    .line 304
    const-string v0, "Couldn\'t get audio manager"

    .line 305
    .line 306
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    return v2

    .line 310
    :cond_135
    invoke-virtual {p0}, Lg/f0;->F()Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_13c

    .line 315
    .line 316
    :cond_13b
    :goto_13b
    return v2

    .line 317
    :cond_13c
    :goto_13c
    return v1
.end method

.method public final w(I)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lg/f0;->B(I)Lg/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lg/e0;->h:Ll/n;

    .line 6
    .line 7
    if-eqz v1, :cond_24

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lg/e0;->h:Ll/n;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ll/n;->t(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_1a

    .line 24
    .line 25
    iput-object v1, v0, Lg/e0;->p:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_1a
    iget-object v1, v0, Lg/e0;->h:Ll/n;

    .line 28
    .line 29
    invoke-virtual {v1}, Ll/n;->w()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lg/e0;->h:Ll/n;

    .line 33
    .line 34
    invoke-virtual {v1}, Ll/n;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_24
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lg/e0;->o:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lg/e0;->n:Z

    .line 41
    .line 42
    const/16 v0, 0x6c

    .line 43
    .line 44
    if-eq p1, v0, :cond_2f

    .line 45
    .line 46
    if-nez p1, :cond_3e

    .line 47
    .line 48
    :cond_2f
    iget-object p1, p0, Lg/f0;->z:Lm/e1;

    .line 49
    .line 50
    if-eqz p1, :cond_3e

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lg/f0;->B(I)Lg/e0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Lg/e0;->k:Z

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    :cond_3e
    return-void
.end method

.method public final x()V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lg/f0;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_292

    .line 4
    .line 5
    iget-object v0, p0, Lg/f0;->k:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v1, Lf/a;->j:[I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x75

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_287

    .line 20
    .line 21
    const/16 v4, 0x7e

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v6, 0x6c

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v4, :cond_24

    .line 32
    .line 33
    invoke-virtual {p0, v7}, Lg/f0;->i(I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_2d

    .line 37
    :cond_24
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2d

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lg/f0;->i(I)Z

    .line 44
    .line 45
    .line 46
    :cond_2d
    :goto_2d
    const/16 v3, 0x76

    .line 47
    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x6d

    .line 53
    .line 54
    if-eqz v3, :cond_3a

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lg/f0;->i(I)Z

    .line 57
    .line 58
    .line 59
    :cond_3a
    const/16 v3, 0x77

    .line 60
    .line 61
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_47

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lg/f0;->i(I)Z

    .line 70
    .line 71
    .line 72
    :cond_47
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput-boolean v3, p0, Lg/f0;->Q:Z

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lg/f0;->y()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lg/f0;->l:Landroid/view/Window;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-boolean v3, p0, Lg/f0;->R:Z

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    if-nez v3, :cond_db

    .line 97
    .line 98
    iget-boolean v3, p0, Lg/f0;->Q:Z

    .line 99
    .line 100
    if-eqz v3, :cond_74

    .line 101
    .line 102
    const v3, 0x7f0c000c

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .line 111
    iput-boolean v5, p0, Lg/f0;->O:Z

    .line 112
    .line 113
    iput-boolean v5, p0, Lg/f0;->N:Z

    .line 114
    .line 115
    goto/16 :goto_f2

    .line 116
    .line 117
    :cond_74
    iget-boolean v2, p0, Lg/f0;->N:Z

    .line 118
    .line 119
    if-eqz v2, :cond_d9

    .line 120
    .line 121
    new-instance v2, Landroid/util/TypedValue;

    .line 122
    .line 123
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const v9, 0x7f040009

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    .line 135
    .line 136
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    .line 137
    .line 138
    if-eqz v3, :cond_93

    .line 139
    .line 140
    new-instance v3, Lk/d;

    .line 141
    .line 142
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 143
    .line 144
    invoke-direct {v3, v0, v2}, Lk/d;-><init>(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_94

    .line 148
    :cond_93
    move-object v3, v0

    .line 149
    :goto_94
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const v3, 0x7f0c0017

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    .line 162
    const v3, 0x7f09006e

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lm/e1;

    .line 170
    .line 171
    iput-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 172
    .line 173
    iget-object v9, p0, Lg/f0;->l:Landroid/view/Window;

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-interface {v3, v9}, Lm/e1;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v3, p0, Lg/f0;->O:Z

    .line 183
    .line 184
    if-eqz v3, :cond_c0

    .line 185
    .line 186
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 187
    .line 188
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 191
    .line 192
    .line 193
    :cond_c0
    iget-boolean v3, p0, Lg/f0;->L:Z

    .line 194
    .line 195
    if-eqz v3, :cond_cc

    .line 196
    .line 197
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 198
    .line 199
    const/4 v4, 0x2

    .line 200
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 201
    .line 202
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 203
    .line 204
    .line 205
    :cond_cc
    iget-boolean v3, p0, Lg/f0;->M:Z

    .line 206
    .line 207
    if-eqz v3, :cond_f2

    .line 208
    .line 209
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 210
    .line 211
    const/4 v4, 0x5

    .line 212
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_f2

    .line 218
    :cond_d9
    move-object v2, v8

    .line 219
    goto :goto_f2

    .line 220
    :cond_db
    iget-boolean v3, p0, Lg/f0;->P:Z

    .line 221
    .line 222
    if-eqz v3, :cond_e9

    .line 223
    .line 224
    const v3, 0x7f0c0016

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Landroid/view/ViewGroup;

    .line 232
    .line 233
    goto :goto_f2

    .line 234
    :cond_e9
    const v3, 0x7f0c0015

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Landroid/view/ViewGroup;

    .line 242
    .line 243
    :cond_f2
    :goto_f2
    if-eqz v2, :cond_244

    .line 244
    .line 245
    new-instance v3, Lg/u;

    .line 246
    .line 247
    invoke-direct {v3, p0}, Lg/u;-><init>(Lg/f0;)V

    .line 248
    .line 249
    .line 250
    sget-object v4, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 251
    .line 252
    invoke-static {v2, v3}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 253
    .line 254
    .line 255
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 256
    .line 257
    if-nez v3, :cond_10d

    .line 258
    .line 259
    const v3, 0x7f0900eb

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Landroid/widget/TextView;

    .line 267
    .line 268
    iput-object v3, p0, Lg/f0;->J:Landroid/widget/TextView;

    .line 269
    .line 270
    :cond_10d
    sget-boolean v3, Lm/l3;->a:Z

    .line 271
    .line 272
    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    .line 273
    .line 274
    const-string v4, "ViewUtils"

    .line 275
    .line 276
    :try_start_113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    const-string v10, "makeOptionalFitsSystemWindows"

    .line 281
    .line 282
    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_12b

    .line 291
    .line 292
    invoke-virtual {v9, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_12b

    .line 296
    :catch_127
    move-exception v9

    .line 297
    goto :goto_12f

    .line 298
    :catch_129
    move-exception v9

    .line 299
    goto :goto_133

    .line 300
    :cond_12b
    :goto_12b
    invoke-virtual {v9, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_113 .. :try_end_12e} :catch_137
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_113 .. :try_end_12e} :catch_129
    .catch Ljava/lang/IllegalAccessException; {:try_start_113 .. :try_end_12e} :catch_127

    .line 301
    .line 302
    .line 303
    goto :goto_13c

    .line 304
    :goto_12f
    invoke-static {v4, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .line 306
    .line 307
    goto :goto_13c

    .line 308
    :goto_133
    invoke-static {v4, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .line 310
    .line 311
    goto :goto_13c

    .line 312
    :catch_137
    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 313
    .line 314
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    :goto_13c
    const v3, 0x7f090029

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 325
    .line 326
    iget-object v4, p0, Lg/f0;->l:Landroid/view/Window;

    .line 327
    .line 328
    const v9, 0x1020002

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Landroid/view/ViewGroup;

    .line 336
    .line 337
    if-eqz v4, :cond_173

    .line 338
    .line 339
    :goto_152
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-lez v10, :cond_163

    .line 344
    .line 345
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 353
    .line 354
    .line 355
    goto :goto_152

    .line 356
    :cond_163
    const/4 v10, -0x1

    .line 357
    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    .line 361
    .line 362
    .line 363
    instance-of v10, v4, Landroid/widget/FrameLayout;

    .line 364
    .line 365
    if-eqz v10, :cond_173

    .line 366
    .line 367
    check-cast v4, Landroid/widget/FrameLayout;

    .line 368
    .line 369
    invoke-virtual {v4, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 370
    .line 371
    .line 372
    :cond_173
    iget-object v4, p0, Lg/f0;->l:Landroid/view/Window;

    .line 373
    .line 374
    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 375
    .line 376
    .line 377
    new-instance v4, Lg/v;

    .line 378
    .line 379
    invoke-direct {v4, p0}, Lg/v;-><init>(Lg/f0;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lm/d1;)V

    .line 383
    .line 384
    .line 385
    iput-object v2, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 386
    .line 387
    iget-object v2, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 388
    .line 389
    instance-of v3, v2, Landroid/app/Activity;

    .line 390
    .line 391
    if-eqz v3, :cond_18f

    .line 392
    .line 393
    check-cast v2, Landroid/app/Activity;

    .line 394
    .line 395
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    goto :goto_191

    .line 400
    :cond_18f
    iget-object v2, p0, Lg/f0;->y:Ljava/lang/CharSequence;

    .line 401
    .line 402
    :goto_191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_1ae

    .line 407
    .line 408
    iget-object v3, p0, Lg/f0;->z:Lm/e1;

    .line 409
    .line 410
    if-eqz v3, :cond_19f

    .line 411
    .line 412
    invoke-interface {v3, v2}, Lm/e1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    goto :goto_1ae

    .line 416
    :cond_19f
    iget-object v3, p0, Lg/f0;->w:Lg/b;

    .line 417
    .line 418
    if-eqz v3, :cond_1a7

    .line 419
    .line 420
    invoke-virtual {v3, v2}, Lg/b;->n(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    goto :goto_1ae

    .line 424
    :cond_1a7
    iget-object v3, p0, Lg/f0;->J:Landroid/widget/TextView;

    .line 425
    .line 426
    if-eqz v3, :cond_1ae

    .line 427
    .line 428
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    :cond_1ae
    :goto_1ae
    iget-object v2, p0, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 432
    .line 433
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 438
    .line 439
    iget-object v3, p0, Lg/f0;->l:Landroid/view/Window;

    .line 440
    .line 441
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    iget-object v10, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 462
    .line 463
    invoke-virtual {v10, v4, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_1da

    .line 471
    .line 472
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 473
    .line 474
    .line 475
    :cond_1da
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    const/16 v1, 0x7c

    .line 480
    .line 481
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 486
    .line 487
    .line 488
    const/16 v1, 0x7d

    .line 489
    .line 490
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 495
    .line 496
    .line 497
    const/16 v1, 0x7a

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_1ff

    .line 504
    .line 505
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 510
    .line 511
    .line 512
    :cond_1ff
    const/16 v1, 0x7b

    .line 513
    .line 514
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    if-eqz v3, :cond_20e

    .line 519
    .line 520
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 525
    .line 526
    .line 527
    :cond_20e
    const/16 v1, 0x78

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v3, :cond_21d

    .line 534
    .line 535
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 540
    .line 541
    .line 542
    :cond_21d
    const/16 v1, 0x79

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    if-eqz v3, :cond_22c

    .line 549
    .line 550
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 555
    .line 556
    .line 557
    :cond_22c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 561
    .line 562
    .line 563
    iput-boolean v7, p0, Lg/f0;->H:Z

    .line 564
    .line 565
    invoke-virtual {p0, v5}, Lg/f0;->B(I)Lg/e0;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iget-boolean v1, p0, Lg/f0;->Y:Z

    .line 570
    .line 571
    if-nez v1, :cond_292

    .line 572
    .line 573
    iget-object v0, v0, Lg/e0;->h:Ll/n;

    .line 574
    .line 575
    if-nez v0, :cond_292

    .line 576
    .line 577
    invoke-virtual {p0, v6}, Lg/f0;->D(I)V

    .line 578
    .line 579
    .line 580
    goto :goto_292

    .line 581
    :cond_244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 582
    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 586
    .line 587
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-boolean v2, p0, Lg/f0;->N:Z

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v2, ", windowActionBarOverlay: "

    .line 596
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    iget-boolean v2, p0, Lg/f0;->O:Z

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    const-string v2, ", android:windowIsFloating: "

    .line 606
    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    iget-boolean v2, p0, Lg/f0;->Q:Z

    .line 611
    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v2, ", windowActionModeOverlay: "

    .line 616
    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    iget-boolean v2, p0, Lg/f0;->P:Z

    .line 621
    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v2, ", windowNoTitle: "

    .line 626
    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    iget-boolean v2, p0, Lg/f0;->R:Z

    .line 631
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v2, " }"

    .line 636
    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw v0

    .line 648
    :cond_287
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    .line 650
    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 652
    .line 653
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 654
    .line 655
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_292
    :goto_292
    return-void
.end method

.method public final y()V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lg/f0;->j:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_13

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lg/f0;->p(Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    iget-object v0, p0, Lg/f0;->l:Landroid/view/Window;

    .line 21
    .line 22
    if-eqz v0, :cond_18

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "We have not been given a Window"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final z(Landroid/content/Context;)Lg/c0;
    .registers 5

    .line 1
    iget-object v0, p0, Lg/f0;->e0:Lg/b0;

    .line 2
    .line 3
    if-nez v0, :cond_24

    .line 4
    .line 5
    new-instance v0, Lg/b0;

    .line 6
    .line 7
    sget-object v1, Lc5/h;->e:Lc5/h;

    .line 8
    .line 9
    if-nez v1, :cond_1d

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lc5/h;

    .line 16
    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-direct {v1, p1, v2}, Lc5/h;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lc5/h;->e:Lc5/h;

    .line 29
    .line 30
    :cond_1d
    sget-object p1, Lc5/h;->e:Lc5/h;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lg/b0;-><init>(Lg/f0;Lc5/h;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lg/f0;->e0:Lg/b0;

    .line 36
    .line 37
    :cond_24
    iget-object p1, p0, Lg/f0;->e0:Lg/b0;

    .line 38
    .line 39
    return-object p1
.end method
