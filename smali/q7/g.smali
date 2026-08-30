###### Class q7.g (q7.g)
.class public abstract Lq7/g;
.super Ll7/d0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public c:Lq7/b;


# virtual methods
.method public final t(Lu6/k;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lq7/g;->c:Lq7/b;

    .line 2
    .line 3
    sget-object v0, Lq7/b;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    sget-object v0, Lq7/j;->g:Lf4/j;

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lq7/b;->c(Ljava/lang/Runnable;Lf4/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
