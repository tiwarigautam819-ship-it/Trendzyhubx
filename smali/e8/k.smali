###### Class e8.k (e8.k)
.class public final Le8/k;
.super Le8/y;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public e:Le8/y;


# direct methods
.method public constructor <init>(Le8/y;)V
    .registers 3

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le8/k;->e:Le8/y;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/y;->a()Le8/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/y;->b()Le8/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/y;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(J)Le8/y;
    .registers 4

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Le8/y;->d(J)Le8/y;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/y;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/y;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(J)Le8/y;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string v1, "unit"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Le8/k;->e:Le8/y;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Le8/y;->g(J)Le8/y;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
