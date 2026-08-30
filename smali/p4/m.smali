###### Class p4.m (p4.m)
.class public final Lp4/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/o;
.implements Lp4/f;
.implements Lp4/e;
.implements Lp4/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lp4/a;

.field public final d:Lp4/q;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lp4/a;Lp4/q;I)V
    .registers 5

    .line 1
    iput p4, p0, Lp4/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp4/m;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p2, p0, Lp4/m;->c:Lp4/a;

    .line 6
    .line 7
    iput-object p3, p0, Lp4/m;->d:Lp4/q;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp4/m;->d:Lp4/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp4/q;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lp4/i;)V
    .registers 5

    .line 1
    iget v0, p0, Lp4/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls4/b;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lp4/m;->b:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    new-instance v0, Ls4/b;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, p0, p1, v1, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lp4/m;->b:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/m;->d:Lp4/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/m;->d:Lp4/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp4/q;->m(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
