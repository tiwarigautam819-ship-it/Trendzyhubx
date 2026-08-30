###### Class l7.n (l7.n)
.class public abstract Ll7/n;
.super Lu6/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/h;


# static fields
.field public static final b:Ll7/m;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll7/m;

    .line 2
    .line 3
    sget-object v1, Lu6/g;->a:Lu6/g;

    .line 4
    .line 5
    sget-object v2, Ll7/l;->b:Ll7/l;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ll7/m;-><init>(Lu6/j;Lc7/l;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ll7/n;->b:Ll7/m;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lu6/g;->a:Lu6/g;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lu6/a;-><init>(Lu6/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Lu6/j;)Lu6/i;
    .registers 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ll7/m;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_22

    .line 10
    .line 11
    check-cast p1, Ll7/m;

    .line 12
    .line 13
    iget-object v0, p0, Lu6/a;->a:Lu6/j;

    .line 14
    .line 15
    if-eq v0, p1, :cond_16

    .line 16
    .line 17
    iget-object v2, p1, Ll7/m;->b:Lu6/j;

    .line 18
    .line 19
    if-ne v2, v0, :cond_15

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    return-object v1

    .line 23
    :cond_16
    :goto_16
    iget-object p1, p1, Ll7/m;->a:Ld7/h;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lu6/i;

    .line 30
    .line 31
    if-eqz p1, :cond_21

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_21
    return-object v1

    .line 35
    :cond_22
    sget-object v0, Lu6/g;->a:Lu6/g;

    .line 36
    .line 37
    if-ne v0, p1, :cond_27

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_27
    return-object v1
.end method

.method public final o(Lu6/j;)Lu6/k;
    .registers 4

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ll7/m;

    .line 7
    .line 8
    if-eqz v0, :cond_20

    .line 9
    .line 10
    check-cast p1, Ll7/m;

    .line 11
    .line 12
    iget-object v0, p0, Lu6/a;->a:Lu6/j;

    .line 13
    .line 14
    if-eq v0, p1, :cond_15

    .line 15
    .line 16
    iget-object v1, p1, Ll7/m;->b:Lu6/j;

    .line 17
    .line 18
    if-ne v1, v0, :cond_14

    .line 19
    .line 20
    goto :goto_15

    .line 21
    :cond_14
    return-object p0

    .line 22
    :cond_15
    :goto_15
    iget-object p1, p1, Ll7/m;->a:Ld7/h;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lu6/i;

    .line 29
    .line 30
    if-eqz p1, :cond_27

    .line 31
    .line 32
    goto :goto_24

    .line 33
    :cond_20
    sget-object v0, Lu6/g;->a:Lu6/g;

    .line 34
    .line 35
    if-ne v0, p1, :cond_27

    .line 36
    .line 37
    :goto_24
    sget-object p1, Lu6/l;->a:Lu6/l;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_27
    return-object p0
.end method

.method public abstract t(Lu6/k;Ljava/lang/Runnable;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ll7/r;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public u()Z
    .registers 2

    .line 1
    instance-of v0, p0, Ll7/y0;

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method
