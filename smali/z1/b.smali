###### Class z1.b (z1.b)
.class public final Lz1/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lz1/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lz1/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz1/b;->a:Lz1/b;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 9

    .line 1
    const-class v0, Lz1/b;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lc2/e;->g(Landroid/view/View;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_27

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    goto/16 :goto_e2

    .line 39
    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_34

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_24

    .line 51
    .line 52
    .line 53
    :cond_34
    const/4 v3, 0x0

    .line 54
    :try_start_35
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, -0x1

    .line 59
    if-eq v4, v5, :cond_b3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v4, "resourceName"

    .line 74
    .line 75
    invoke-static {v4, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "/"

    .line 79
    .line 80
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "compile(...)"

    .line 85
    .line 86
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Lk7/g;->H(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6e

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_9f

    .line 111
    :cond_6e
    new-instance v5, Ljava/util/ArrayList;

    .line 112
    .line 113
    const/16 v6, 0xa

    .line 114
    .line 115
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    move v6, v3

    .line 119
    :cond_76
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-nez v7, :cond_76

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-object p0, v5

    .line 160
    :goto_9f
    check-cast p0, Ljava/util/Collection;

    .line 161
    .line 162
    new-array v4, v3, [Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, [Ljava/lang/String;

    .line 169
    .line 170
    array-length v4, p0

    .line 171
    const/4 v5, 0x2

    .line 172
    if-ne v4, v5, :cond_b3

    .line 173
    .line 174
    const/4 v4, 0x1

    .line 175
    aget-object p0, p0, v4

    .line 176
    .line 177
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_b3} :catch_b3
    .catchall {:try_start_35 .. :try_end_b3} :catchall_24

    .line 178
    .line 179
    .line 180
    :catch_b3
    :cond_b3
    :try_start_b3
    new-instance p0, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    :cond_bc
    :goto_bc
    if-ge v3, v4, :cond_e1

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    check-cast v5, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-lez v6, :cond_bc

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    const/16 v7, 0x64

    .line 210
    .line 211
    if-gt v6, v7, :cond_bc

    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    const-string v6, "this as java.lang.String).toLowerCase()"

    .line 218
    .line 219
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catchall {:try_start_b3 .. :try_end_e0} :catchall_24

    .line 223
    .line 224
    .line 225
    goto :goto_bc

    .line 226
    :cond_e1
    return-object p0

    .line 227
    :goto_e2
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v2
.end method

.method public static final c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 11

    .line 1
    const-class v0, Lz1/b;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_4a

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "indicators"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "keys"

    .line 17
    .line 18
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move v3, v2

    .line 26
    :cond_19
    :goto_19
    if-ge v3, v1, :cond_4a

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v5, Lz1/b;->a:Lz1/b;

    .line 37
    .line 38
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_48

    .line 42
    if-eqz v6, :cond_2c

    .line 43
    .line 44
    goto :goto_19

    .line 45
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    move v7, v2

    .line 50
    :cond_31
    if-ge v7, v6, :cond_19

    .line 51
    .line 52
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    check-cast v8, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v4, v8}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v8
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_43

    .line 64
    if-eqz v8, :cond_31

    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :catchall_43
    move-exception v4

    .line 69
    :try_start_44
    invoke-static {v4, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 70
    .line 71
    .line 72
    goto :goto_19

    .line 73
    :catchall_48
    move-exception p0

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    :goto_4a
    return v2

    .line 76
    :goto_4b
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return v2
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    instance-of v2, p1, Landroid/widget/EditText;

    .line 15
    .line 16
    if-eqz v2, :cond_12

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_12
    instance-of v2, p1, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v2, :cond_3d

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_58

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x64

    .line 44
    .line 45
    if-ge v2, v3, :cond_58

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "this as java.lang.String).toLowerCase()"

    .line 52
    .line 53
    invoke-static {v2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    goto :goto_59

    .line 62
    :cond_3d
    invoke-static {p1}, Lc2/e;->a(Landroid/view/View;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x0

    .line 71
    :goto_46
    if-ge v3, v2, :cond_58

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    check-cast v4, Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lz1/b;->b(Landroid/view/View;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_3b

    .line 86
    .line 87
    .line 88
    goto :goto_46

    .line 89
    :cond_58
    return-object v0

    .line 90
    :goto_59
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method
