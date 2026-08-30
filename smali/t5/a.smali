###### Class t5.a (t5.a)
.class public final Lt5/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq5/y;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lt5/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq5/w;)V
    .registers 2

    const/4 p1, 0x2

    iput p1, p0, Lt5/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq5/l;Lw5/a;)Lq5/x;
    .registers 5

    .line 1
    iget v0, p0, Lt5/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_b0

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 7
    .line 8
    const-class v0, Ljava/sql/Timestamp;

    .line 9
    .line 10
    if-ne p2, v0, :cond_1c

    .line 11
    .line 12
    new-instance p2, Lw5/a;

    .line 13
    .line 14
    const-class v0, Ljava/util/Date;

    .line 15
    .line 16
    invoke-direct {p2, v0}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lv5/a;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lv5/a;-><init>(Lq5/x;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p2, 0x0

    .line 30
    :goto_1d
    return-object p2

    .line 31
    :pswitch_1e
    iget-object p1, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 32
    .line 33
    const-class p2, Ljava/sql/Time;

    .line 34
    .line 35
    if-ne p1, p2, :cond_2b

    .line 36
    .line 37
    new-instance p1, Lv5/a;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-direct {p1, p2}, Lv5/a;-><init>(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 p1, 0x0

    .line 45
    :goto_2c
    return-object p1

    .line 46
    :pswitch_2d
    iget-object p1, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 47
    .line 48
    const-class p2, Ljava/sql/Date;

    .line 49
    .line 50
    if-ne p1, p2, :cond_3a

    .line 51
    .line 52
    new-instance p1, Lv5/a;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-direct {p1, p2}, Lv5/a;-><init>(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 p1, 0x0

    .line 60
    :goto_3b
    return-object p1

    .line 61
    :pswitch_3c
    iget-object p1, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 62
    .line 63
    const-class p2, Ljava/lang/Enum;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_59

    .line 70
    .line 71
    if-ne p1, p2, :cond_49

    .line 72
    .line 73
    goto :goto_59

    .line 74
    :cond_49
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_53

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_53
    new-instance p2, Lt5/o;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lt5/o;-><init>(Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    :goto_59
    const/4 p2, 0x0

    .line 91
    :goto_5a
    return-object p2

    .line 92
    :pswitch_5b
    iget-object p2, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 93
    .line 94
    const-class v0, Ljava/lang/Object;

    .line 95
    .line 96
    if-ne p2, v0, :cond_67

    .line 97
    .line 98
    new-instance p2, Lt5/i;

    .line 99
    .line 100
    invoke-direct {p2, p1}, Lt5/i;-><init>(Lq5/l;)V

    .line 101
    .line 102
    .line 103
    goto :goto_68

    .line 104
    :cond_67
    const/4 p2, 0x0

    .line 105
    :goto_68
    return-object p2

    .line 106
    :pswitch_69
    iget-object p1, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 107
    .line 108
    const-class p2, Ljava/util/Date;

    .line 109
    .line 110
    if-ne p1, p2, :cond_75

    .line 111
    .line 112
    new-instance p1, Lt5/d;

    .line 113
    .line 114
    invoke-direct {p1}, Lt5/d;-><init>()V

    .line 115
    .line 116
    .line 117
    goto :goto_76

    .line 118
    :cond_75
    const/4 p1, 0x0

    .line 119
    :goto_76
    return-object p1

    .line 120
    :pswitch_77
    iget-object p2, p2, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 121
    .line 122
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 123
    .line 124
    if-nez v0, :cond_8c

    .line 125
    .line 126
    instance-of v1, p2, Ljava/lang/Class;

    .line 127
    .line 128
    if-eqz v1, :cond_8a

    .line 129
    .line 130
    move-object v1, p2

    .line 131
    check-cast v1, Ljava/lang/Class;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_8c

    .line 138
    .line 139
    :cond_8a
    const/4 p1, 0x0

    .line 140
    goto :goto_ae

    .line 141
    :cond_8c
    if-eqz v0, :cond_95

    .line 142
    .line 143
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 144
    .line 145
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_9b

    .line 150
    :cond_95
    check-cast p2, Ljava/lang/Class;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    :goto_9b
    new-instance v0, Lw5/a;

    .line 157
    .line 158
    invoke-direct {v0, p2}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Lt5/b;

    .line 166
    .line 167
    invoke-static {p2}, Ls5/d;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {v1, p1, v0, p2}, Lt5/b;-><init>(Lq5/l;Lq5/x;Ljava/lang/Class;)V

    .line 172
    .line 173
    .line 174
    move-object p1, v1

    .line 175
    :goto_ae
    return-object p1

    .line 176
    nop

    .line 177
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_77
        :pswitch_69
        :pswitch_5b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
