###### Class com.google.firebase.messaging.FirebaseMessagingRegistrar (com.google.firebase.messaging.FirebaseMessagingRegistrar)
.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fcm"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lv4/p;Lcom/google/firebase/messaging/y;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lv4/p;Lv4/c;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lv4/p;Lv4/c;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    const-class v1, Lt4/g;

    .line 4
    .line 5
    invoke-interface {p1, v1}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lt4/g;

    .line 10
    .line 11
    const-class v2, Lf5/a;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_37

    .line 18
    .line 19
    const-class v2, Lo5/b;

    .line 20
    .line 21
    invoke-interface {p1, v2}, Lv4/c;->f(Ljava/lang/Class;)Lg5/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-class v3, Le5/g;

    .line 26
    .line 27
    invoke-interface {p1, v3}, Lv4/c;->f(Ljava/lang/Class;)Lg5/a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v4, Lh5/e;

    .line 32
    .line 33
    invoke-interface {p1, v4}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lh5/e;

    .line 38
    .line 39
    invoke-interface {p1, p0}, Lv4/c;->c(Lv4/p;)Lg5/a;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-class p0, Ld5/d;

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    move-object v6, p0

    .line 50
    check-cast v6, Ld5/d;

    .line 51
    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lt4/g;Lg5/a;Lg5/a;Lh5/e;Lg5/a;Ld5/d;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/ClassCastException;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv4/p;

    .line 2
    .line 3
    const-class v1, Lx4/b;

    .line 4
    .line 5
    const-class v2, Lc3/e;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 11
    .line 12
    invoke-static {v1}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "fire-fcm"

    .line 17
    .line 18
    iput-object v2, v1, Lv4/a;->a:Ljava/lang/String;

    .line 19
    .line 20
    const-class v3, Lt4/g;

    .line 21
    .line 22
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lv4/h;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const-class v5, Lf5/a;

    .line 33
    .line 34
    invoke-direct {v3, v4, v4, v5}, Lv4/h;-><init>(IILjava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lv4/h;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const-class v6, Lo5/b;

    .line 44
    .line 45
    invoke-direct {v3, v4, v5, v6}, Lv4/h;-><init>(IILjava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lv4/h;

    .line 52
    .line 53
    const-class v6, Le5/g;

    .line 54
    .line 55
    invoke-direct {v3, v4, v5, v6}, Lv4/h;-><init>(IILjava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 59
    .line 60
    .line 61
    const-class v3, Lh5/e;

    .line 62
    .line 63
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lv4/h;

    .line 71
    .line 72
    invoke-direct {v3, v0, v4, v5}, Lv4/h;-><init>(Lv4/p;II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 76
    .line 77
    .line 78
    const-class v3, Ld5/d;

    .line 79
    .line 80
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lcom/google/firebase/messaging/q;

    .line 88
    .line 89
    invoke-direct {v3, v0, v4}, Lcom/google/firebase/messaging/q;-><init>(Lv4/p;I)V

    .line 90
    .line 91
    .line 92
    iput-object v3, v1, Lv4/a;->f:Lv4/d;

    .line 93
    .line 94
    iget v0, v1, Lv4/a;->d:I

    .line 95
    .line 96
    if-nez v0, :cond_63

    .line 97
    .line 98
    move v0, v5

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v0, v4

    .line 101
    :goto_64
    if-eqz v0, :cond_7e

    .line 102
    .line 103
    iput v5, v1, Lv4/a;->d:I

    .line 104
    .line 105
    invoke-virtual {v1}, Lv4/a;->b()Lv4/b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "24.0.2"

    .line 110
    .line 111
    invoke-static {v2, v1}, Lm1/j;->e(Ljava/lang/String;Ljava/lang/String;)Lv4/b;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x2

    .line 116
    new-array v2, v2, [Lv4/b;

    .line 117
    .line 118
    aput-object v0, v2, v4

    .line 119
    .line 120
    aput-object v1, v2, v5

    .line 121
    .line 122
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v1, "Instantiation type has already been set."

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0
.end method
