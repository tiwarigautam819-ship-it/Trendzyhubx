###### Class com.google.firebase.messaging.q (com.google.firebase.messaging.q)
.class public final synthetic Lcom/google/firebase/messaging/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lv4/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv4/p;


# direct methods
.method public synthetic constructor <init>(Lv4/p;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/firebase/messaging/q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/q;->b:Lv4/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Lv4/c;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_40

    .line 4
    .line 5
    .line 6
    new-instance v1, Le5/d;

    .line 7
    .line 8
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    const-class v0, Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Landroid/content/Context;

    .line 18
    .line 19
    const-class v0, Lt4/g;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lt4/g;

    .line 26
    .line 27
    invoke-virtual {v0}, Lt4/g;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v0, Le5/e;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->D(Ljava/lang/Class;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-class v0, Lo5/b;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->f(Ljava/lang/Class;)Lg5/a;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Lv4/p;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->d(Lv4/p;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object v6, p1

    .line 50
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Le5/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lg5/a;Ljava/util/concurrent/Executor;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :pswitch_37
    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Lv4/p;

    .line 57
    .line 58
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(Lv4/p;Lcom/google/firebase/messaging/y;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_37
    .end packed-switch
.end method
