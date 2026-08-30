###### Class x7.b (x7.b)
.class public abstract Lx7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/w;


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
    iput-object p1, p0, Lx7/b;->c:Li5/a;

    .line 5
    .line 6
    new-instance v0, Le8/k;

    .line 7
    .line 8
    iget-object p1, p1, Li5/a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Le8/i;

    .line 11
    .line 12
    invoke-interface {p1}, Le8/w;->b()Le8/y;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Le8/k;-><init>(Le8/y;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lx7/b;->a:Le8/k;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lx7/b;->c:Li5/a;

    .line 2
    .line 3
    iget v1, v0, Li5/a;->a:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    if-ne v1, v2, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v3, 0x5

    .line 10
    if-ne v1, v3, :cond_1c

    .line 11
    .line 12
    iget-object v1, p0, Lx7/b;->a:Le8/k;

    .line 13
    .line 14
    iget-object v3, v1, Le8/k;->e:Le8/y;

    .line 15
    .line 16
    sget-object v4, Le8/y;->d:Le8/x;

    .line 17
    .line 18
    iput-object v4, v1, Le8/k;->e:Le8/y;

    .line 19
    .line 20
    invoke-virtual {v3}, Le8/y;->a()Le8/y;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Le8/y;->b()Le8/y;

    .line 24
    .line 25
    .line 26
    iput v2, v0, Li5/a;->a:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "state: "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v0, v0, Li5/a;->a:I

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lx7/b;->a:Le8/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(JLe8/g;)J
    .registers 6

    .line 1
    iget-object v0, p0, Lx7/b;->c:Li5/a;

    .line 2
    .line 3
    const-string v1, "sink"

    .line 4
    .line 5
    invoke-static {v1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_7
    iget-object v1, v0, Li5/a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Le8/i;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2, p3}, Le8/w;->h(JLe8/g;)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    .line 16
    return-wide p1

    .line 17
    :catch_10
    move-exception p1

    .line 18
    iget-object p2, v0, Li5/a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Lv7/l;

    .line 21
    .line 22
    invoke-virtual {p2}, Lv7/l;->l()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
