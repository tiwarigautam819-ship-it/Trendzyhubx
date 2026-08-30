###### Class k2.n (k2.n)
.class public final Lk2/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lk2/n;->a:I

    .line 25
    iput-object p1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 26
    invoke-static {}, Lm/p;->a()Lm/p;

    move-result-object p1

    iput-object p1, p0, Lk2/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr7/a;Lo5/c;Lv7/i;)V
    .registers 6

    const-string p3, "routeDatabase"

    invoke-static {p3, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 9
    sget-object p2, Ls6/o;->a:Ls6/o;

    iput-object p2, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 12
    iget-object p2, p1, Lr7/a;->h:Lr7/m;

    .line 13
    const-string p3, "url"

    invoke-static {p3, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p2}, Lr7/m;->g()Ljava/net/URI;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_37

    new-array p1, v0, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v1

    invoke-static {p1}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5d

    .line 16
    :cond_37
    iget-object p1, p1, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 17
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    .line 18
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_53

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_53

    .line 19
    :cond_49
    const-string p2, "proxiesOrNull"

    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ls7/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_5d

    .line 20
    :cond_53
    :goto_53
    new-array p1, v0, [Ljava/net/Proxy;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v1

    invoke-static {p1}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 21
    :goto_5d
    iput-object p1, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 22
    iput v1, p0, Lk2/n;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_6d

    .line 10
    .line 11
    iget-object v2, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lm/x2;

    .line 14
    .line 15
    if-eqz v2, :cond_52

    .line 16
    .line 17
    iget-object v2, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lm/x2;

    .line 20
    .line 21
    if-nez v2, :cond_1d

    .line 22
    .line 23
    new-instance v2, Lm/x2;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_1d
    iget-object v2, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lm/x2;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    iput-object v3, v2, Lm/x2;->c:Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iput-boolean v4, v2, Lm/x2;->b:Z

    .line 39
    .line 40
    iput-object v3, v2, Lm/x2;->d:Ljava/lang/Object;

    .line 41
    .line 42
    iput-boolean v4, v2, Lm/x2;->a:Z

    .line 43
    .line 44
    sget-object v3, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 45
    .line 46
    invoke-static {v0}, Lj0/d0;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v4, 0x1

    .line 51
    if-eqz v3, :cond_38

    .line 52
    .line 53
    iput-boolean v4, v2, Lm/x2;->b:Z

    .line 54
    .line 55
    iput-object v3, v2, Lm/x2;->c:Ljava/lang/Object;

    .line 56
    .line 57
    :cond_38
    invoke-static {v0}, Lj0/d0;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_42

    .line 62
    .line 63
    iput-boolean v4, v2, Lm/x2;->a:Z

    .line 64
    .line 65
    iput-object v3, v2, Lm/x2;->d:Ljava/lang/Object;

    .line 66
    .line 67
    :cond_42
    iget-boolean v3, v2, Lm/x2;->b:Z

    .line 68
    .line 69
    if-nez v3, :cond_4a

    .line 70
    .line 71
    iget-boolean v3, v2, Lm/x2;->a:Z

    .line 72
    .line 73
    if-eqz v3, :cond_52

    .line 74
    .line 75
    :cond_4a
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v2, v0}, Lm/p;->d(Landroid/graphics/drawable/Drawable;Lm/x2;[I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_52
    iget-object v2, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lm/x2;

    .line 86
    .line 87
    if-eqz v2, :cond_60

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v2, v0}, Lm/p;->d(Landroid/graphics/drawable/Drawable;Lm/x2;[I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    iget-object v2, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lm/x2;

    .line 100
    .line 101
    if-eqz v2, :cond_6d

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v2, v0}, Lm/p;->d(Landroid/graphics/drawable/Drawable;Lm/x2;[I)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    return-void
.end method

.method public b()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/x2;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-object v0, v0, Lm/x2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/x2;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-object v0, v0, Lm/x2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public d()Z
    .registers 3

    .line 1
    iget v0, p0, Lk2/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_d

    .line 12
    .line 13
    goto :goto_17

    .line 14
    :cond_d
    iget-object v0, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_19

    .line 23
    .line 24
    :goto_17
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .registers 13

    .line 1
    iget-object v0, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v4, Lf/a;->z:[I

    .line 10
    .line 11
    invoke-static {v1, p1, v4, p2}, Lc5/h;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lc5/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v9, v2

    .line 18
    check-cast v9, Landroid/content/res/TypedArray;

    .line 19
    .line 20
    iget-object v2, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v5, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v6, v5

    .line 31
    check-cast v6, Landroid/content/res/TypedArray;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v5, p1

    .line 35
    move v7, p2

    .line 36
    invoke-static/range {v2 .. v8}, Lj0/k0;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :try_start_27
    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 v2, -0x1

    .line 45
    if-eqz p2, :cond_53

    .line 46
    .line 47
    invoke-virtual {v9, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lk2/n;->a:I

    .line 52
    .line 53
    iget-object p1, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lm/p;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iget v3, p0, Lk2/n;->a:I

    .line 62
    .line 63
    monitor-enter p1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_4c

    .line 64
    :try_start_3f
    iget-object v4, p1, Lm/p;->a:Lm/f2;

    .line 65
    .line 66
    invoke-virtual {v4, p2, v3}, Lm/f2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object p2
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4f

    .line 70
    :try_start_45
    monitor-exit p1

    .line 71
    if-eqz p2, :cond_53

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lk2/n;->i(Landroid/content/res/ColorStateList;)V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4c

    .line 74
    .line 75
    .line 76
    goto :goto_53

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    move-object p1, v0

    .line 79
    goto :goto_78

    .line 80
    :catchall_4f
    move-exception v0

    .line 81
    move-object p2, v0

    .line 82
    :try_start_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4f

    .line 83
    :try_start_52
    throw p2

    .line 84
    :cond_53
    :goto_53
    const/4 p1, 0x1

    .line 85
    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_61

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Lc5/h;->j(I)Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lj0/d0;->f(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 96
    .line 97
    .line 98
    :cond_61
    const/4 p1, 0x2

    .line 99
    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_74

    .line 104
    .line 105
    invoke-virtual {v9, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-static {p1, p2}, Lm/g1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Lj0/d0;->g(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_4c

    .line 115
    .line 116
    .line 117
    :cond_74
    invoke-virtual {v1}, Lc5/h;->s()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_78
    invoke-virtual {v1}, Lc5/h;->s()V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public f()Lg/j;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lk2/n;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1ce

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_b
    iget v1, p0, Lk2/n;->a:I

    .line 13
    .line 14
    iget-object v2, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_1b3

    .line 23
    .line 24
    iget-object v1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lr7/a;

    .line 27
    .line 28
    const-string v2, "No route to "

    .line 29
    .line 30
    iget v3, p0, Lk2/n;->a:I

    .line 31
    .line 32
    iget-object v4, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ge v3, v4, :cond_191

    .line 41
    .line 42
    iget-object v3, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Ljava/util/List;

    .line 45
    .line 46
    iget v4, p0, Lk2/n;->a:I

    .line 47
    .line 48
    add-int/lit8 v5, v4, 0x1

    .line 49
    .line 50
    iput v5, p0, Lk2/n;->a:I

    .line 51
    .line 52
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/net/Proxy;

    .line 57
    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 70
    .line 71
    if-eq v5, v6, :cond_95

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget-object v6, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 78
    .line 79
    if-ne v5, v6, :cond_51

    .line 80
    .line 81
    goto :goto_95

    .line 82
    :cond_51
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    instance-of v6, v5, Ljava/net/InetSocketAddress;

    .line 87
    .line 88
    if-eqz v6, :cond_79

    .line 89
    .line 90
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v6, :cond_6b

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-string v7, "hostName"

    .line 103
    .line 104
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_74

    .line 108
    :cond_6b
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v7, "address.hostAddress"

    .line 113
    .line 114
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_74
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    goto :goto_9b

    .line 122
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v1

    .line 150
    :cond_95
    :goto_95
    iget-object v5, v1, Lr7/a;->h:Lr7/m;

    .line 151
    .line 152
    iget-object v6, v5, Lr7/m;->d:Ljava/lang/String;

    .line 153
    .line 154
    iget v5, v5, Lr7/m;->e:I

    .line 155
    .line 156
    :goto_9b
    const/4 v7, 0x1

    .line 157
    if-gt v7, v5, :cond_172

    .line 158
    .line 159
    const/high16 v7, 0x10000

    .line 160
    .line 161
    if-ge v5, v7, :cond_172

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 168
    .line 169
    if-ne v2, v7, :cond_b2

    .line 170
    .line 171
    invoke-static {v6, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_105

    .line 179
    :cond_b2
    sget-object v2, Ls7/b;->a:[B

    .line 180
    .line 181
    const-string v2, "<this>"

    .line 182
    .line 183
    invoke-static {v2, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    sget-object v2, Ls7/b;->f:Lk7/f;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object v2, v2, Lk7/f;->a:Ljava/util/regex/Pattern;

    .line 192
    .line 193
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_d3

    .line 202
    .line 203
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    goto :goto_ec

    .line 212
    :cond_d3
    iget-object v2, v1, Lr7/a;->a:Lr7/b;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    :try_start_d8
    invoke-static {v6}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v7, "getAllByName(hostname)"

    .line 222
    .line 223
    invoke-static {v7, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Ls6/f;->r([Ljava/lang/Object;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v2
    :try_end_e5
    .catch Ljava/lang/NullPointerException; {:try_start_d8 .. :try_end_e5} :catch_162

    .line 230
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-nez v7, :cond_146

    .line 235
    .line 236
    move-object v1, v2

    .line 237
    :goto_ec
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_105

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Ljava/net/InetAddress;

    .line 252
    .line 253
    new-instance v6, Ljava/net/InetSocketAddress;

    .line 254
    .line 255
    invoke-direct {v6, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_f0

    .line 262
    :cond_105
    :goto_105
    iget-object v1, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :goto_10b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_13f

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 279
    .line 280
    new-instance v4, Lr7/x;

    .line 281
    .line 282
    iget-object v5, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v5, Lr7/a;

    .line 285
    .line 286
    invoke-direct {v4, v5, v3, v2}, Lr7/x;-><init>(Lr7/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, Lo5/c;

    .line 292
    .line 293
    monitor-enter v2

    .line 294
    :try_start_125
    iget-object v5, v2, Lo5/c;->b:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v5, Ljava/util/LinkedHashSet;

    .line 297
    .line 298
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5
    :try_end_12d
    .catchall {:try_start_125 .. :try_end_12d} :catchall_13c

    .line 302
    monitor-exit v2

    .line 303
    if-eqz v5, :cond_138

    .line 304
    .line 305
    iget-object v2, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v2, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_10b

    .line 313
    :cond_138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_10b

    .line 317
    :catchall_13c
    move-exception v0

    .line 318
    :try_start_13d
    monitor-exit v2
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    .line 319
    throw v0

    .line 320
    :cond_13f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-nez v1, :cond_b

    .line 325
    .line 326
    goto :goto_1b3

    .line 327
    :cond_146
    new-instance v0, Ljava/net/UnknownHostException;

    .line 328
    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    iget-object v1, v1, Lr7/a;->a:Lr7/b;

    .line 335
    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v1, " returned no addresses for "

    .line 340
    .line 341
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :catch_162
    move-exception v0

    .line 356
    new-instance v1, Ljava/net/UnknownHostException;

    .line 357
    .line 358
    const-string v2, "Broken system behaviour for dns lookup of "

    .line 359
    .line 360
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 368
    .line 369
    .line 370
    throw v1

    .line 371
    :cond_172
    new-instance v0, Ljava/net/SocketException;

    .line 372
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const/16 v2, 0x3a

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v2, "; port is out of range"

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v0

    .line 402
    :cond_191
    new-instance v0, Ljava/net/SocketException;

    .line 403
    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v1, Lr7/a;->h:Lr7/m;

    .line 410
    .line 411
    iget-object v1, v1, Lr7/m;->d:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, "; exhausted proxy configurations: "

    .line 417
    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Ljava/util/List;

    .line 424
    .line 425
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :cond_1b3
    :goto_1b3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_1c7

    .line 441
    .line 442
    iget-object v1, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-static {v0, v1}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v1, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 454
    .line 455
    .line 456
    :cond_1c7
    new-instance v1, Lg/j;

    .line 457
    .line 458
    const/4 v2, 0x5

    .line 459
    invoke-direct {v1, v0, v2}, Lg/j;-><init>(Ljava/util/ArrayList;I)V

    .line 460
    .line 461
    .line 462
    return-object v1

    .line 463
    :cond_1ce
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 464
    .line 465
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 466
    .line 467
    .line 468
    throw v0
.end method

.method public g()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lk2/n;->a:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lk2/n;->i(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lk2/n;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(I)V
    .registers 5

    .line 1
    iput p1, p0, Lk2/n;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lm/p;

    .line 6
    .line 7
    if-eqz v0, :cond_1c

    .line 8
    .line 9
    iget-object v1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-enter v0

    .line 18
    :try_start_11
    iget-object v2, v0, Lm/p;->a:Lm/f2;

    .line 19
    .line 20
    invoke-virtual {v2, v1, p1}, Lm/f2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_19

    .line 24
    monitor-exit v0

    .line 25
    goto :goto_1d

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    invoke-virtual {p0, p1}, Lk2/n;->i(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lk2/n;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public i(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_19

    .line 2
    .line 3
    iget-object v0, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lm/x2;

    .line 6
    .line 7
    if-nez v0, :cond_f

    .line 8
    .line 9
    new-instance v0, Lm/x2;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_f
    iget-object v0, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lm/x2;

    .line 19
    .line 20
    iput-object p1, v0, Lm/x2;->c:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, v0, Lm/x2;->b:Z

    .line 24
    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lk2/n;->d:Ljava/lang/Object;

    .line 28
    .line 29
    :goto_1c
    invoke-virtual {p0}, Lk2/n;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/x2;

    .line 4
    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    new-instance v0, Lm/x2;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lm/x2;

    .line 17
    .line 18
    iput-object p1, v0, Lm/x2;->c:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Lm/x2;->b:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lk2/n;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm/x2;

    .line 4
    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    new-instance v0, Lm/x2;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lm/x2;

    .line 17
    .line 18
    iput-object p1, v0, Lm/x2;->d:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Lm/x2;->a:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lk2/n;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public l()V
    .registers 7

    .line 1
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lk2/n;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Long;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_19

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-wide v4, v2

    .line 27
    :goto_1a
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 28
    .line 29
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lk2/n;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz v1, :cond_29

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    :cond_29
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 43
    .line 44
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 48
    .line 49
    iget v2, p0, Lk2/n;->a:I

    .line 50
    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lk2/n;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/util/UUID;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    .line 63
    .line 64
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lk2/n;->f:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lg/m0;

    .line 73
    .line 74
    if-eqz v0, :cond_6c

    .line 75
    .line 76
    if-eqz v0, :cond_6c

    .line 77
    .line 78
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, v0, Lg/m0;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    const-string v3, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 95
    .line 96
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 100
    .line 101
    iget-boolean v0, v0, Lg/m0;->b:Z

    .line 102
    .line 103
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    :cond_6c
    return-void
.end method
