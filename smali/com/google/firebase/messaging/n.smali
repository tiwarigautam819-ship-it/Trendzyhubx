###### Class com.google.firebase.messaging.n (com.google.firebase.messaging.n)
.class public final synthetic Lcom/google/firebase/messaging/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/firebase/messaging/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/n;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/n;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 7
    .line 8
    check-cast p1, Lu3/a;

    .line 9
    .line 10
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/messaging/b0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_18

    .line 16
    .line 17
    iget-object p1, p1, Lu3/a;->a:Landroid/content/Intent;

    .line 18
    .line 19
    invoke-static {p1}, Lz7/d;->g(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lcom/google/firebase/messaging/n;->b:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 27
    .line 28
    check-cast p1, Lcom/google/firebase/messaging/g0;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/p;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/firebase/messaging/p;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3c

    .line 37
    .line 38
    iget-object v0, p1, Lcom/google/firebase/messaging/g0;->h:Lcom/google/firebase/messaging/e0;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/messaging/e0;->a()Lcom/google/firebase/messaging/d0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3c

    .line 45
    .line 46
    monitor-enter p1

    .line 47
    :try_start_2e
    iget-boolean v0, p1, Lcom/google/firebase/messaging/g0;->g:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_39

    .line 48
    .line 49
    monitor-exit p1

    .line 50
    if-nez v0, :cond_3c

    .line 51
    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/messaging/g0;->h(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_3c

    .line 58
    :catchall_39
    move-exception v0

    .line 59
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .line 60
    throw v0

    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method
