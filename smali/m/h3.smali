###### Class m.h3 (m.h3)
.class public final Lm/h3;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lh3/b;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 12

    .line 1
    iget-object v0, p0, Lm/h3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq6/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p0, Lm/h3;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lq6/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lg3/d;

    .line 22
    .line 23
    iget-object v0, p0, Lm/h3;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lq6/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lm3/d;

    .line 33
    .line 34
    iget-object v0, p0, Lm/h3;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lc5/h;

    .line 37
    .line 38
    invoke-virtual {v0}, Lc5/h;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lc5/h;

    .line 44
    .line 45
    iget-object v0, p0, Lm/h3;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lq6/a;

    .line 48
    .line 49
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v6, v0

    .line 54
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    iget-object v0, p0, Lm/h3;->f:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lq6/a;

    .line 59
    .line 60
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v7, v0

    .line 65
    check-cast v7, Ln3/c;

    .line 66
    .line 67
    new-instance v8, Lo3/a;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-direct {v8, v0}, Lo3/a;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lo3/a;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-direct {v9, v0}, Lo3/a;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lm/h3;->g:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lq6/a;

    .line 82
    .line 83
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v10, v0

    .line 88
    check-cast v10, Lm3/c;

    .line 89
    .line 90
    new-instance v1, Ll3/i;

    .line 91
    .line 92
    invoke-direct/range {v1 .. v10}, Ll3/i;-><init>(Landroid/content/Context;Lg3/d;Lm3/d;Lc5/h;Ljava/util/concurrent/Executor;Ln3/c;Lo3/a;Lo3/a;Lm3/c;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method
