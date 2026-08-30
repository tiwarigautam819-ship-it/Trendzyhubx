###### Class h5.g (h5.g)
.class public final Lh5/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh5/j;


# instance fields
.field public final a:Lh5/k;

.field public final b:Lp4/j;


# direct methods
.method public constructor <init>(Lh5/k;Lp4/j;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh5/g;->a:Lh5/k;

    .line 5
    .line 6
    iput-object p2, p0, Lh5/g;->b:Lp4/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Li5/b;)Z
    .registers 9

    .line 1
    iget v0, p1, Li5/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_29

    .line 5
    .line 6
    iget-object v0, p0, Lh5/g;->a:Lh5/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh5/k;->a(Li5/b;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_29

    .line 13
    .line 14
    iget-object v2, p1, Li5/b;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_21

    .line 17
    .line 18
    iget-wide v3, p1, Li5/b;->e:J

    .line 19
    .line 20
    iget-wide v5, p1, Li5/b;->f:J

    .line 21
    .line 22
    new-instance v1, Lh5/a;

    .line 23
    .line 24
    invoke-direct/range {v1 .. v6}, Lh5/a;-><init>(Ljava/lang/String;JJ)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lh5/g;->b:Lp4/j;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lp4/j;->a(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    .line 35
    .line 36
    const-string v0, "Null token"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lh5/g;->b:Lp4/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp4/j;->b(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
