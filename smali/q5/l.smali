###### Class q5.l (q5.l)
.class public final Lq5/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lp4/p;

.field public final d:Lt5/c;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>()V
    .registers 13

    .line 1
    sget-object v1, Ls5/g;->c:Ls5/g;

    .line 2
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 3
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    sget-object v9, Lq5/w;->a:Lq5/s;

    sget-object v10, Lq5/w;->b:Lq5/t;

    .line 5
    sget-object v2, Lq5/h;->a:Lq5/a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v11, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lq5/l;-><init>(Ls5/g;Lq5/a;Ljava/util/Map;ZZZILjava/util/List;Lq5/s;Lq5/t;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ls5/g;Lq5/a;Ljava/util/Map;ZZZILjava/util/List;Lq5/s;Lq5/t;Ljava/util/List;)V
    .registers 13

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lq5/l;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lq5/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, p3

    move-object p3, p2

    .line 9
    new-instance p2, Lp4/p;

    invoke-direct {p2, v0, p6, p11}, Lp4/p;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object p2, p0, Lq5/l;->c:Lp4/p;

    .line 10
    iput-boolean p4, p0, Lq5/l;->f:Z

    .line 11
    iput-boolean p5, p0, Lq5/l;->g:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object p4, Lt5/s;->z:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p4, Lq5/w;->a:Lq5/s;

    if-ne p9, p4, :cond_2f

    .line 15
    sget-object p4, Lt5/i;->b:Lt5/a;

    goto :goto_34

    .line 16
    :cond_2f
    new-instance p4, Lt5/a;

    invoke-direct {p4, p9}, Lt5/a;-><init>(Lq5/w;)V

    .line 17
    :goto_34
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    sget-object p4, Lt5/s;->p:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p4, Lt5/s;->g:Lt5/q;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p4, Lt5/s;->d:Lt5/q;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p4, Lt5/s;->e:Lt5/q;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p4, Lt5/s;->f:Lt5/q;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    if-ne p7, p4, :cond_5c

    .line 25
    sget-object p4, Lt5/s;->k:Lt5/h;

    goto :goto_62

    .line 26
    :cond_5c
    new-instance p4, Lq5/i;

    const/4 p5, 0x2

    .line 27
    invoke-direct {p4, p5}, Lq5/i;-><init>(I)V

    .line 28
    :goto_62
    new-instance p5, Lt5/q;

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-direct {p5, p6, p7, p4}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 29
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance p5, Lq5/i;

    const/4 p6, 0x0

    .line 31
    invoke-direct {p5, p6}, Lq5/i;-><init>(I)V

    .line 32
    new-instance p6, Lt5/q;

    sget-object p7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Double;

    invoke-direct {p6, p7, p8, p5}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 33
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p5, Lq5/i;

    const/4 p6, 0x1

    .line 35
    invoke-direct {p5, p6}, Lq5/i;-><init>(I)V

    .line 36
    new-instance p6, Lt5/q;

    sget-object p7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Float;

    invoke-direct {p6, p7, p8, p5}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 37
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object p5, Lq5/w;->b:Lq5/t;

    if-ne p10, p5, :cond_99

    .line 39
    sget-object p5, Lt5/h;->b:Lt5/g;

    goto :goto_a6

    .line 40
    :cond_99
    new-instance p5, Lt5/h;

    const/4 p6, 0x0

    .line 41
    invoke-direct {p5, p6}, Lt5/h;-><init>(I)V

    .line 42
    new-instance p6, Lt5/g;

    const/4 p7, 0x0

    invoke-direct {p6, p5, p7}, Lt5/g;-><init>(Lq5/x;I)V

    move-object p5, p6

    .line 43
    :goto_a6
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object p5, Lt5/s;->h:Lt5/p;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p5, Lt5/s;->i:Lt5/p;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p5, Lq5/j;

    const/4 p6, 0x0

    invoke-direct {p5, p4, p6}, Lq5/j;-><init>(Lq5/x;I)V

    .line 47
    new-instance p6, Lq5/j;

    const/4 p7, 0x2

    invoke-direct {p6, p5, p7}, Lq5/j;-><init>(Lq5/x;I)V

    .line 48
    new-instance p5, Lt5/p;

    const/4 p7, 0x0

    const-class p8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, p8, p6, p7}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 49
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p5, Lq5/j;

    const/4 p6, 0x1

    invoke-direct {p5, p4, p6}, Lq5/j;-><init>(Lq5/x;I)V

    .line 51
    new-instance p4, Lq5/j;

    const/4 p6, 0x2

    invoke-direct {p4, p5, p6}, Lq5/j;-><init>(Lq5/x;I)V

    .line 52
    new-instance p5, Lt5/p;

    const/4 p6, 0x0

    const-class p7, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p5, p7, p4, p6}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 53
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object p4, Lt5/s;->j:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p4, Lt5/s;->l:Lt5/q;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object p4, Lt5/s;->q:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p4, Lt5/s;->r:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p4, Lt5/s;->m:Lt5/h;

    .line 59
    new-instance p5, Lt5/p;

    const-class p7, Ljava/math/BigDecimal;

    invoke-direct {p5, p7, p4, p6}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 60
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object p4, Lt5/s;->n:Lt5/h;

    .line 62
    new-instance p5, Lt5/p;

    const-class p7, Ljava/math/BigInteger;

    invoke-direct {p5, p7, p4, p6}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 63
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p4, Lt5/s;->o:Lt5/h;

    .line 65
    new-instance p5, Lt5/p;

    const-class p7, Ls5/i;

    invoke-direct {p5, p7, p4, p6}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 66
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object p4, Lt5/s;->s:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object p4, Lt5/s;->t:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object p4, Lt5/s;->v:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p4, Lt5/s;->w:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object p4, Lt5/s;->y:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p4, Lt5/s;->u:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object p4, Lt5/s;->b:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object p4, Lt5/d;->c:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p4, Lt5/s;->x:Lt5/g;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-boolean p4, Lv5/c;->a:Z

    if-eqz p4, :cond_159

    .line 77
    sget-object p4, Lv5/c;->e:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object p4, Lv5/c;->d:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object p4, Lv5/c;->f:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_159
    sget-object p4, Lt5/b;->c:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object p4, Lt5/s;->a:Lt5/p;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p4, Lt5/c;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5}, Lt5/c;-><init>(Lp4/p;I)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p4, Lt5/c;

    const/4 p5, 0x2

    invoke-direct {p4, p2, p5}, Lt5/c;-><init>(Lp4/p;I)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p5, Lt5/c;

    const/4 p4, 0x1

    invoke-direct {p5, p2, p4}, Lt5/c;-><init>(Lp4/p;I)V

    iput-object p5, p0, Lq5/l;->d:Lt5/c;

    .line 85
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object p4, Lt5/s;->A:Lt5/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, p1

    .line 87
    new-instance p1, Lt5/n;

    move-object p6, p11

    invoke-direct/range {p1 .. p6}, Lt5/n;-><init>(Lp4/p;Lq5/h;Ls5/g;Lt5/c;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq5/l;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public final b(Lw5/a;)Lq5/x;
    .registers 10

    .line 1
    iget-object v0, p0, Lq5/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lq5/x;

    .line 8
    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    iget-object v1, p0, Lq5/l;->a:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Map;

    .line 19
    .line 20
    if-nez v2, :cond_1f

    .line 21
    .line 22
    new-instance v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lq5/x;

    .line 37
    .line 38
    if-eqz v3, :cond_28

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_28
    const/4 v3, 0x0

    .line 42
    :goto_29
    :try_start_29
    new-instance v4, Lq5/k;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    iput-object v5, v4, Lq5/k;->a:Lq5/x;

    .line 49
    .line 50
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v6, p0, Lq5/l;->e:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :cond_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_60

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lq5/y;

    .line 70
    .line 71
    invoke-interface {v5, p0, p1}, Lq5/y;->a(Lq5/l;Lw5/a;)Lq5/x;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_3a

    .line 76
    .line 77
    iget-object v6, v4, Lq5/k;->a:Lq5/x;

    .line 78
    .line 79
    if-nez v6, :cond_58

    .line 80
    .line 81
    iput-object v5, v4, Lq5/k;->a:Lq5/x;

    .line 82
    .line 83
    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_60

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    goto :goto_81

    .line 89
    :cond_58
    new-instance p1, Ljava/lang/AssertionError;

    .line 90
    .line 91
    const-string v0, "Delegate is already set"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw p1
    :try_end_60
    .catchall {:try_start_29 .. :try_end_60} :catchall_56

    .line 97
    :cond_60
    :goto_60
    if-eqz v3, :cond_65

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 100
    .line 101
    .line 102
    :cond_65
    if-eqz v5, :cond_6d

    .line 103
    .line 104
    if-eqz v3, :cond_6c

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    return-object v5

    .line 110
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "GSON (2.10.1) cannot handle "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :goto_81
    if-eqz v3, :cond_86

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 133
    .line 134
    .line 135
    :cond_86
    throw p1
.end method

.method public final c(Ljava/io/Writer;)Lx5/a;
    .registers 3

    .line 1
    new-instance v0, Lx5/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lx5/a;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lq5/l;->g:Z

    .line 7
    .line 8
    iput-boolean p1, v0, Lx5/a;->f:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Lx5/a;->e:Z

    .line 12
    .line 13
    iget-boolean p1, p0, Lq5/l;->f:Z

    .line 14
    .line 15
    iput-boolean p1, v0, Lx5/a;->h:Z

    .line 16
    .line 17
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 1
    if-nez p1, :cond_1a

    .line 2
    .line 3
    new-instance p1, Ljava/io/StringWriter;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0, p1}, Lq5/l;->c(Ljava/io/Writer;)Lx5/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lq5/l;->f(Lx5/a;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_13

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :catch_13
    move-exception p1

    .line 21
    new-instance v0, Landroidx/fragment/app/a0;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/StringWriter;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 34
    .line 35
    .line 36
    :try_start_23
    invoke-virtual {p0, v1}, Lq5/l;->c(Ljava/io/Writer;)Lx5/a;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, p1, v0, v2}, Lq5/l;->e(Ljava/lang/Object;Ljava/lang/Class;Lx5/a;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2a} :catch_2f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    new-instance v0, Landroidx/fragment/app/a0;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Class;Lx5/a;)V
    .registers 9

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    new-instance v1, Lw5/a;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-boolean v1, p3, Lx5/a;->e:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p3, Lx5/a;->e:Z

    .line 16
    .line 17
    iget-boolean v2, p3, Lx5/a;->f:Z

    .line 18
    .line 19
    iget-boolean v3, p0, Lq5/l;->g:Z

    .line 20
    .line 21
    iput-boolean v3, p3, Lx5/a;->f:Z

    .line 22
    .line 23
    iget-boolean v3, p3, Lx5/a;->h:Z

    .line 24
    .line 25
    iget-boolean v4, p0, Lq5/l;->f:Z

    .line 26
    .line 27
    iput-boolean v4, p3, Lx5/a;->h:Z

    .line 28
    .line 29
    :try_start_1c
    invoke-virtual {p2, p3, p1}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_3f
    .catch Ljava/lang/AssertionError; {:try_start_1c .. :try_end_1f} :catch_28
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 30
    .line 31
    .line 32
    iput-boolean v1, p3, Lx5/a;->e:Z

    .line 33
    .line 34
    iput-boolean v2, p3, Lx5/a;->f:Z

    .line 35
    .line 36
    iput-boolean v3, p3, Lx5/a;->h:Z

    .line 37
    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_46

    .line 41
    :catch_28
    move-exception p1

    .line 42
    :try_start_29
    new-instance p2, Ljava/lang/AssertionError;

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :catch_3f
    move-exception p1

    .line 65
    new-instance p2, Landroidx/fragment/app/a0;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p2
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_26

    .line 71
    :goto_46
    iput-boolean v1, p3, Lx5/a;->e:Z

    .line 72
    .line 73
    iput-boolean v2, p3, Lx5/a;->f:Z

    .line 74
    .line 75
    iput-boolean v3, p3, Lx5/a;->h:Z

    .line 76
    .line 77
    throw p1
.end method

.method public final f(Lx5/a;)V
    .registers 9

    .line 1
    sget-object v0, Lq5/p;->a:Lq5/p;

    .line 2
    .line 3
    const-string v1, "AssertionError (GSON 2.10.1): "

    .line 4
    .line 5
    iget-boolean v2, p1, Lx5/a;->e:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p1, Lx5/a;->e:Z

    .line 9
    .line 10
    iget-boolean v3, p1, Lx5/a;->f:Z

    .line 11
    .line 12
    iget-boolean v4, p0, Lq5/l;->g:Z

    .line 13
    .line 14
    iput-boolean v4, p1, Lx5/a;->f:Z

    .line 15
    .line 16
    iget-boolean v4, p1, Lx5/a;->h:Z

    .line 17
    .line 18
    iget-boolean v5, p0, Lq5/l;->f:Z

    .line 19
    .line 20
    iput-boolean v5, p1, Lx5/a;->h:Z

    .line 21
    .line 22
    :try_start_15
    sget-object v5, Lt5/s;->a:Lt5/p;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lt5/h;->b(Lx5/a;Lq5/o;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_23
    .catch Ljava/lang/AssertionError; {:try_start_15 .. :try_end_1a} :catch_21
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3b

    .line 25
    .line 26
    .line 27
    iput-boolean v2, p1, Lx5/a;->e:Z

    .line 28
    .line 29
    iput-boolean v3, p1, Lx5/a;->f:Z

    .line 30
    .line 31
    iput-boolean v4, p1, Lx5/a;->h:Z

    .line 32
    .line 33
    return-void

    .line 34
    :catch_21
    move-exception v0

    .line 35
    goto :goto_25

    .line 36
    :catch_23
    move-exception v0

    .line 37
    goto :goto_3d

    .line 38
    :goto_25
    :try_start_25
    new-instance v5, Ljava/lang/AssertionError;

    .line 39
    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v5, v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v5

    .line 60
    :catchall_3b
    move-exception v0

    .line 61
    goto :goto_43

    .line 62
    :goto_3d
    new-instance v1, Landroidx/fragment/app/a0;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v1
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_3b

    .line 68
    :goto_43
    iput-boolean v2, p1, Lx5/a;->e:Z

    .line 69
    .line 70
    iput-boolean v3, p1, Lx5/a;->f:Z

    .line 71
    .line 72
    iput-boolean v4, p1, Lx5/a;->h:Z

    .line 73
    .line 74
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lq5/l;->f:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",factories:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lq5/l;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",instanceCreators:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lq5/l;->c:Lp4/p;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
