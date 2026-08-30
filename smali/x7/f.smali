###### Class x7.f (x7.f)
.class public final Lx7/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/u;


# instance fields
.field public final a:Le8/k;

.field public b:Z

.field public final synthetic c:Li5/a;


# direct methods
.method public constructor <init>(Li5/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx7/f;->c:Li5/a;

    .line 5
    .line 6
    new-instance v0, Le8/k;

    .line 7
    .line 8
    iget-object p1, p1, Li5/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Le8/h;

    .line 11
    .line 12
    invoke-interface {p1}, Le8/u;->b()Le8/y;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Le8/k;-><init>(Le8/y;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lx7/f;->a:Le8/k;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lx7/f;->a:Le8/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lx7/f;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lx7/f;->b:Z

    .line 8
    .line 9
    iget-object v0, p0, Lx7/f;->a:Le8/k;

    .line 10
    .line 11
    iget-object v1, v0, Le8/k;->e:Le8/y;

    .line 12
    .line 13
    sget-object v2, Le8/y;->d:Le8/x;

    .line 14
    .line 15
    iput-object v2, v0, Le8/k;->e:Le8/y;

    .line 16
    .line 17
    invoke-virtual {v1}, Le8/y;->a()Le8/y;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Le8/y;->b()Le8/y;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    iget-object v1, p0, Lx7/f;->c:Li5/a;

    .line 25
    .line 26
    iput v0, v1, Li5/a;->a:I

    .line 27
    .line 28
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lx7/f;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lx7/f;->c:Li5/a;

    .line 7
    .line 8
    iget-object v0, v0, Li5/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Le8/h;

    .line 11
    .line 12
    invoke-interface {v0}, Le8/h;->flush()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(JLe8/g;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lx7/f;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_16

    .line 4
    .line 5
    iget-wide v1, p3, Le8/g;->b:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    move-wide v5, p1

    .line 10
    invoke-static/range {v1 .. v6}, Ls7/b;->c(JJJ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lx7/f;->c:Li5/a;

    .line 14
    .line 15
    iget-object p1, p1, Li5/a;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Le8/h;

    .line 18
    .line 19
    invoke-interface {p1, v5, v6, p3}, Le8/u;->n(JLe8/g;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string p2, "closed"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
