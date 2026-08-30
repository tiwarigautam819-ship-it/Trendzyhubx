###### Class q2.s (q2.s)
.class public abstract Lq2/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static d:Ljava/lang/Long;

.field public static e:Lo5/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-class v0, Lq2/s;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/l;->a(Ljava/lang/Class;)Ld7/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ld7/d;->d:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    iget-object v0, v0, Ld7/d;->a:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_13

    .line 17
    .line 18
    goto/16 :goto_9e

    .line 19
    .line 20
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_72

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v4, 0x24

    .line 35
    .line 36
    if-eqz v2, :cond_3c

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lk7/g;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    goto :goto_9e

    .line 61
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_59

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Lk7/g;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    goto :goto_9e

    .line 90
    :cond_59
    const/4 v0, 0x6

    .line 91
    invoke-static {v1, v4, v3, v0}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v2, -0x1

    .line 96
    if-ne v0, v2, :cond_62

    .line 97
    .line 98
    goto :goto_9e

    .line 99
    :cond_62
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "substring(...)"

    .line 110
    .line 111
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_9e

    .line 115
    :cond_72
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_94

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_9e

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v0, :cond_9e

    .line 142
    .line 143
    const-string v1, "Array"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    goto :goto_9e

    .line 149
    :cond_94
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/String;

    .line 158
    .line 159
    :cond_9e
    :goto_9e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    .line 161
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 162
    .line 163
    .line 164
    sput-object v0, Lq2/s;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lq2/s;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 172
    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lq2/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    .line 180
    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "platform"

    .line 7
    .line 8
    const-string v2, "android"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lx1/r;->a:Lx1/r;

    .line 14
    .line 15
    const-string v1, "18.1.3"

    .line 16
    .line 17
    const-string v2, "sdk_version"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "fields"

    .line 23
    .line 24
    const-string v2, "gatekeepers"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v3, "mobile_sdk_gk"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "app/%s"

    .line 44
    .line 45
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v2, v1, v2}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v0, v1, Lx1/z;->d:Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-virtual {v1}, Lx1/z;->c()Lx1/c0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 61
    .line 62
    if-nez v0, :cond_44

    .line 63
    .line 64
    new-instance v0, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_44
    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lq2/s;->c(Lq2/p;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lq2/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_18

    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_108

    .line 24
    .line 25
    :cond_18
    sget-object v2, Lq2/s;->e:Lo5/c;

    .line 26
    .line 27
    if-eqz v2, :cond_4f

    .line 28
    .line 29
    iget-object v2, v2, Lo5/c;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    if-eqz v2, :cond_4f

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4f

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lr2/a;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_39

    .line 80
    :cond_4f
    const/4 v2, 0x0

    .line 81
    if-eqz v0, :cond_71

    .line 82
    .line 83
    new-instance p1, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :goto_5b
    if-ge v2, v1, :cond_108

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    check-cast v3, Lr2/a;

    .line 101
    .line 102
    iget-object v4, v3, Lr2/a;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-boolean v3, v3, Lr2/a;->b:Z

    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_5b

    .line 114
    :cond_71
    new-instance v0, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lorg/json/JSONObject;

    .line 124
    .line 125
    if-nez v1, :cond_83

    .line 126
    .line 127
    new-instance v1, Lorg/json/JSONObject;

    .line 128
    .line 129
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .line 131
    .line 132
    :cond_83
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_87
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_a4

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/lang/String;

    .line 147
    .line 148
    const-string v5, "key"

    .line 149
    .line 150
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_87

    .line 165
    :cond_a4
    sget-object v1, Lq2/s;->e:Lo5/c;

    .line 166
    .line 167
    if-nez v1, :cond_af

    .line 168
    .line 169
    new-instance v1, Lo5/c;

    .line 170
    .line 171
    const/16 v3, 0x18

    .line 172
    .line 173
    invoke-direct {v1, v3}, Lo5/c;-><init>(I)V

    .line 174
    .line 175
    .line 176
    :cond_af
    new-instance v3, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    :goto_c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_e5

    .line 198
    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Ljava/util/Map$Entry;

    .line 204
    .line 205
    new-instance v6, Lr2/a;

    .line 206
    .line 207
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Ljava/lang/Boolean;

    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-direct {v6, v7, v5}, Lr2/a;-><init>(Ljava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_c0

    .line 230
    :cond_e5
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    .line 232
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    :goto_ee
    if-ge v2, v5, :cond_fe

    .line 240
    .line 241
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    .line 247
    check-cast v6, Lr2/a;

    .line 248
    .line 249
    iget-object v7, v6, Lr2/a;->a:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v4, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    goto :goto_ee

    .line 255
    :cond_fe
    iget-object v2, v1, Lo5/c;->b:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 258
    .line 259
    invoke-virtual {v2, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    sput-object v1, Lq2/s;->e:Lo5/c;

    .line 263
    .line 264
    move-object p1, v0

    .line 265
    :cond_108
    :goto_108
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_10f

    .line 270
    .line 271
    goto :goto_11c

    .line 272
    :cond_10f
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Ljava/lang/Boolean;

    .line 277
    .line 278
    if-eqz p0, :cond_11c

    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    return p0

    .line 285
    :cond_11c
    :goto_11c
    return p2
.end method

.method public static final declared-synchronized c(Lq2/p;)V
    .registers 9

    .line 1
    const-class v0, Lq2/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_e

    .line 5
    .line 6
    :try_start_5
    sget-object v1, Lq2/s;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    goto :goto_e

    .line 12
    :catchall_b
    move-exception p0

    .line 13
    goto/16 :goto_7f

    .line 14
    .line 15
    :cond_e
    :goto_e
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v1, Lq2/s;->d:Ljava/lang/Long;

    .line 20
    .line 21
    if-nez v1, :cond_17

    .line 22
    .line 23
    goto :goto_34

    .line 24
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sub-long/2addr v2, v4

    .line 33
    const-wide/32 v4, 0x36ee80

    .line 34
    .line 35
    .line 36
    cmp-long v1, v2, v4

    .line 37
    .line 38
    if-gez v1, :cond_34

    .line 39
    .line 40
    sget-object v1, Lq2/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_34

    .line 47
    .line 48
    invoke-static {}, Lq2/s;->e()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_b

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_34
    :goto_34
    :try_start_34
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "com.facebook.internal.APP_GATEKEEPERS.%s"

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    new-array v4, v3, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object p0, v4, v5

    .line 64
    .line 65
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v4, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 74
    .line 75
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-interface {v4, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v7
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_b

    .line 88
    if-nez v7, :cond_67

    .line 89
    .line 90
    :try_start_59
    new-instance v7, Lorg/json/JSONObject;

    .line 91
    .line 92
    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5e} :catch_60
    .catchall {:try_start_59 .. :try_end_5e} :catchall_b

    .line 93
    .line 94
    .line 95
    move-object v6, v7

    .line 96
    goto :goto_62

    .line 97
    :catch_60
    :try_start_60
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 98
    .line 99
    :goto_62
    if-eqz v6, :cond_67

    .line 100
    .line 101
    invoke-static {p0, v6}, Lq2/s;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    :cond_67
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    sget-object v6, Lq2/s;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    .line 110
    invoke-virtual {v6, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 111
    .line 112
    .line 113
    move-result v3
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_b

    .line 114
    if-nez v3, :cond_75

    .line 115
    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :cond_75
    :try_start_75
    new-instance v3, Lq2/r;

    .line 119
    .line 120
    invoke-direct {v3, p0, v1, v2}, Lq2/r;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_b

    .line 124
    .line 125
    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 128
    :goto_7f
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_b

    .line 129
    throw p0
.end method

.method public static final declared-synchronized d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 9

    .line 1
    const-class v0, Lq2/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-string v1, "applicationId"

    .line 5
    .line 6
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lq2/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    if-nez v1, :cond_1a

    .line 18
    .line 19
    new-instance v1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    goto :goto_63

    .line 27
    :cond_1a
    :goto_1a
    const-string v2, "data"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz p1, :cond_28

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    if-nez p1, :cond_30

    .line 43
    .line 44
    new-instance p1, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    :cond_30
    const-string v3, "gatekeepers"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_3d

    .line 56
    .line 57
    new-instance p1, Lorg/json/JSONArray;

    .line 58
    .line 59
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_18

    .line 66
    :goto_41
    if-ge v2, v3, :cond_5c

    .line 67
    .line 68
    :try_start_43
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "key"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "value"

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_56} :catch_57
    .catchall {:try_start_43 .. :try_end_56} :catchall_18

    .line 85
    .line 86
    .line 87
    goto :goto_59

    .line 88
    :catch_57
    :try_start_57
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 89
    .line 90
    :goto_59
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_41

    .line 93
    :cond_5c
    sget-object p1, Lq2/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_18

    .line 96
    .line 97
    .line 98
    monitor-exit v0

    .line 99
    return-object v1

    .line 100
    :goto_63
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_18

    .line 101
    throw p0
.end method

.method public static e()V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    :cond_9
    :goto_9
    sget-object v1, Lq2/s;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_24

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lq2/p;

    .line 23
    .line 24
    if-eqz v1, :cond_9

    .line 25
    .line 26
    new-instance v2, La2/g;

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_9

    .line 37
    :cond_24
    return-void
.end method
