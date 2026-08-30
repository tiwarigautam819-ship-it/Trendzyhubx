###### Class t5.b (t5.b)
.class public final Lt5/b;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lt5/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lt5/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lt5/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt5/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt5/b;->c:Lt5/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lt5/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt5/o;

    invoke-direct {v0, p1, p2, p3}, Lt5/o;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    iput-object v0, p0, Lt5/b;->b:Lt5/o;

    return-void
.end method

.method public constructor <init>(Lq5/l;Lq5/x;Ljava/lang/Class;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lt5/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lt5/o;

    invoke-direct {v0, p3, p1, p2}, Lt5/o;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    iput-object v0, p0, Lt5/b;->b:Lt5/o;

    return-void
.end method

.method public constructor <init>(Lt5/c;Lq5/l;Ljava/lang/reflect/Type;Lq5/x;Ljava/lang/reflect/Type;Lq5/x;)V
    .registers 7

    const/4 p1, 0x2

    iput p1, p0, Lt5/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lt5/o;

    invoke-direct {p1, p3, p2, p4}, Lt5/o;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    .line 7
    new-instance p1, Lt5/o;

    invoke-direct {p1, p5, p2, p6}, Lt5/o;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    iput-object p1, p0, Lt5/b;->b:Lt5/o;

    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Lt5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_80

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/util/Map;

    .line 7
    .line 8
    if-nez p2, :cond_d

    .line 9
    .line 10
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 11
    .line 12
    .line 13
    goto :goto_3c

    .line 14
    :cond_d
    invoke-virtual {p1}, Lx5/a;->g()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_39

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lx5/a;->u(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lt5/b;->b:Lt5/o;

    .line 53
    .line 54
    invoke-virtual {v1, p1, v0}, Lt5/o;->a(Lx5/a;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_18

    .line 58
    :cond_39
    invoke-virtual {p1}, Lx5/a;->t()V

    .line 59
    .line 60
    .line 61
    :goto_3c
    return-void

    .line 62
    :pswitch_3d
    check-cast p2, Ljava/util/Collection;

    .line 63
    .line 64
    if-nez p2, :cond_45

    .line 65
    .line 66
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 67
    .line 68
    .line 69
    goto :goto_5f

    .line 70
    :cond_45
    invoke-virtual {p1}, Lx5/a;->c()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5c

    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lt5/b;->b:Lt5/o;

    .line 88
    .line 89
    invoke-virtual {v1, p1, v0}, Lt5/o;->a(Lx5/a;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4c

    .line 93
    :cond_5c
    invoke-virtual {p1}, Lx5/a;->s()V

    .line 94
    .line 95
    .line 96
    :goto_5f
    return-void

    .line 97
    :pswitch_60
    if-nez p2, :cond_66

    .line 98
    .line 99
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 100
    .line 101
    .line 102
    goto :goto_7f

    .line 103
    :cond_66
    invoke-virtual {p1}, Lx5/a;->c()V

    .line 104
    .line 105
    .line 106
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v1, 0x0

    .line 111
    :goto_6e
    if-ge v1, v0, :cond_7c

    .line 112
    .line 113
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v3, p0, Lt5/b;->b:Lt5/o;

    .line 118
    .line 119
    invoke-virtual {v3, p1, v2}, Lt5/o;->a(Lx5/a;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_6e

    .line 125
    :cond_7c
    invoke-virtual {p1}, Lx5/a;->s()V

    .line 126
    .line 127
    .line 128
    :goto_7f
    return-void

    .line 129
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_60
        :pswitch_3d
    .end packed-switch
.end method
