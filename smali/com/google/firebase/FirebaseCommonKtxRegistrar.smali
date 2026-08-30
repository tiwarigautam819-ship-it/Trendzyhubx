###### Class com.google.firebase.FirebaseCommonKtxRegistrar (com.google.firebase.FirebaseCommonKtxRegistrar)
.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


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


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 10
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
    const-class v1, Lu4/a;

    .line 4
    .line 5
    const-class v2, Ll7/n;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v3, Lv4/p;

    .line 15
    .line 16
    const-class v4, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-direct {v3, v1, v4}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lv4/h;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-direct {v1, v3, v5, v6}, Lv4/h;-><init>(Lv4/p;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lv4/a;->a(Lv4/h;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lt4/h;->b:Lt4/h;

    .line 32
    .line 33
    iput-object v1, v0, Lv4/a;->f:Lv4/d;

    .line 34
    .line 35
    invoke-virtual {v0}, Lv4/a;->b()Lv4/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lv4/p;

    .line 40
    .line 41
    const-class v3, Lu4/c;

    .line 42
    .line 43
    invoke-direct {v1, v3, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v7, Lv4/p;

    .line 51
    .line 52
    invoke-direct {v7, v3, v4}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lv4/h;

    .line 56
    .line 57
    invoke-direct {v3, v7, v5, v6}, Lv4/h;-><init>(Lv4/p;II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lv4/a;->a(Lv4/h;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lt4/h;->c:Lt4/h;

    .line 64
    .line 65
    iput-object v3, v1, Lv4/a;->f:Lv4/d;

    .line 66
    .line 67
    invoke-virtual {v1}, Lv4/a;->b()Lv4/b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Lv4/p;

    .line 72
    .line 73
    const-class v7, Lu4/b;

    .line 74
    .line 75
    invoke-direct {v3, v7, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v8, Lv4/p;

    .line 83
    .line 84
    invoke-direct {v8, v7, v4}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    new-instance v7, Lv4/h;

    .line 88
    .line 89
    invoke-direct {v7, v8, v5, v6}, Lv4/h;-><init>(Lv4/p;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v7}, Lv4/a;->a(Lv4/h;)V

    .line 93
    .line 94
    .line 95
    sget-object v7, Lt4/h;->d:Lt4/h;

    .line 96
    .line 97
    iput-object v7, v3, Lv4/a;->f:Lv4/d;

    .line 98
    .line 99
    invoke-virtual {v3}, Lv4/a;->b()Lv4/b;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v7, Lv4/p;

    .line 104
    .line 105
    const-class v8, Lu4/d;

    .line 106
    .line 107
    invoke-direct {v7, v8, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v7}, Lv4/b;->b(Lv4/p;)Lv4/a;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v7, Lv4/p;

    .line 115
    .line 116
    invoke-direct {v7, v8, v4}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Lv4/h;

    .line 120
    .line 121
    invoke-direct {v4, v7, v5, v6}, Lv4/h;-><init>(Lv4/p;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lv4/a;->a(Lv4/h;)V

    .line 125
    .line 126
    .line 127
    sget-object v4, Lt4/h;->e:Lt4/h;

    .line 128
    .line 129
    iput-object v4, v2, Lv4/a;->f:Lv4/d;

    .line 130
    .line 131
    invoke-virtual {v2}, Lv4/a;->b()Lv4/b;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v4, 0x4

    .line 136
    new-array v4, v4, [Lv4/b;

    .line 137
    .line 138
    aput-object v0, v4, v6

    .line 139
    .line 140
    aput-object v1, v4, v5

    .line 141
    .line 142
    const/4 v0, 0x2

    .line 143
    aput-object v3, v4, v0

    .line 144
    .line 145
    const/4 v0, 0x3

    .line 146
    aput-object v2, v4, v0

    .line 147
    .line 148
    invoke-static {v4}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0
.end method
