###### Class i2.m (i2.m)
.class public final Li2/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Li2/h;


# static fields
.field public static final G:Li2/j;

.field public static final H:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static I:Li2/m;

.field public static final J:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final K:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final L:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final A:Ljava/lang/reflect/Method;

.field public final B:Ljava/lang/reflect/Method;

.field public final C:Ljava/lang/reflect/Method;

.field public final D:Ljava/lang/reflect/Method;

.field public final E:Ljava/lang/reflect/Method;

.field public final F:Ljava/lang/reflect/Method;

.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/Class;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/Class;

.field public final h:Ljava/lang/Class;

.field public final i:Ljava/lang/Class;

.field public final j:Ljava/lang/Class;

.field public final k:Ljava/lang/Class;

.field public final l:Ljava/lang/Class;

.field public final m:Ljava/lang/Class;

.field public final n:Ljava/lang/Class;

.field public final o:Ljava/lang/Class;

.field public final p:Ljava/lang/reflect/Method;

.field public final q:Ljava/lang/reflect/Method;

.field public final r:Ljava/lang/reflect/Method;

.field public final s:Ljava/lang/reflect/Method;

.field public final t:Ljava/lang/reflect/Method;

.field public final u:Ljava/lang/reflect/Method;

.field public final v:Ljava/lang/reflect/Method;

.field public final w:Ljava/lang/reflect/Method;

.field public final x:Ljava/lang/reflect/Method;

.field public final y:Ljava/lang/reflect/Method;

.field public final z:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li2/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Li2/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Li2/m;->G:Li2/j;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Li2/m;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Li2/m;->J:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Li2/m;->K:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 33

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li2/m;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Li2/m;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Li2/m;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Li2/m;->d:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Li2/m;->e:Ljava/lang/Class;

    .line 7
    iput-object p6, p0, Li2/m;->f:Ljava/lang/Class;

    .line 8
    iput-object p7, p0, Li2/m;->g:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Li2/m;->h:Ljava/lang/Class;

    .line 10
    iput-object p9, p0, Li2/m;->i:Ljava/lang/Class;

    .line 11
    iput-object p10, p0, Li2/m;->j:Ljava/lang/Class;

    .line 12
    iput-object p11, p0, Li2/m;->k:Ljava/lang/Class;

    .line 13
    iput-object p12, p0, Li2/m;->l:Ljava/lang/Class;

    .line 14
    iput-object p13, p0, Li2/m;->m:Ljava/lang/Class;

    .line 15
    iput-object p14, p0, Li2/m;->n:Ljava/lang/Class;

    .line 16
    iput-object p15, p0, Li2/m;->o:Ljava/lang/Class;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Li2/m;->p:Ljava/lang/reflect/Method;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Li2/m;->q:Ljava/lang/reflect/Method;

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Li2/m;->r:Ljava/lang/reflect/Method;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Li2/m;->s:Ljava/lang/reflect/Method;

    move-object/from16 p1, p20

    .line 21
    iput-object p1, p0, Li2/m;->t:Ljava/lang/reflect/Method;

    move-object/from16 p1, p21

    .line 22
    iput-object p1, p0, Li2/m;->u:Ljava/lang/reflect/Method;

    move-object/from16 p1, p22

    .line 23
    iput-object p1, p0, Li2/m;->v:Ljava/lang/reflect/Method;

    move-object/from16 p1, p23

    .line 24
    iput-object p1, p0, Li2/m;->w:Ljava/lang/reflect/Method;

    move-object/from16 p1, p24

    .line 25
    iput-object p1, p0, Li2/m;->x:Ljava/lang/reflect/Method;

    move-object/from16 p1, p25

    .line 26
    iput-object p1, p0, Li2/m;->y:Ljava/lang/reflect/Method;

    move-object/from16 p1, p26

    .line 27
    iput-object p1, p0, Li2/m;->z:Ljava/lang/reflect/Method;

    move-object/from16 p1, p27

    .line 28
    iput-object p1, p0, Li2/m;->A:Ljava/lang/reflect/Method;

    move-object/from16 p1, p28

    .line 29
    iput-object p1, p0, Li2/m;->B:Ljava/lang/reflect/Method;

    move-object/from16 p1, p29

    .line 30
    iput-object p1, p0, Li2/m;->C:Ljava/lang/reflect/Method;

    move-object/from16 p1, p30

    .line 31
    iput-object p1, p0, Li2/m;->D:Ljava/lang/reflect/Method;

    move-object/from16 p1, p31

    .line 32
    iput-object p1, p0, Li2/m;->E:Ljava/lang/reflect/Method;

    move-object/from16 p1, p32

    .line 33
    iput-object p1, p0, Li2/m;->F:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Li2/m;

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
    const-string v0, "i2.m"
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
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Li2/m;->c(Ljava/lang/Runnable;)V
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
    .registers 8

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
    goto :goto_54

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Li2/m;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    goto :goto_55

    .line 22
    :cond_15
    iget-object v0, p0, Li2/m;->m:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_13

    .line 28
    if-eqz v1, :cond_1e

    .line 29
    .line 30
    goto :goto_54

    .line 31
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v3, v2, [Ljava/lang/Class;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v0, v3, v4

    .line 40
    .line 41
    new-instance v0, Li2/k;

    .line 42
    .line 43
    new-array v5, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, v5, v4

    .line 46
    .line 47
    invoke-direct {v0, p0, v5, v2}, Li2/k;-><init>(Li2/h;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Li2/m;->b:Ljava/lang/Class;

    .line 55
    .line 56
    iget-object v1, p0, Li2/m;->E:Ljava/lang/reflect/Method;

    .line 57
    .line 58
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_50

    .line 62
    const/4 v5, 0x0

    .line 63
    if-eqz v3, :cond_41

    .line 64
    .line 65
    goto :goto_48

    .line 66
    :cond_41
    :try_start_41
    iget-object v5, p0, Li2/m;->a:Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_44

    .line 67
    .line 68
    goto :goto_48

    .line 69
    :catchall_44
    move-exception v3

    .line 70
    :try_start_45
    invoke-static {v3, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_48
    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p1, v2, v4

    .line 76
    .line 77
    invoke-static {v0, v1, v5, v2}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_50

    .line 78
    .line 79
    .line 80
    goto :goto_54

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    :try_start_51
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_13

    .line 83
    .line 84
    .line 85
    :goto_54
    return-void

    .line 86
    :goto_55
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    goto :goto_52

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "jsonString=\'(.*?)\'"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "compile(...)"

    .line 16
    .line 17
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "matcher(...)"

    .line 25
    .line 26
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_25

    .line 35
    .line 36
    move-object v2, v1

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 39
    .line 40
    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/util/regex/Matcher;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_2a
    if-eqz v2, :cond_52

    .line 44
    .line 45
    iget-object p1, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lk7/d;

    .line 48
    .line 49
    if-nez p1, :cond_39

    .line 50
    .line 51
    new-instance p1, Lk7/d;

    .line 52
    .line 53
    invoke-direct {p1, v2}, Lk7/d;-><init>(Lcom/google/android/gms/internal/measurement/y4;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_39
    iget-object p1, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lk7/d;

    .line 61
    .line 62
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Ls6/h;->j(Ljava/util/List;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v2, 0x1

    .line 70
    if-gt v2, v0, :cond_4c

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lk7/d;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move-object p1, v1

    .line 78
    :goto_4d
    check-cast p1, Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_50

    .line 79
    .line 80
    return-object p1

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    :goto_52
    return-object v1

    .line 84
    :goto_53
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-object v1
.end method

.method public final e(Li2/s;Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 15

    .line 1
    iget-object v0, p0, Li2/m;->j:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v1, p0, Li2/m;->l:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    goto :goto_12

    .line 13
    :cond_c
    :try_start_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_13

    .line 18
    .line 19
    :goto_12
    return-object v3

    .line 20
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    move v6, v5

    .line 31
    :cond_1e
    :goto_1e
    const/4 v7, 0x1

    .line 32
    if-ge v6, v4, :cond_59

    .line 33
    .line 34
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    check-cast v8, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v9, p0, Li2/m;->f:Ljava/lang/Class;

    .line 43
    .line 44
    iget-object v10, p0, Li2/m;->z:Ljava/lang/reflect/Method;

    .line 45
    .line 46
    new-array v11, v5, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v9, v10, v3, v11}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    iget-object v10, p0, Li2/m;->B:Ljava/lang/reflect/Method;

    .line 53
    .line 54
    new-array v11, v7, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v8, v11, v5

    .line 57
    .line 58
    invoke-static {v1, v10, v9, v11}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    iget-object v9, p0, Li2/m;->C:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    iget-object v10, p1, Li2/s;->a:Ljava/lang/String;

    .line 65
    .line 66
    new-array v7, v7, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v10, v7, v5

    .line 69
    .line 70
    invoke-static {v1, v9, v8, v7}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, p0, Li2/m;->A:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    new-array v9, v5, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v1, v8, v7, v9}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v7, :cond_1e

    .line 83
    .line 84
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1e

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    goto :goto_76

    .line 90
    :cond_59
    iget-object p1, p0, Li2/m;->h:Ljava/lang/Class;

    .line 91
    .line 92
    iget-object p2, p0, Li2/m;->w:Ljava/lang/reflect/Method;

    .line 93
    .line 94
    new-array v1, v5, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {p1, p2, v3, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p2, p0, Li2/m;->y:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    new-array v1, v7, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v2, v1, v5

    .line 105
    .line 106
    invoke-static {v0, p2, p1, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Li2/m;->x:Ljava/lang/reflect/Method;

    .line 111
    .line 112
    new-array v1, v5, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {v0, p2, p1, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1
    :try_end_75
    .catchall {:try_start_c .. :try_end_75} :catchall_57

    .line 118
    return-object p1

    .line 119
    :goto_76
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v3
.end method

.method public final f([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7

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
    goto :goto_3e

    .line 8
    :cond_7
    if-eqz p2, :cond_3e

    .line 9
    .line 10
    :try_start_9
    array-length v0, p2

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_3e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    aget-object p2, p2, v0

    .line 16
    .line 17
    iget-object v1, p0, Li2/m;->g:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object v2, p0, Li2/m;->F:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v1, v2, p2, v3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p2, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3e

    .line 36
    .line 37
    sget-object p2, Li2/m;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    array-length p2, p1

    .line 44
    if-nez p2, :cond_2e

    .line 45
    .line 46
    goto :goto_3e

    .line 47
    :cond_2e
    aget-object p1, p1, v0

    .line 48
    .line 49
    instance-of p2, p1, Ljava/lang/Runnable;

    .line 50
    .line 51
    if-eqz p2, :cond_3e

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Runnable;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3a

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public final g([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_71

    .line 10
    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :try_start_b
    invoke-static {v1, p1}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p2, :cond_1a

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v3, p2}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    goto :goto_1b

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto :goto_72

    .line 27
    :cond_1a
    move-object p2, v2

    .line 28
    :goto_1b
    if-eqz p2, :cond_71

    .line 29
    .line 30
    instance-of v3, p2, Ljava/util/List;

    .line 31
    .line 32
    if-nez v3, :cond_22

    .line 33
    .line 34
    goto :goto_71

    .line 35
    :cond_22
    check-cast p2, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :catch_28
    :cond_28
    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_66

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_18

    .line 51
    :try_start_32
    iget-object v4, p0, Li2/m;->d:Ljava/lang/Class;

    .line 52
    .line 53
    iget-object v5, p0, Li2/m;->D:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    new-array v6, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v4, v5, v3, v6}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    instance-of v4, v3, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v4, :cond_43

    .line 64
    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move-object v3, v2

    .line 69
    :goto_44
    if-nez v3, :cond_47

    .line 70
    .line 71
    goto :goto_28

    .line 72
    :cond_47
    invoke-virtual {p0, v3}, Li2/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v3, :cond_4e

    .line 77
    .line 78
    goto :goto_28

    .line 79
    :cond_4e
    new-instance v4, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_28

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v5, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_65} :catch_28
    .catchall {:try_start_32 .. :try_end_65} :catchall_18

    .line 100
    .line 101
    .line 102
    goto :goto_28

    .line 103
    :cond_66
    if-eqz p1, :cond_71

    .line 104
    .line 105
    :try_start_68
    instance-of p2, p1, Ljava/lang/Runnable;

    .line 106
    .line 107
    if-eqz p2, :cond_71

    .line 108
    .line 109
    check-cast p1, Ljava/lang/Runnable;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_18

    .line 112
    .line 113
    .line 114
    :cond_71
    :goto_71
    return-void

    .line 115
    :goto_72
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final h([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 14

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    :cond_8
    :goto_8
    move-object v6, p0

    .line 10
    goto/16 :goto_c9

    .line 11
    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :try_start_c
    invoke-static {v1, p1}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_8

    .line 18
    .line 19
    instance-of v3, v2, Li2/s;

    .line 20
    .line 21
    if-nez v3, :cond_17

    .line 22
    .line 23
    goto :goto_8

    .line 24
    :cond_17
    const/4 v3, 0x1

    .line 25
    invoke-static {v3, p1}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of v4, p1, Ljava/lang/Runnable;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_bc

    .line 30
    .line 31
    if-nez v4, :cond_21

    .line 32
    .line 33
    goto :goto_8

    .line 34
    :cond_21
    const/4 v4, 0x0

    .line 35
    if-eqz p2, :cond_2e

    .line 36
    .line 37
    :try_start_24
    invoke-static {v3, p2}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_29

    .line 41
    goto :goto_2f

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v6, p0

    .line 45
    goto/16 :goto_ca

    .line 46
    .line 47
    :cond_2e
    move-object p2, v4

    .line 48
    :goto_2f
    if-eqz p2, :cond_8

    .line 49
    .line 50
    :try_start_31
    instance-of v3, p2, Ljava/util/List;

    .line 51
    .line 52
    if-nez v3, :cond_36

    .line 53
    .line 54
    goto :goto_8

    .line 55
    :cond_36
    new-instance v9, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    check-cast p2, Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :catch_41
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_bc

    .line 70
    if-eqz v3, :cond_93

    .line 71
    .line 72
    :try_start_47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_29

    .line 76
    :try_start_4b
    iget-object v5, p0, Li2/m;->e:Ljava/lang/Class;

    .line 77
    .line 78
    iget-object v6, p0, Li2/m;->u:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    new-array v7, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v5, v6, v3, v7}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v5, v3, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v5, :cond_5c

    .line 89
    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move-object v3, v4

    .line 94
    :goto_5d
    if-nez v3, :cond_60

    .line 95
    .line 96
    goto :goto_41

    .line 97
    :cond_60
    new-instance v5, Lorg/json/JSONObject;

    .line 98
    .line 99
    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_41

    .line 107
    .line 108
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-object v6, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_7d

    .line 119
    .line 120
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_7d
    sget-object v6, Li2/s;->b:Li2/s;

    .line 127
    .line 128
    if-ne v2, v6, :cond_8a

    .line 129
    .line 130
    sget-object v6, Li2/m;->J:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_41

    .line 139
    :cond_8a
    sget-object v6, Li2/m;->K:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_92} :catch_41
    .catchall {:try_start_4b .. :try_end_92} :catchall_29

    .line 145
    .line 146
    .line 147
    goto :goto_41

    .line 148
    :cond_93
    :try_start_93
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_c0

    .line 153
    .line 154
    move-object v8, v2

    .line 155
    check-cast v8, Li2/s;

    .line 156
    .line 157
    move-object v7, p1

    .line 158
    check-cast v7, Ljava/lang/Runnable;

    .line 159
    .line 160
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1
    :try_end_a3
    .catchall {:try_start_93 .. :try_end_a3} :catchall_bc

    .line 164
    if-eqz p1, :cond_a7

    .line 165
    .line 166
    goto/16 :goto_8

    .line 167
    .line 168
    :cond_a7
    :try_start_a7
    new-instance v5, Lcom/getcapacitor/b;
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_b5

    .line 169
    .line 170
    const/4 v10, 0x2

    .line 171
    move-object v6, p0

    .line 172
    :try_start_ab
    invoke-direct/range {v5 .. v10}, Lcom/getcapacitor/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v5}, Li2/m;->c(Ljava/lang/Runnable;)V
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b2

    .line 176
    .line 177
    .line 178
    goto :goto_c9

    .line 179
    :catchall_b2
    move-exception v0

    .line 180
    :goto_b3
    move-object p1, v0

    .line 181
    goto :goto_b8

    .line 182
    :catchall_b5
    move-exception v0

    .line 183
    move-object v6, p0

    .line 184
    goto :goto_b3

    .line 185
    :goto_b8
    :try_start_b8
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_c9

    .line 189
    :catchall_bc
    move-exception v0

    .line 190
    move-object v6, p0

    .line 191
    :goto_be
    move-object p1, v0

    .line 192
    goto :goto_ca

    .line 193
    :cond_c0
    move-object v6, p0

    .line 194
    check-cast p1, Ljava/lang/Runnable;

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_c6
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_c7

    .line 197
    .line 198
    .line 199
    goto :goto_c9

    .line 200
    :catchall_c7
    move-exception v0

    .line 201
    goto :goto_be

    .line 202
    :goto_c9
    return-void

    .line 203
    :goto_ca
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public final i([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 14

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    :cond_8
    :goto_8
    move-object v6, p0

    .line 10
    goto/16 :goto_c9

    .line 11
    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :try_start_c
    invoke-static {v1, p1}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_8

    .line 18
    .line 19
    instance-of v3, v2, Li2/s;

    .line 20
    .line 21
    if-nez v3, :cond_17

    .line 22
    .line 23
    goto :goto_8

    .line 24
    :cond_17
    const/4 v3, 0x1

    .line 25
    invoke-static {v3, p1}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of v4, p1, Ljava/lang/Runnable;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_bc

    .line 30
    .line 31
    if-nez v4, :cond_21

    .line 32
    .line 33
    goto :goto_8

    .line 34
    :cond_21
    const/4 v4, 0x0

    .line 35
    if-eqz p2, :cond_2e

    .line 36
    .line 37
    :try_start_24
    invoke-static {v3, p2}, Ls6/f;->p(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_29

    .line 41
    goto :goto_2f

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v6, p0

    .line 45
    goto/16 :goto_ca

    .line 46
    .line 47
    :cond_2e
    move-object p2, v4

    .line 48
    :goto_2f
    if-eqz p2, :cond_8

    .line 49
    .line 50
    :try_start_31
    instance-of v3, p2, Ljava/util/List;

    .line 51
    .line 52
    if-nez v3, :cond_36

    .line 53
    .line 54
    goto :goto_8

    .line 55
    :cond_36
    new-instance v9, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    check-cast p2, Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_bc

    .line 70
    if-eqz v3, :cond_93

    .line 71
    .line 72
    :try_start_47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v5, p0, Li2/m;->c:Ljava/lang/Class;

    .line 77
    .line 78
    iget-object v6, p0, Li2/m;->p:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    new-array v7, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v5, v6, v3, v7}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v5, v3, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v5, :cond_5c

    .line 89
    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move-object v3, v4

    .line 94
    :goto_5d
    if-nez v3, :cond_60

    .line 95
    .line 96
    goto :goto_41

    .line 97
    :cond_60
    new-instance v5, Lorg/json/JSONObject;

    .line 98
    .line 99
    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_41

    .line 107
    .line 108
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-object v6, Li2/m;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_7d

    .line 119
    .line 120
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_7d
    sget-object v6, Li2/s;->b:Li2/s;

    .line 127
    .line 128
    if-ne v2, v6, :cond_8a

    .line 129
    .line 130
    sget-object v6, Li2/m;->J:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_41

    .line 139
    :cond_8a
    sget-object v6, Li2/m;->K:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_47 .. :try_end_92} :catchall_29

    .line 145
    .line 146
    .line 147
    goto :goto_41

    .line 148
    :cond_93
    :try_start_93
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_c0

    .line 153
    .line 154
    move-object v8, v2

    .line 155
    check-cast v8, Li2/s;

    .line 156
    .line 157
    move-object v7, p1

    .line 158
    check-cast v7, Ljava/lang/Runnable;

    .line 159
    .line 160
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1
    :try_end_a3
    .catchall {:try_start_93 .. :try_end_a3} :catchall_bc

    .line 164
    if-eqz p1, :cond_a7

    .line 165
    .line 166
    goto/16 :goto_8

    .line 167
    .line 168
    :cond_a7
    :try_start_a7
    new-instance v5, Lcom/getcapacitor/b;
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_b5

    .line 169
    .line 170
    const/4 v10, 0x2

    .line 171
    move-object v6, p0

    .line 172
    :try_start_ab
    invoke-direct/range {v5 .. v10}, Lcom/getcapacitor/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v5}, Li2/m;->c(Ljava/lang/Runnable;)V
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b2

    .line 176
    .line 177
    .line 178
    goto :goto_c9

    .line 179
    :catchall_b2
    move-exception v0

    .line 180
    :goto_b3
    move-object p1, v0

    .line 181
    goto :goto_b8

    .line 182
    :catchall_b5
    move-exception v0

    .line 183
    move-object v6, p0

    .line 184
    goto :goto_b3

    .line 185
    :goto_b8
    :try_start_b8
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_c9

    .line 189
    :catchall_bc
    move-exception v0

    .line 190
    move-object v6, p0

    .line 191
    :goto_be
    move-object p1, v0

    .line 192
    goto :goto_ca

    .line 193
    :cond_c0
    move-object v6, p0

    .line 194
    check-cast p1, Ljava/lang/Runnable;

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_c6
    .catchall {:try_start_b8 .. :try_end_c6} :catchall_c7

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :catchall_c7
    move-exception v0

    .line 201
    goto :goto_be

    .line 202
    :goto_c9
    return-void

    .line 203
    :goto_ca
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
