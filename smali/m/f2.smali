###### Class m.f2 (m.f2)
.class public final Lm/f2;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final h:Landroid/graphics/PorterDuff$Mode;

.field public static i:Lm/f2;

.field public static final j:Lm/d2;


# instance fields
.field public a:Ljava/util/WeakHashMap;

.field public b:Ls/j;

.field public c:Ls/k;

.field public final d:Ljava/util/WeakHashMap;

.field public e:Landroid/util/TypedValue;

.field public f:Z

.field public g:Lcom/google/android/gms/common/internal/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Lm/f2;->h:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    new-instance v0, Lm/d2;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, v1}, Ls/i;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lm/f2;->j:Lm/d2;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm/f2;->d:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    return-void
.end method

.method public static declared-synchronized d()Lm/f2;
    .registers 2

    .line 1
    const-class v0, Lm/f2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lm/f2;->i:Lm/f2;

    .line 5
    .line 6
    if-nez v1, :cond_14

    .line 7
    .line 8
    new-instance v1, Lm/f2;

    .line 9
    .line 10
    invoke-direct {v1}, Lm/f2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lm/f2;->i:Lm/f2;

    .line 14
    .line 15
    invoke-static {v1}, Lm/f2;->j(Lm/f2;)V

    .line 16
    .line 17
    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    :goto_14
    sget-object v1, Lm/f2;->i:Lm/f2;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_12

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    .line 26
    throw v1
.end method

.method public static declared-synchronized h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    .line 1
    const-class v0, Lm/f2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lm/f2;->j:Lm/d2;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 v2, 0x1f

    .line 10
    .line 11
    add-int v3, v2, p0

    .line 12
    .line 13
    mul-int/2addr v3, v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ls/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    if-nez v2, :cond_35

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    add-int/2addr p0, v3

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0, v2}, Ls/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_33

    .line 50
    .line 51
    goto :goto_35

    .line 52
    :catchall_33
    move-exception p0

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    :goto_35
    monitor-exit v0

    .line 55
    return-object v2

    .line 56
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_33

    .line 57
    throw p0
.end method

.method public static j(Lm/f2;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ge v0, v1, :cond_32

    .line 6
    .line 7
    new-instance v0, Lm/e2;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1}, Lm/e2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "vector"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lm/f2;->a(Ljava/lang/String;Lm/e2;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lm/e2;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v1}, Lm/e2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "animated-vector"

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lm/f2;->a(Ljava/lang/String;Lm/e2;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lm/e2;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1}, Lm/e2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "animated-selector"

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Lm/f2;->a(Ljava/lang/String;Lm/e2;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lm/e2;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, v1}, Lm/e2;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "drawable"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lm/f2;->a(Ljava/lang/String;Lm/e2;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lm/e2;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm/f2;->b:Ls/j;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    new-instance v0, Ls/j;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lm/f2;->b:Ls/j;

    .line 12
    .line 13
    :cond_c
    iget-object v0, p0, Lm/f2;->b:Ls/j;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    .line 4
    .line 5
    move-result-object p4

    .line 6
    if-eqz p4, :cond_28

    .line 7
    .line 8
    iget-object v0, p0, Lm/f2;->d:Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ls/g;

    .line 15
    .line 16
    if-nez v0, :cond_1e

    .line 17
    .line 18
    new-instance v0, Ls/g;

    .line 19
    .line 20
    invoke-direct {v0}, Ls/g;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lm/f2;->d:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_2a

    .line 31
    :cond_1e
    :goto_1e
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, p3, p1}, Ls/g;->d(JLjava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_1c

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_28
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_1c

    .line 44
    throw p1
.end method

.method public final c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 1
    iget-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    shl-long/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    int-to-long v5, v1

    .line 31
    or-long/2addr v3, v5

    .line 32
    invoke-virtual {p0, p1, v3, v4}, Lm/f2;->e(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_26

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_26
    iget-object v1, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v1, :cond_2c

    .line 43
    .line 44
    goto :goto_73

    .line 45
    :cond_2c
    const v1, 0x7f080010

    .line 46
    .line 47
    .line 48
    if-ne p2, v1, :cond_4d

    .line 49
    .line 50
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 51
    .line 52
    const p2, 0x7f08000f

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lm/f2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const v1, 0x7f080011

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v1}, Lm/f2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v6, 0x2

    .line 67
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    aput-object p2, v6, v7

    .line 71
    .line 72
    aput-object v1, v6, v2

    .line 73
    .line 74
    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_73

    .line 78
    :cond_4d
    const v1, 0x7f080033

    .line 79
    .line 80
    .line 81
    if-ne p2, v1, :cond_5a

    .line 82
    .line 83
    const p2, 0x7f07003b

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;->f(Lm/f2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    goto :goto_73

    .line 91
    :cond_5a
    const v1, 0x7f080032

    .line 92
    .line 93
    .line 94
    if-ne p2, v1, :cond_67

    .line 95
    .line 96
    const p2, 0x7f07003c

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;->f(Lm/f2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_73

    .line 104
    :cond_67
    const v1, 0x7f080034

    .line 105
    .line 106
    .line 107
    if-ne p2, v1, :cond_73

    .line 108
    .line 109
    const p2, 0x7f07003d

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;->f(Lm/f2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :cond_73
    :goto_73
    if-eqz v5, :cond_7d

    .line 117
    .line 118
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 119
    .line 120
    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, v3, v4, v5}, Lm/f2;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    :cond_7d
    return-object v5
.end method

.method public final declared-synchronized e(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm/f2;->d:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ls/g;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_37

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_e
    :try_start_e
    iget-object v2, v0, Ls/g;->b:[J

    .line 16
    .line 17
    iget v3, v0, Ls/g;->d:I

    .line 18
    .line 19
    invoke-static {v2, v3, p2, p3}, Lt/a;->b([JIJ)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ltz v2, :cond_20

    .line 24
    .line 25
    iget-object v3, v0, Ls/g;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v2, v3, v2

    .line 28
    .line 29
    sget-object v3, Ls/h;->a:Ljava/lang/Object;

    .line 30
    .line 31
    if-ne v2, v3, :cond_21

    .line 32
    .line 33
    :cond_20
    move-object v2, v1

    .line 34
    :cond_21
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    if-eqz v2, :cond_50

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 43
    .line 44
    if-eqz v2, :cond_39

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_37

    .line 54
    monitor-exit p0

    .line 55
    return-object p1

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    goto :goto_52

    .line 58
    :cond_39
    :try_start_39
    iget-object p1, v0, Ls/g;->b:[J

    .line 59
    .line 60
    iget v2, v0, Ls/g;->d:I

    .line 61
    .line 62
    invoke-static {p1, v2, p2, p3}, Lt/a;->b([JIJ)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ltz p1, :cond_50

    .line 67
    .line 68
    iget-object p2, v0, Ls/g;->c:[Ljava/lang/Object;

    .line 69
    .line 70
    aget-object p3, p2, p1

    .line 71
    .line 72
    sget-object v2, Ls/h;->a:Ljava/lang/Object;

    .line 73
    .line 74
    if-eq p3, v2, :cond_50

    .line 75
    .line 76
    aput-object v2, p2, p1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, v0, Ls/g;->a:Z
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_37

    .line 80
    .line 81
    :cond_50
    monitor-exit p0

    .line 82
    return-object v1

    .line 83
    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_37

    .line 84
    throw p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lm/f2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    .line 11
    throw p1
.end method

.method public final declared-synchronized g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lm/f2;->f:Z

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    goto :goto_26

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lm/f2;->f:Z

    .line 9
    .line 10
    const v0, 0x7f08004e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lm/f2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_46

    .line 18
    .line 19
    instance-of v1, v0, Lh1/q;

    .line 20
    .line 21
    if-nez v1, :cond_26

    .line 22
    .line 23
    const-string v1, "android.graphics.drawable.VectorDrawable"

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_46

    .line 38
    .line 39
    :cond_26
    :goto_26
    invoke-virtual {p0, p1, p2}, Lm/f2;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_33

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lm/f2;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_33

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    goto :goto_51

    .line 52
    :cond_33
    :goto_33
    if-nez v0, :cond_39

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_39
    if-eqz v0, :cond_3f

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3, v0}, Lm/f2;->n(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_3f
    if-eqz v0, :cond_44

    .line 65
    .line 66
    invoke-static {v0}, Lm/g1;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_31

    .line 67
    .line 68
    .line 69
    :cond_44
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :cond_46
    const/4 p1, 0x0

    .line 72
    :try_start_47
    iput-boolean p1, p0, Lm/f2;->f:Z

    .line 73
    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_31

    .line 83
    throw p1
.end method

.method public final declared-synchronized i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm/f2;->a:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_24

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ls/k;

    .line 12
    .line 13
    if-eqz v0, :cond_24

    .line 14
    .line 15
    iget-object v2, v0, Ls/k;->a:[I

    .line 16
    .line 17
    iget v3, v0, Ls/k;->c:I

    .line 18
    .line 19
    invoke-static {v3, p2, v2}, Lt/a;->a(II[I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ltz v2, :cond_20

    .line 24
    .line 25
    iget-object v0, v0, Ls/k;->b:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v0, v0, v2

    .line 28
    .line 29
    sget-object v2, Ls/h;->b:Ljava/lang/Object;

    .line 30
    .line 31
    if-ne v0, v2, :cond_21

    .line 32
    .line 33
    :cond_20
    move-object v0, v1

    .line 34
    :cond_21
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move-object v0, v1

    .line 38
    :goto_25
    if-nez v0, :cond_58

    .line 39
    .line 40
    iget-object v0, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;

    .line 41
    .line 42
    if-nez v0, :cond_2c

    .line 43
    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/g;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_30
    if-eqz v1, :cond_54

    .line 50
    .line 51
    iget-object v0, p0, Lm/f2;->a:Ljava/util/WeakHashMap;

    .line 52
    .line 53
    if-nez v0, :cond_3d

    .line 54
    .line 55
    new-instance v0, Ljava/util/WeakHashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lm/f2;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    :cond_3d
    iget-object v0, p0, Lm/f2;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ls/k;

    .line 69
    .line 70
    if-nez v0, :cond_51

    .line 71
    .line 72
    new-instance v0, Ls/k;

    .line 73
    .line 74
    invoke-direct {v0}, Ls/k;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lm/f2;->a:Ljava/util/WeakHashMap;

    .line 78
    .line 79
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_51
    invoke-virtual {v0, p2, v1}, Ls/k;->a(ILjava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 83
    .line 84
    .line 85
    :cond_54
    move-object v0, v1

    .line 86
    goto :goto_58

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    :goto_58
    monitor-exit p0

    .line 90
    return-object v0

    .line 91
    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_56

    .line 92
    throw p1
.end method

.method public final k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 1
    iget-object v0, p0, Lm/f2;->b:Ls/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c9

    .line 5
    .line 6
    invoke-virtual {v0}, Ls/j;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c9

    .line 11
    .line 12
    iget-object v0, p0, Lm/f2;->c:Ls/k;

    .line 13
    .line 14
    const-string v2, "appcompat_skip_skip"

    .line 15
    .line 16
    if-eqz v0, :cond_38

    .line 17
    .line 18
    iget-object v3, v0, Ls/k;->a:[I

    .line 19
    .line 20
    iget v4, v0, Ls/k;->c:I

    .line 21
    .line 22
    invoke-static {v4, p2, v3}, Lt/a;->a(II[I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ltz v3, :cond_23

    .line 27
    .line 28
    iget-object v0, v0, Ls/k;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v0, v0, v3

    .line 31
    .line 32
    sget-object v3, Ls/h;->b:Ljava/lang/Object;

    .line 33
    .line 34
    if-ne v0, v3, :cond_24

    .line 35
    .line 36
    :cond_23
    move-object v0, v1

    .line 37
    :cond_24
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_c9

    .line 44
    .line 45
    if-eqz v0, :cond_3f

    .line 46
    .line 47
    iget-object v3, p0, Lm/f2;->b:Ls/j;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_3f

    .line 54
    .line 55
    goto/16 :goto_c9

    .line 56
    .line 57
    :cond_38
    new-instance v0, Ls/k;

    .line 58
    .line 59
    invoke-direct {v0}, Ls/k;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lm/f2;->c:Ls/k;

    .line 63
    .line 64
    :cond_3f
    iget-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 65
    .line 66
    if-nez v0, :cond_4a

    .line 67
    .line 68
    new-instance v0, Landroid/util/TypedValue;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 74
    .line 75
    :cond_4a
    iget-object v0, p0, Lm/f2;->e:Landroid/util/TypedValue;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 83
    .line 84
    .line 85
    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 86
    .line 87
    int-to-long v4, v4

    .line 88
    const/16 v6, 0x20

    .line 89
    .line 90
    shl-long/2addr v4, v6

    .line 91
    iget v6, v0, Landroid/util/TypedValue;->data:I

    .line 92
    .line 93
    int-to-long v6, v6

    .line 94
    or-long/2addr v4, v6

    .line 95
    invoke-virtual {p0, p1, v4, v5}, Lm/f2;->e(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v6, :cond_65

    .line 100
    .line 101
    return-object v6

    .line 102
    :cond_65
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 103
    .line 104
    if-eqz v7, :cond_c1

    .line 105
    .line 106
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const-string v8, ".xml"

    .line 111
    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_c1

    .line 117
    .line 118
    :try_start_75
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    :goto_7d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    const/4 v9, 0x2

    .line 131
    if-eq v8, v9, :cond_87

    .line 132
    .line 133
    if-eq v8, v3, :cond_87

    .line 134
    .line 135
    goto :goto_7d

    .line 136
    :cond_87
    if-ne v8, v9, :cond_b2

    .line 137
    .line 138
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v8, p0, Lm/f2;->c:Ls/k;

    .line 143
    .line 144
    invoke-virtual {v8, p2, v3}, Ls/k;->a(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v8, p0, Lm/f2;->b:Ls/j;

    .line 148
    .line 149
    invoke-virtual {v8, v3}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lm/e2;

    .line 154
    .line 155
    if-eqz v3, :cond_a7

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v3, p1, v1, v7, v8}, Lm/e2;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    goto :goto_a7

    .line 166
    :catch_a5
    move-exception p1

    .line 167
    goto :goto_ba

    .line 168
    :cond_a7
    :goto_a7
    if-eqz v6, :cond_c1

    .line 169
    .line 170
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 171
    .line 172
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1, v4, v5, v6}, Lm/f2;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_c1

    .line 179
    :cond_b2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 180
    .line 181
    const-string v0, "No start tag found"

    .line 182
    .line 183
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ba} :catch_a5

    .line 187
    :goto_ba
    const-string v0, "ResourceManagerInternal"

    .line 188
    .line 189
    const-string v1, "Exception while inflating drawable"

    .line 190
    .line 191
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    :cond_c1
    :goto_c1
    if-nez v6, :cond_c8

    .line 195
    .line 196
    iget-object p1, p0, Lm/f2;->c:Ls/k;

    .line 197
    .line 198
    invoke-virtual {p1, p2, v2}, Ls/k;->a(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    return-object v6

    .line 202
    :cond_c9
    :goto_c9
    return-object v1
.end method

.method public final declared-synchronized l(Landroid/content/Context;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lm/f2;->d:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ls/g;

    .line 9
    .line 10
    if-eqz p1, :cond_1d

    .line 11
    .line 12
    iget v0, p1, Ls/g;->d:I

    .line 13
    .line 14
    iget-object v1, p1, Ls/g;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_11
    if-ge v3, v0, :cond_19

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v1, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_11

    .line 26
    :cond_19
    iput v2, p1, Ls/g;->d:I

    .line 27
    .line 28
    iput-boolean v2, p1, Ls/g;->a:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 29
    .line 30
    :cond_1d
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw p1
.end method

.method public final declared-synchronized m(Lcom/google/android/gms/common/internal/g;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw p1
.end method

.method public final n(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 12

    .line 1
    invoke-virtual {p0, p1, p2}, Lm/f2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_20

    .line 7
    .line 8
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;

    .line 16
    .line 17
    if-nez p3, :cond_13

    .line 18
    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    const p3, 0x7f080041

    .line 21
    .line 22
    .line 23
    if-ne p2, p3, :cond_1a

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 26
    .line 27
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_1f

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-object p1

    .line 33
    :cond_20
    iget-object v0, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;

    .line 34
    .line 35
    if-eqz v0, :cond_94

    .line 36
    .line 37
    const v0, 0x7f08003c

    .line 38
    .line 39
    .line 40
    const v2, 0x102000d

    .line 41
    .line 42
    .line 43
    const v3, 0x102000f

    .line 44
    .line 45
    .line 46
    const/high16 v4, 0x1020000

    .line 47
    .line 48
    const v5, 0x7f04005d

    .line 49
    .line 50
    .line 51
    const v6, 0x7f04005f

    .line 52
    .line 53
    .line 54
    if-ne p2, v0, :cond_5e

    .line 55
    .line 56
    move-object p2, p4

    .line 57
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 58
    .line 59
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p1, v6}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sget-object v1, Lm/p;->b:Landroid/graphics/PorterDuff$Mode;

    .line 68
    .line 69
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-static {p1, v6}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {p1, v5}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {p2, p1, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    .line 93
    .line 94
    return-object p4

    .line 95
    :cond_5e
    const v0, 0x7f080033

    .line 96
    .line 97
    .line 98
    if-eq p2, v0, :cond_6d

    .line 99
    .line 100
    const v0, 0x7f080032

    .line 101
    .line 102
    .line 103
    if-eq p2, v0, :cond_6d

    .line 104
    .line 105
    const v0, 0x7f080034

    .line 106
    .line 107
    .line 108
    if-ne p2, v0, :cond_94

    .line 109
    .line 110
    :cond_6d
    move-object p2, p4

    .line 111
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 112
    .line 113
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-static {p1, v6}, Lm/v2;->b(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sget-object v1, Lm/p;->b:Landroid/graphics/PorterDuff$Mode;

    .line 122
    .line 123
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {p1, v5}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p1, v5}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-static {p2, p1, v1}, Lcom/google/android/gms/common/internal/g;->j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    .line 147
    .line 148
    return-object p4

    .line 149
    :cond_94
    iget-object v0, p0, Lm/f2;->g:Lcom/google/android/gms/common/internal/g;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    if-eqz v0, :cond_108

    .line 153
    .line 154
    sget-object v3, Lm/p;->b:Landroid/graphics/PorterDuff$Mode;

    .line 155
    .line 156
    iget-object v4, v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v4, [I

    .line 159
    .line 160
    invoke-static {v4, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    const/4 v5, 0x1

    .line 165
    const/4 v6, -0x1

    .line 166
    if-eqz v4, :cond_ad

    .line 167
    .line 168
    const p2, 0x7f04005f

    .line 169
    .line 170
    .line 171
    :goto_aa
    move v4, v5

    .line 172
    :goto_ab
    move v0, v6

    .line 173
    goto :goto_e9

    .line 174
    :cond_ad
    iget-object v4, v0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v4, [I

    .line 177
    .line 178
    invoke-static {v4, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_bb

    .line 183
    .line 184
    const p2, 0x7f04005d

    .line 185
    .line 186
    .line 187
    goto :goto_aa

    .line 188
    :cond_bb
    iget-object v0, v0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, [I

    .line 191
    .line 192
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    const v4, 0x1010031

    .line 197
    .line 198
    .line 199
    if-eqz v0, :cond_cc

    .line 200
    .line 201
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 202
    .line 203
    :goto_ca
    move p2, v4

    .line 204
    goto :goto_aa

    .line 205
    :cond_cc
    const v0, 0x7f080025

    .line 206
    .line 207
    .line 208
    if-ne p2, v0, :cond_e0

    .line 209
    .line 210
    const p2, 0x42233333    # 40.8f

    .line 211
    .line 212
    .line 213
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    const v0, 0x1010030

    .line 218
    .line 219
    .line 220
    move v4, v0

    .line 221
    move v0, p2

    .line 222
    move p2, v4

    .line 223
    move v4, v5

    .line 224
    goto :goto_e9

    .line 225
    :cond_e0
    const v0, 0x7f080013

    .line 226
    .line 227
    .line 228
    if-ne p2, v0, :cond_e6

    .line 229
    .line 230
    goto :goto_ca

    .line 231
    :cond_e6
    move p2, v2

    .line 232
    move v4, p2

    .line 233
    goto :goto_ab

    .line 234
    :goto_e9
    if-eqz v4, :cond_108

    .line 235
    .line 236
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {p1, p2}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    const-class p2, Lm/p;

    .line 245
    .line 246
    monitor-enter p2

    .line 247
    :try_start_f6
    invoke-static {p1, v3}, Lm/f2;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 248
    .line 249
    .line 250
    move-result-object p1
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_105

    .line 251
    monitor-exit p2

    .line 252
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    .line 254
    .line 255
    if-eq v0, v6, :cond_103

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    .line 259
    .line 260
    :cond_103
    move v2, v5

    .line 261
    goto :goto_108

    .line 262
    :catchall_105
    move-exception p1

    .line 263
    :try_start_106
    monitor-exit p2
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    .line 264
    throw p1

    .line 265
    :cond_108
    :goto_108
    if-nez v2, :cond_10d

    .line 266
    .line 267
    if-eqz p3, :cond_10d

    .line 268
    .line 269
    return-object v1

    .line 270
    :cond_10d
    return-object p4
.end method
