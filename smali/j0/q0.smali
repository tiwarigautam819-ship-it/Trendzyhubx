###### Class j0.q0 (j0.q0)
.class public final Lj0/q0;
.super Lj0/t0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static c:Ljava/lang/reflect/Field; = null

.field public static d:Z = false

.field public static e:Ljava/lang/reflect/Constructor; = null

.field public static f:Z = false


# instance fields
.field public a:Landroid/view/WindowInsets;

.field public b:Lc0/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj0/t0;-><init>()V

    .line 2
    invoke-static {}, Lj0/q0;->e()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lj0/q0;->a:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lj0/b1;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lj0/t0;-><init>(Lj0/b1;)V

    .line 4
    invoke-virtual {p1}, Lj0/b1;->f()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lj0/q0;->a:Landroid/view/WindowInsets;

    return-void
.end method

.method private static e()Landroid/view/WindowInsets;
    .registers 7

    .line 1
    sget-boolean v0, Lj0/q0;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-class v2, Landroid/view/WindowInsets;

    .line 5
    .line 6
    const-string v3, "WindowInsetsCompat"

    .line 7
    .line 8
    if-nez v0, :cond_1a

    .line 9
    .line 10
    :try_start_9
    const-string v0, "CONSUMED"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lj0/q0;->c:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_11} :catch_12

    .line 17
    .line 18
    goto :goto_18

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const-string v4, "Could not retrieve WindowInsets.CONSUMED field"

    .line 21
    .line 22
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_18
    sput-boolean v1, Lj0/q0;->d:Z

    .line 26
    .line 27
    :cond_1a
    sget-object v0, Lj0/q0;->c:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v0, :cond_33

    .line 31
    .line 32
    :try_start_1f
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowInsets;

    .line 37
    .line 38
    if-eqz v0, :cond_33

    .line 39
    .line 40
    new-instance v5, Landroid/view/WindowInsets;

    .line 41
    .line 42
    invoke-direct {v5, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    .line 43
    .line 44
    .line 45
    return-object v5

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    const-string v5, "Could not get value from WindowInsets.CONSUMED field"

    .line 48
    .line 49
    invoke-static {v3, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_33
    sget-boolean v0, Lj0/q0;->f:Z

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    if-nez v0, :cond_4d

    .line 56
    .line 57
    :try_start_38
    new-array v0, v1, [Ljava/lang/Class;

    .line 58
    .line 59
    const-class v6, Landroid/graphics/Rect;

    .line 60
    .line 61
    aput-object v6, v0, v5

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lj0/q0;->e:Ljava/lang/reflect/Constructor;
    :try_end_44
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_44} :catch_45

    .line 68
    .line 69
    goto :goto_4b

    .line 70
    :catch_45
    move-exception v0

    .line 71
    const-string v2, "Could not retrieve WindowInsets(Rect) constructor"

    .line 72
    .line 73
    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_4b
    sput-boolean v1, Lj0/q0;->f:Z

    .line 77
    .line 78
    :cond_4d
    sget-object v0, Lj0/q0;->e:Ljava/lang/reflect/Constructor;

    .line 79
    .line 80
    if-eqz v0, :cond_67

    .line 81
    .line 82
    :try_start_51
    new-instance v2, Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .line 86
    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v2, v1, v5

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_60
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_51 .. :try_end_60} :catch_61

    .line 96
    .line 97
    return-object v0

    .line 98
    :catch_61
    move-exception v0

    .line 99
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    .line 100
    .line 101
    invoke-static {v3, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_67
    return-object v4
.end method


# virtual methods
.method public b()Lj0/b1;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lj0/t0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj0/q0;->a:Landroid/view/WindowInsets;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, v0, Lj0/b1;->a:Lj0/z0;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lj0/z0;->o([Lc0/c;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lj0/q0;->b:Lc0/c;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lj0/z0;->q(Lc0/c;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public c(Lc0/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj0/q0;->b:Lc0/c;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lc0/c;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj0/q0;->a:Landroid/view/WindowInsets;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget v1, p1, Lc0/c;->a:I

    .line 6
    .line 7
    iget v2, p1, Lc0/c;->b:I

    .line 8
    .line 9
    iget v3, p1, Lc0/c;->c:I

    .line 10
    .line 11
    iget p1, p1, Lc0/c;->d:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lj0/q0;->a:Landroid/view/WindowInsets;

    .line 18
    .line 19
    :cond_12
    return-void
.end method
