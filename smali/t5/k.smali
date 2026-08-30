###### Class t5.k (t5.k)
.class public abstract Lt5/k;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/k;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-nez p2, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p1}, Lx5/a;->g()V

    .line 8
    .line 9
    .line 10
    :try_start_9
    iget-object v0, p0, Lt5/k;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_25

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lt5/j;

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Lt5/j;->a(Lx5/a;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_23

    .line 33
    .line 34
    .line 35
    goto :goto_13

    .line 36
    :catch_23
    move-exception p1

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    invoke-virtual {p1}, Lx5/a;->t()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_29
    sget-object p2, Lu5/c;->a:Lm1/j;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    const-string v0, "Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    .line 47
    .line 48
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method
