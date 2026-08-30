###### Class m6.a (m6.a)
.class public final synthetic Lm6/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm6/e;


# direct methods
.method public synthetic constructor <init>(Lm6/e;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm6/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm6/a;->b:Lm6/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget v0, p0, Lm6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm6/a;->b:Lm6/e;

    .line 7
    .line 8
    sput-object p1, Lm6/g;->b:Ljava/lang/String;

    .line 9
    .line 10
    :try_start_9
    sget-object p1, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_e

    .line 13
    .line 14
    .line 15
    :catchall_e
    if-eqz v0, :cond_15

    .line 16
    .line 17
    sget-object p1, Lm6/g;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lm6/e;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void

    .line 23
    :pswitch_16
    iget-object v0, p0, Lm6/a;->b:Lm6/e;

    .line 24
    .line 25
    sput-object p1, Lm6/g;->b:Ljava/lang/String;

    .line 26
    .line 27
    :try_start_1a
    sget-object v1, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 30
    .line 31
    .line 32
    :catchall_1f
    if-eqz v0, :cond_30

    .line 33
    .line 34
    if-eqz p1, :cond_30

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_30

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lm6/e;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method
