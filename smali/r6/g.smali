###### Class r6.g (r6.g)
.class public final Lr6/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lr6/c;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ld7/h;

.field public volatile b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc7/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Ld7/h;

    .line 5
    .line 6
    iput-object p1, p0, Lr6/g;->a:Ld7/h;

    .line 7
    .line 8
    sget-object p1, Lr6/h;->a:Lr6/h;

    .line 9
    .line 10
    iput-object p1, p0, Lr6/g;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p0, p0, Lr6/g;->c:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ld7/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ld7/k;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lr6/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lr6/h;->a:Lr6/h;

    .line 4
    .line 5
    if-eq v0, v1, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lr6/g;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    iget-object v2, p0, Lr6/g;->b:Ljava/lang/Object;

    .line 12
    .line 13
    if-eq v2, v1, :cond_f

    .line 14
    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    iget-object v1, p0, Lr6/g;->a:Ld7/h;

    .line 17
    .line 18
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lc7/a;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Lr6/g;->b:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lr6/g;->a:Ld7/h;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    .line 29
    .line 30
    :goto_1d
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lr6/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lr6/h;->a:Lr6/h;

    .line 4
    .line 5
    if-eq v0, v1, :cond_f

    .line 6
    .line 7
    invoke-virtual {p0}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const-string v0, "Lazy value not initialized yet."

    .line 17
    .line 18
    return-object v0
.end method
