###### Class l7.u (l7.u)
.class public Ll7/u;
.super Ll7/s0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/f;
.implements Ll7/p;


# instance fields
.field public final c:Lu6/k;


# direct methods
.method public constructor <init>(Lu6/k;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ll7/s0;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Ll7/o;->b:Ll7/o;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Ll7/k0;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ll7/s0;->q(Ll7/k0;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Lu6/k;->s(Lu6/k;)Lu6/k;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Ll7/u;->c:Lu6/k;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_c

    .line 8
    :cond_7
    new-instance p1, Ll7/i;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    :goto_c
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, p1}, Ll7/s0;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ll7/r;->b:Ln6/d;

    .line 22
    .line 23
    if-ne v0, v1, :cond_41

    .line 24
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Job "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " is already complete or completing, but is being completed with "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    instance-of v2, p1, Ll7/i;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_38

    .line 53
    .line 54
    check-cast p1, Ll7/i;

    .line 55
    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move-object p1, v3

    .line 58
    :goto_39
    if-eqz p1, :cond_3d

    .line 59
    .line 60
    iget-object v3, p1, Ll7/i;->a:Ljava/lang/Throwable;

    .line 61
    .line 62
    :cond_3d
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_41
    sget-object v1, Ll7/r;->d:Ln6/d;

    .line 67
    .line 68
    if-eq v0, v1, :cond_c

    .line 69
    .line 70
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getContext()Lu6/k;
    .registers 2

    .line 1
    iget-object v0, p0, Ll7/u;->c:Lu6/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroidx/fragment/app/a0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll7/u;->c:Lu6/k;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ll7/r;->e(Lu6/k;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(Ljava/lang/Object;)V
    .registers 3

    .line 1
    instance-of v0, p1, Ll7/i;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    check-cast p1, Ll7/i;

    .line 6
    .line 7
    sget-object v0, Ll7/i;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method
