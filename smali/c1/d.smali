###### Class c1.d (c1.d)
.class public final Lc1/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lc1/b;->r()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "context.getSystemService\u2026:class.java\n            )"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lc1/b;->q(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lc1/d;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Lc1/a;Lu6/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a;",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ll7/c;

    .line 2
    .line 3
    invoke-static {p2}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lc1/b;->s()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public b(Lu6/f;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll7/c;

    .line 2
    .line 3
    invoke-static {p1}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lc1/d;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance v1, Lc1/c;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lf0/d;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lf0/d;-><init>(Ll7/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lc1/b;->x(Landroid/adservices/measurement/MeasurementManager;Lc1/c;Landroid/os/OutcomeReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ll7/c;->k()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public c(Landroid/net/Uri;Landroid/view/InputEvent;Lu6/f;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll7/c;

    .line 2
    .line 3
    invoke-static {p3}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {v0, p3}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lc1/d;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance v1, Lc1/c;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lf0/d;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lf0/d;-><init>(Ll7/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1, p2, v1, v2}, Lc1/b;->u(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Lc1/c;Landroid/os/OutcomeReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ll7/c;->k()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p2, Lv6/a;->a:Lv6/a;

    .line 33
    .line 34
    if-ne p1, p2, :cond_24

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_24
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 38
    .line 39
    return-object p1
.end method

.method public d(Landroid/net/Uri;Lu6/f;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll7/c;

    .line 2
    .line 3
    invoke-static {p2}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p2}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lc1/d;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance v1, Lc1/c;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lf0/d;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lf0/d;-><init>(Ll7/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1, v1, v2}, Lc1/b;->v(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Lc1/c;Landroid/os/OutcomeReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ll7/c;->k()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p2, Lv6/a;->a:Lv6/a;

    .line 33
    .line 34
    if-ne p1, p2, :cond_24

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_24
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 38
    .line 39
    return-object p1
.end method

.method public e(Lc1/e;Lu6/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e;",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ll7/c;

    .line 2
    .line 3
    invoke-static {p2}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lc1/b;->y()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public f(Lc1/f;Lu6/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/f;",
            "Lu6/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ll7/c;

    .line 2
    .line 3
    invoke-static {p2}, La2/c;->g(Lu6/f;)Lu6/f;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Ll7/c;-><init>(Lu6/f;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ll7/c;->l()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lc1/b;->z()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method
