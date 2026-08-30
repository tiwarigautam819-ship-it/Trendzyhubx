###### Class l7.n0 (l7.n0)
.class public final Ll7/n0;
.super Ll7/s0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ll7/s0;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Ll7/s0;->q(Ll7/k0;)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ll7/f;

    .line 16
    .line 17
    instance-of v4, v3, Ll7/g;

    .line 18
    .line 19
    if-eqz v4, :cond_17

    .line 20
    .line 21
    check-cast v3, Ll7/g;

    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object v3, v1

    .line 25
    :goto_18
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3b

    .line 27
    .line 28
    invoke-virtual {v3}, Ll7/o0;->n()Ll7/s0;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_1f
    invoke-virtual {v3}, Ll7/s0;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_26

    .line 37
    .line 38
    goto :goto_3c

    .line 39
    :cond_26
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ll7/f;

    .line 44
    .line 45
    instance-of v5, v3, Ll7/g;

    .line 46
    .line 47
    if-eqz v5, :cond_33

    .line 48
    .line 49
    check-cast v3, Ll7/g;

    .line 50
    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move-object v3, v1

    .line 53
    :goto_34
    if-eqz v3, :cond_3b

    .line 54
    .line 55
    invoke-virtual {v3}, Ll7/o0;->n()Ll7/s0;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    goto :goto_1f

    .line 60
    :cond_3b
    move v0, v4

    .line 61
    :goto_3c
    iput-boolean v0, p0, Ll7/n0;->c:Z

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ll7/n0;->c:Z

    .line 2
    .line 3
    return v0
.end method
