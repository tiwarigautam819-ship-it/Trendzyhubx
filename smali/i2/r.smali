###### Class i2.r (i2.r)
.class public final Li2/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final g:Li2/p;

.field public static h:Li2/r;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Li2/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/r;->g:Li2/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li2/r;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Li2/r;->b:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Li2/r;->c:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object p4, p0, Li2/r;->d:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    iput-object p5, p0, Li2/r;->e:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    iput-object p6, p0, Li2/r;->f:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Li2/s;Ljava/util/ArrayList;)Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Li2/r;->b:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    goto :goto_34

    .line 11
    :cond_a
    :try_start_a
    iget-object v1, p0, Li2/r;->a:Ljava/lang/Class;

    .line 12
    .line 13
    iget-object v3, p0, Li2/r;->c:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    new-array v5, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v1, v3, v2, v5}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_18

    .line 23
    .line 24
    goto :goto_34

    .line 25
    :cond_18
    iget-object v3, p0, Li2/r;->d:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    iget-object p1, p1, Li2/s;->a:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    new-array v6, v5, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p1, v6, v4

    .line 33
    .line 34
    invoke-static {v0, v3, v1, v6}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_28

    .line 39
    .line 40
    goto :goto_34

    .line 41
    :cond_28
    iget-object v1, p0, Li2/r;->e:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    new-array v3, v5, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p2, v3, v4

    .line 46
    .line 47
    invoke-static {v0, v1, p1, v3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_35

    .line 52
    .line 53
    :goto_34
    return-object v2

    .line 54
    :cond_35
    iget-object p2, p0, Li2/r;->f:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    new-array v1, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v0, p2, p1, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_3e

    .line 62
    return-object p1

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v2
.end method
