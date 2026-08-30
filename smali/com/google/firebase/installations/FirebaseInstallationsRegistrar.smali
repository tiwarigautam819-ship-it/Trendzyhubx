###### Class com.google.firebase.installations.FirebaseInstallationsRegistrar (com.google.firebase.installations.FirebaseInstallationsRegistrar)
.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


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

.method public static synthetic a(Lcom/google/firebase/messaging/y;)Lh5/e;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lv4/c;)Lh5/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static lambda$getComponents$0(Lv4/c;)Lh5/e;
    .registers 8

    .line 1
    new-instance v0, Lh5/d;

    .line 2
    .line 3
    const-class v1, Lt4/g;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lt4/g;

    .line 10
    .line 11
    const-class v2, Le5/f;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lv4/c;->f(Ljava/lang/Class;)Lg5/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lv4/p;

    .line 18
    .line 19
    const-class v4, Lu4/a;

    .line 20
    .line 21
    const-class v5, Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-direct {v3, v4, v5}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v3}, Lv4/c;->d(Lv4/p;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    new-instance v4, Lv4/p;

    .line 33
    .line 34
    const-class v5, Lu4/b;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-direct {v4, v5, v6}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v4}, Lv4/c;->d(Lv4/p;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    new-instance v4, Lw4/i;

    .line 48
    .line 49
    invoke-direct {v4, p0}, Lw4/i;-><init>(Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2, v3, v4}, Lh5/d;-><init>(Lt4/g;Lg5/a;Ljava/util/concurrent/ExecutorService;Lw4/i;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh5/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-installations"

    .line 8
    .line 9
    iput-object v1, v0, Lv4/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Lt4/g;

    .line 12
    .line 13
    invoke-static {v2}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lv4/a;->a(Lv4/h;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lv4/h;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const-class v5, Le5/f;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4, v5}, Lv4/h;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lv4/a;->a(Lv4/h;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lv4/p;

    .line 33
    .line 34
    const-class v5, Lu4/a;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-direct {v2, v5, v6}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lv4/h;

    .line 42
    .line 43
    invoke-direct {v5, v2, v4, v3}, Lv4/h;-><init>(Lv4/p;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Lv4/a;->a(Lv4/h;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lv4/p;

    .line 50
    .line 51
    const-class v5, Lu4/b;

    .line 52
    .line 53
    const-class v6, Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    invoke-direct {v2, v5, v6}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lv4/h;

    .line 59
    .line 60
    invoke-direct {v5, v2, v4, v3}, Lv4/h;-><init>(Lv4/p;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lv4/a;->a(Lv4/h;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/getcapacitor/n;

    .line 67
    .line 68
    const/4 v5, 0x7

    .line 69
    invoke-direct {v2, v5}, Lcom/getcapacitor/n;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lv4/a;->f:Lv4/d;

    .line 73
    .line 74
    invoke-virtual {v0}, Lv4/a;->b()Lv4/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v2, Le5/e;

    .line 79
    .line 80
    invoke-direct {v2, v3}, Le5/e;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const-class v5, Le5/e;

    .line 84
    .line 85
    invoke-static {v5}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iput v4, v5, Lv4/a;->e:I

    .line 90
    .line 91
    new-instance v6, Lcom/google/firebase/messaging/j0;

    .line 92
    .line 93
    const/16 v7, 0xb

    .line 94
    .line 95
    invoke-direct {v6, v7, v2}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iput-object v6, v5, Lv4/a;->f:Lv4/d;

    .line 99
    .line 100
    invoke-virtual {v5}, Lv4/a;->b()Lv4/b;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v5, "18.0.0"

    .line 105
    .line 106
    invoke-static {v1, v5}, Lm1/j;->e(Ljava/lang/String;Ljava/lang/String;)Lv4/b;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v5, 0x3

    .line 111
    new-array v5, v5, [Lv4/b;

    .line 112
    .line 113
    aput-object v0, v5, v3

    .line 114
    .line 115
    aput-object v2, v5, v4

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    aput-object v1, v5, v0

    .line 119
    .line 120
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method
