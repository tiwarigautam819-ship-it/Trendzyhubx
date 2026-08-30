###### Class com.google.firebase.datatransport.TransportRegistrar (com.google.firebase.datatransport.TransportRegistrar)
.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


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

.method public static synthetic a(Lcom/google/firebase/messaging/y;)Lc3/e;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$2(Lv4/c;)Lc3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/y;)Lc3/e;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$1(Lv4/c;)Lc3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/messaging/y;)Lc3/e;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lv4/c;)Lc3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lv4/c;)Lc3/e;
    .registers 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lf3/q;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lf3/q;->a()Lf3/q;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Ld3/a;->f:Ld3/a;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lf3/q;->c(Lf3/k;)Lf3/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static synthetic lambda$getComponents$1(Lv4/c;)Lc3/e;
    .registers 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lf3/q;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lf3/q;->a()Lf3/q;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Ld3/a;->f:Ld3/a;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lf3/q;->c(Lf3/k;)Lf3/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static synthetic lambda$getComponents$2(Lv4/c;)Lc3/e;
    .registers 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lf3/q;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lf3/q;->a()Lf3/q;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Ld3/a;->e:Ld3/a;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lf3/q;->c(Lf3/k;)Lf3/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
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
    const-class v0, Lc3/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "fire-transport"

    .line 8
    .line 9
    iput-object v2, v1, Lv4/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v3, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v1, v4}, Lv4/a;->a(Lv4/h;)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lx1/q;

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    invoke-direct {v4, v5}, Lx1/q;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v4, v1, Lv4/a;->f:Lv4/d;

    .line 27
    .line 28
    invoke-virtual {v1}, Lv4/a;->b()Lv4/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Lv4/p;

    .line 33
    .line 34
    const-class v6, Lx4/a;

    .line 35
    .line 36
    invoke-direct {v4, v6, v0}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v4, v6}, Lv4/a;->a(Lv4/h;)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Lx1/q;

    .line 51
    .line 52
    const/4 v7, 0x5

    .line 53
    invoke-direct {v6, v7}, Lx1/q;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v6, v4, Lv4/a;->f:Lv4/d;

    .line 57
    .line 58
    invoke-virtual {v4}, Lv4/a;->b()Lv4/b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    new-instance v6, Lv4/p;

    .line 63
    .line 64
    const-class v7, Lx4/b;

    .line 65
    .line 66
    invoke-direct {v6, v7, v0}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v6}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v3}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v0, v3}, Lv4/a;->a(Lv4/h;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lx1/q;

    .line 81
    .line 82
    const/4 v6, 0x6

    .line 83
    invoke-direct {v3, v6}, Lx1/q;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object v3, v0, Lv4/a;->f:Lv4/d;

    .line 87
    .line 88
    invoke-virtual {v0}, Lv4/a;->b()Lv4/b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v3, "18.2.0"

    .line 93
    .line 94
    invoke-static {v2, v3}, Lm1/j;->e(Ljava/lang/String;Ljava/lang/String;)Lv4/b;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    new-array v3, v5, [Lv4/b;

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    aput-object v1, v3, v5

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    aput-object v4, v3, v1

    .line 105
    .line 106
    const/4 v1, 0x2

    .line 107
    aput-object v0, v3, v1

    .line 108
    .line 109
    const/4 v0, 0x3

    .line 110
    aput-object v2, v3, v0

    .line 111
    .line 112
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method
