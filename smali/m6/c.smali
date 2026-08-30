###### Class m6.c (m6.c)
.class public final synthetic Lm6/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm6/f;


# direct methods
.method public synthetic constructor <init>(Lm6/f;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm6/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm6/c;->b:Lm6/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget p1, p0, Lm6/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_64

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm6/c;->b:Lm6/f;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_1b

    .line 10
    .line 11
    if-eqz p3, :cond_17

    .line 12
    .line 13
    array-length v0, p3

    .line 14
    if-lez v0, :cond_17

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object p3, p3, v0

    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object p3, p2

    .line 25
    :goto_18
    invoke-interface {p1, p3}, Lm6/f;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-object p2

    .line 29
    :pswitch_1c
    iget-object p1, p0, Lm6/c;->b:Lm6/f;

    .line 30
    .line 31
    check-cast p1, Lm6/a;

    .line 32
    .line 33
    const-string p2, "getAdid"

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p3, :cond_42

    .line 37
    .line 38
    :try_start_25
    array-length v1, p3

    .line 39
    if-lez v1, :cond_42

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    aget-object v2, p3, v1

    .line 43
    .line 44
    if-eqz v2, :cond_42

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    aget-object p3, p3, v1

    .line 55
    .line 56
    invoke-virtual {v2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-eqz p3, :cond_42

    .line 61
    .line 62
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_42

    .line 66
    goto :goto_43

    .line 67
    :catchall_42
    :cond_42
    move-object p3, v0

    .line 68
    :goto_43
    if-eqz p3, :cond_4f

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5f

    .line 79
    .line 80
    :cond_4f
    :try_start_4f
    sget-object v1, Lm6/d;->a:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-virtual {v1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_5f

    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_5f

    .line 96
    :catchall_5f
    :cond_5f
    :try_start_5f
    invoke-virtual {p1, p3}, Lm6/a;->a(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_62

    .line 97
    .line 98
    .line 99
    :catchall_62
    return-object v0

    .line 100
    nop

    .line 101
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method
