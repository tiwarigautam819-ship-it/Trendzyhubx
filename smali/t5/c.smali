###### Class t5.c (t5.c)
.class public final Lt5/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq5/y;


# instance fields
.field public final synthetic a:I

.field public final b:Lp4/p;


# direct methods
.method public synthetic constructor <init>(Lp4/p;I)V
    .registers 3

    .line 1
    iput p2, p0, Lt5/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt5/c;->b:Lp4/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b(Lp4/p;Lq5/l;Lw5/a;Lr5/a;)Lq5/x;
    .registers 6

    .line 1
    invoke-interface {p3}, Lr5/a;->value()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lw5/a;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lp4/p;->c(Lw5/a;)Ls5/n;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ls5/n;->m()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p3}, Lr5/a;->nullSafe()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    instance-of v0, p0, Lq5/x;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    check-cast p0, Lq5/x;

    .line 27
    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    instance-of v0, p0, Lq5/y;

    .line 30
    .line 31
    if-eqz v0, :cond_32

    .line 32
    .line 33
    check-cast p0, Lq5/y;

    .line 34
    .line 35
    invoke-interface {p0, p1, p2}, Lq5/y;->a(Lq5/l;Lw5/a;)Lq5/x;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_26
    if-eqz p0, :cond_31

    .line 40
    .line 41
    if-eqz p3, :cond_31

    .line 42
    .line 43
    new-instance p1, Lq5/j;

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    invoke-direct {p1, p0, p2}, Lq5/j;-><init>(Lq5/x;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_31
    return-object p0

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "Invalid attempt to bind an instance of "

    .line 56
    .line 57
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, " as a @JsonAdapter for "

    .line 72
    .line 73
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p0, p2, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 77
    .line 78
    invoke-static {p0}, Ls5/d;->j(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    .line 86
    .line 87
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method


# virtual methods
.method public final a(Lq5/l;Lw5/a;)Lq5/x;
    .registers 15

    .line 1
    iget v3, p0, Lt5/c;->a:I

    .line 2
    .line 3
    const-class v4, Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v5, p0, Lt5/c;->b:Lp4/p;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    packed-switch v3, :pswitch_data_ea

    .line 10
    .line 11
    .line 12
    iget-object v3, p2, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 13
    .line 14
    iget-object v8, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 15
    .line 16
    const-class v9, Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    if-nez v10, :cond_19

    .line 23
    .line 24
    goto/16 :goto_8b

    .line 25
    .line 26
    :cond_19
    const-class v6, Ljava/util/Properties;

    .line 27
    .line 28
    const/4 v10, 0x2

    .line 29
    const/4 v11, 0x1

    .line 30
    if-ne v3, v6, :cond_28

    .line 31
    .line 32
    new-array v3, v10, [Ljava/lang/reflect/Type;

    .line 33
    .line 34
    const-class v4, Ljava/lang/String;

    .line 35
    .line 36
    aput-object v4, v3, v7

    .line 37
    .line 38
    aput-object v4, v3, v11

    .line 39
    .line 40
    goto :goto_59

    .line 41
    :cond_28
    instance-of v6, v3, Ljava/lang/reflect/WildcardType;

    .line 42
    .line 43
    if-eqz v6, :cond_34

    .line 44
    .line 45
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    aget-object v3, v3, v7

    .line 52
    .line 53
    :cond_34
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-static {v6}, Ls5/d;->b(Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v8, v9}, Ls5/d;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    new-instance v9, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v8, v6, v9}, Ls5/d;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    .line 74
    .line 75
    if-eqz v6, :cond_53

    .line 76
    .line 77
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    new-array v3, v10, [Ljava/lang/reflect/Type;

    .line 85
    .line 86
    aput-object v4, v3, v7

    .line 87
    .line 88
    aput-object v4, v3, v11

    .line 89
    .line 90
    :goto_59
    aget-object v4, v3, v7

    .line 91
    .line 92
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    if-eq v4, v6, :cond_6e

    .line 95
    .line 96
    const-class v6, Ljava/lang/Boolean;

    .line 97
    .line 98
    if-ne v4, v6, :cond_64

    .line 99
    .line 100
    goto :goto_6e

    .line 101
    :cond_64
    new-instance v6, Lw5/a;

    .line 102
    .line 103
    invoke-direct {v6, v4}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v6}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_70

    .line 111
    :cond_6e
    :goto_6e
    sget-object v4, Lt5/s;->c:Lt5/h;

    .line 112
    .line 113
    :goto_70
    aget-object v6, v3, v11

    .line 114
    .line 115
    new-instance v8, Lw5/a;

    .line 116
    .line 117
    invoke-direct {v8, v6}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v8}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v5, p2}, Lp4/p;->c(Lw5/a;)Ls5/n;

    .line 125
    .line 126
    .line 127
    new-instance v0, Lt5/b;

    .line 128
    .line 129
    move-object v5, v3

    .line 130
    aget-object v3, v5, v7

    .line 131
    .line 132
    aget-object v5, v5, v11

    .line 133
    .line 134
    move-object v1, p0

    .line 135
    move-object v2, p1

    .line 136
    invoke-direct/range {v0 .. v6}, Lt5/b;-><init>(Lt5/c;Lq5/l;Ljava/lang/reflect/Type;Lq5/x;Ljava/lang/reflect/Type;Lq5/x;)V

    .line 137
    .line 138
    .line 139
    move-object v6, v0

    .line 140
    :goto_8b
    return-object v6

    .line 141
    :pswitch_8c
    iget-object v1, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 142
    .line 143
    const-class v3, Lr5/a;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lr5/a;

    .line 150
    .line 151
    if-nez v1, :cond_99

    .line 152
    .line 153
    goto :goto_9d

    .line 154
    :cond_99
    invoke-static {v5, p1, p2, v1}, Lt5/c;->b(Lp4/p;Lq5/l;Lw5/a;Lr5/a;)Lq5/x;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    :goto_9d
    return-object v6

    .line 159
    :pswitch_9e
    iget-object v1, p2, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 160
    .line 161
    iget-object v3, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 162
    .line 163
    const-class v8, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-nez v9, :cond_ab

    .line 170
    .line 171
    goto :goto_e8

    .line 172
    :cond_ab
    instance-of v6, v1, Ljava/lang/reflect/WildcardType;

    .line 173
    .line 174
    if-eqz v6, :cond_b7

    .line 175
    .line 176
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    aget-object v1, v1, v7

    .line 183
    .line 184
    :cond_b7
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-static {v6}, Ls5/d;->b(Z)V

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v3, v8}, Ls5/d;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    new-instance v8, Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v3, v6, v8}, Ls5/d;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    .line 205
    .line 206
    if-eqz v3, :cond_d7

    .line 207
    .line 208
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    aget-object v4, v1, v7

    .line 215
    .line 216
    :cond_d7
    new-instance v1, Lw5/a;

    .line 217
    .line 218
    invoke-direct {v1, v4}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v1}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v5, p2}, Lp4/p;->c(Lw5/a;)Ls5/n;

    .line 226
    .line 227
    .line 228
    new-instance v6, Lt5/b;

    .line 229
    .line 230
    invoke-direct {v6, v4, p1, v1}, Lt5/b;-><init>(Ljava/lang/reflect/Type;Lq5/l;Lq5/x;)V

    .line 231
    .line 232
    .line 233
    :goto_e8
    return-object v6

    .line 234
    nop

    .line 235
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_8c
    .end packed-switch
.end method
