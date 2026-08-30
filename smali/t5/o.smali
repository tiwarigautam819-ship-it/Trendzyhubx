###### Class t5.o (t5.o)
.class public final Lt5/o;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 13

    const/4 v0, 0x1

    iput v0, p0, Lt5/o;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/o;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/o;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/o;->d:Ljava/lang/Object;

    .line 5
    :try_start_1b
    new-instance v0, Lt5/r;

    invoke-direct {v0, p1}, Lt5/r;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_29
    if-ge v2, v0, :cond_78

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    const-class v7, Lr5/b;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lr5/b;

    if-eqz v3, :cond_60

    .line 11
    invoke-interface {v3}, Lr5/b;->value()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-interface {v3}, Lr5/b;->alternate()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v1

    :goto_50
    if-ge v8, v7, :cond_60

    aget-object v9, v3, v8

    .line 13
    iget-object v10, p0, Lt5/o;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :catch_5e
    move-exception p1

    goto :goto_79

    .line 14
    :cond_60
    iget-object v3, p0, Lt5/o;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lt5/o;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, p0, Lt5/o;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_75} :catch_5e

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_78
    return-void

    .line 17
    :goto_79
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lt5/o;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lt5/o;->b:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lt5/o;->c:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lt5/o;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Lt5/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_68

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Enum;

    .line 7
    .line 8
    if-nez p2, :cond_b

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    goto :goto_15

    .line 12
    :cond_b
    iget-object v0, p0, Lt5/o;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    .line 21
    .line 22
    :goto_15
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lt5/o;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lq5/x;

    .line 29
    .line 30
    iget-object v1, p0, Lt5/o;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/reflect/Type;

    .line 33
    .line 34
    if-eqz p2, :cond_30

    .line 35
    .line 36
    instance-of v2, v1, Ljava/lang/Class;

    .line 37
    .line 38
    if-nez v2, :cond_2b

    .line 39
    .line 40
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    .line 41
    .line 42
    if-eqz v2, :cond_30

    .line 43
    .line 44
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object v2, v1

    .line 50
    :goto_31
    if-eq v2, v1, :cond_64

    .line 51
    .line 52
    iget-object v1, p0, Lt5/o;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lq5/l;

    .line 55
    .line 56
    new-instance v3, Lw5/a;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    instance-of v2, v1, Lt5/k;

    .line 66
    .line 67
    if-nez v2, :cond_45

    .line 68
    .line 69
    goto :goto_63

    .line 70
    :cond_45
    move-object v2, v0

    .line 71
    :goto_46
    instance-of v3, v2, Lq5/k;

    .line 72
    .line 73
    if-eqz v3, :cond_5e

    .line 74
    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Lq5/k;

    .line 77
    .line 78
    iget-object v3, v3, Lq5/k;->a:Lq5/x;

    .line 79
    .line 80
    if-eqz v3, :cond_56

    .line 81
    .line 82
    if-ne v3, v2, :cond_54

    .line 83
    .line 84
    goto :goto_5e

    .line 85
    :cond_54
    move-object v2, v3

    .line 86
    goto :goto_46

    .line 87
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p2, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_5e
    :goto_5e
    instance-of v2, v2, Lt5/k;

    .line 96
    .line 97
    if-nez v2, :cond_63

    .line 98
    .line 99
    goto :goto_64

    .line 100
    :cond_63
    :goto_63
    move-object v0, v1

    .line 101
    :cond_64
    :goto_64
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method
