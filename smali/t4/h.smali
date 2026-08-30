###### Class t4.h (t4.h)
.class public final Lt4/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lv4/d;


# static fields
.field public static final b:Lt4/h;

.field public static final c:Lt4/h;

.field public static final d:Lt4/h;

.field public static final e:Lt4/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lt4/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt4/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt4/h;->b:Lt4/h;

    .line 8
    .line 9
    new-instance v0, Lt4/h;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lt4/h;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lt4/h;->c:Lt4/h;

    .line 16
    .line 17
    new-instance v0, Lt4/h;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lt4/h;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lt4/h;->d:Lt4/h;

    .line 24
    .line 25
    new-instance v0, Lt4/h;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lt4/h;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lt4/h;->e:Lt4/h;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lt4/h;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lv4/c;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lt4/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_76

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv4/p;

    .line 7
    .line 8
    const-class v1, Lu4/d;

    .line 9
    .line 10
    const-class v2, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->d(Lv4/p;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    .line 22
    .line 23
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v0, Ll7/e0;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ll7/e0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_21
    new-instance v0, Lv4/p;

    .line 35
    .line 36
    const-class v1, Lu4/b;

    .line 37
    .line 38
    const-class v2, Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->d(Lv4/p;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    .line 50
    .line 51
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    new-instance v0, Ll7/e0;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Ll7/e0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_3d
    new-instance v0, Lv4/p;

    .line 63
    .line 64
    const-class v1, Lu4/c;

    .line 65
    .line 66
    const-class v2, Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->d(Lv4/p;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    .line 78
    .line 79
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    new-instance v0, Ll7/e0;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Ll7/e0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :pswitch_59
    new-instance v0, Lv4/p;

    .line 91
    .line 92
    const-class v1, Lu4/a;

    .line 93
    .line 94
    const-class v2, Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    invoke-direct {v0, v1, v2}, Lv4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->d(Lv4/p;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    .line 106
    .line 107
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 111
    .line 112
    new-instance v0, Ll7/e0;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Ll7/e0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    nop

    .line 119
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_59
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method
