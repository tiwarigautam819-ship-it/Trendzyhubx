###### Class l7.p0 (l7.p0)
.class public final Ll7/p0;
.super Ll7/o0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final e:Ll7/s0;

.field public final f:Ll7/q0;

.field public final g:Ll7/g;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll7/s0;Ll7/q0;Ll7/g;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lp7/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/p0;->e:Ll7/s0;

    .line 5
    .line 6
    iput-object p2, p0, Ll7/p0;->f:Ll7/q0;

    .line 7
    .line 8
    iput-object p3, p0, Ll7/p0;->g:Ll7/g;

    .line 9
    .line 10
    iput-object p4, p0, Ll7/p0;->h:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ll7/p0;->o(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final o(Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    iget-object p1, p0, Ll7/p0;->g:Ll7/g;

    .line 2
    .line 3
    invoke-static {p1}, Ll7/s0;->t(Lp7/j;)Ll7/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ll7/p0;->e:Ll7/s0;

    .line 8
    .line 9
    iget-object v1, p0, Ll7/p0;->f:Ll7/q0;

    .line 10
    .line 11
    iget-object v2, p0, Ll7/p0;->h:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_25

    .line 14
    .line 15
    :cond_e
    iget-object v3, p1, Ll7/g;->e:Ll7/s0;

    .line 16
    .line 17
    new-instance v4, Ll7/p0;

    .line 18
    .line 19
    invoke-direct {v4, v0, v1, p1, v2}, Ll7/p0;-><init>(Ll7/s0;Ll7/q0;Ll7/g;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-static {v3, v4, v5}, Ll7/r;->f(Ll7/k0;Ll7/o0;I)Ll7/y;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Ll7/u0;->a:Ll7/u0;

    .line 28
    .line 29
    if-eq v3, v4, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-static {p1}, Ll7/s0;->t(Lp7/j;)Ll7/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_e

    .line 37
    .line 38
    :cond_25
    invoke-virtual {v0, v1, v2}, Ll7/s0;->j(Ll7/q0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method
