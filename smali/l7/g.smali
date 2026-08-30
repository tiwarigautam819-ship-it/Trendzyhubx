###### Class l7.g (l7.g)
.class public final Ll7/g;
.super Ll7/m0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll7/f;


# instance fields
.field public final e:Ll7/s0;


# direct methods
.method public constructor <init>(Ll7/s0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lp7/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/g;->e:Ll7/s0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Throwable;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ll7/o0;->n()Ll7/s0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_15

    .line 10
    :cond_9
    invoke-virtual {v0, p1}, Ll7/s0;->d(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_17

    .line 15
    .line 16
    invoke-virtual {v0}, Ll7/s0;->l()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_17

    .line 21
    .line 22
    :goto_15
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ll7/g;->o(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final o(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Ll7/g;->e:Ll7/s0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll7/o0;->n()Ll7/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ll7/s0;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
