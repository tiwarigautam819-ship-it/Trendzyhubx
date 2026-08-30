###### Class i2.l (i2.l)
.class public final Li2/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Li2/h;


# static fields
.field public static final l:Li2/p;

.field public static m:Li2/l;

.field public static final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final o:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final q:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/Class;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Li2/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li2/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/l;->l:Li2/p;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Li2/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Li2/l;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Li2/l;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Li2/l;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Li2/r;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/l;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Li2/l;->b:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Li2/l;->c:Ljava/lang/Class;

    .line 9
    .line 10
    iput-object p4, p0, Li2/l;->d:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p5, p0, Li2/l;->e:Ljava/lang/Class;

    .line 13
    .line 14
    iput-object p6, p0, Li2/l;->f:Ljava/lang/Class;

    .line 15
    .line 16
    iput-object p7, p0, Li2/l;->g:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    iput-object p8, p0, Li2/l;->h:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    iput-object p9, p0, Li2/l;->i:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    iput-object p10, p0, Li2/l;->j:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    iput-object p11, p0, Li2/l;->k:Li2/r;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Li2/l;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v0, "i2.l"
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method


# virtual methods
.method public final a(Li2/s;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v0, Landroidx/fragment/app/e;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Li2/l;->c(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Li2/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_15

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {p0, p1}, Li2/l;->d(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_19
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    iget-object v0, p0, Li2/l;->b:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_20

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "com.android.billingclient.api.BillingClientStateListener"

    .line 11
    .line 12
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_12

    .line 17
    .line 18
    goto :goto_20

    .line 19
    :cond_12
    const-string v2, "startConnection"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v1, v4, v5

    .line 26
    .line 27
    invoke-static {v0, v2, v4}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_21

    .line 32
    .line 33
    :goto_20
    return-void

    .line 34
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-array v6, v3, [Ljava/lang/Class;

    .line 39
    .line 40
    aput-object v1, v6, v5

    .line 41
    .line 42
    new-instance v1, Lh8/a;

    .line 43
    .line 44
    invoke-direct {v1, v3, p1}, Lh8/a;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v6, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_49

    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v1, :cond_3a

    .line 57
    .line 58
    goto :goto_41

    .line 59
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Li2/l;->a:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3d

    .line 60
    .line 61
    goto :goto_41

    .line 62
    :catchall_3d
    move-exception v1

    .line 63
    :try_start_3e
    invoke-static {v1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_41
    new-array v1, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p1, v1, v5

    .line 69
    .line 70
    invoke-static {v0, v2, v4, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_49

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
