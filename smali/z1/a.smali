###### Class z1.a (z1.a)
.class public final Lz1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lz1/a;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lz1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz1/a;->a:Lz1/a;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lz1/d;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "compile(...)"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    packed-switch v0, :pswitch_data_d0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_cc

    .line 14
    .line 15
    :pswitch_e
    const-string v0, "r6"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_18

    .line 22
    .line 23
    goto/16 :goto_cc

    .line 24
    .line 25
    :cond_18
    const-string v0, "-"

    .line 26
    .line 27
    invoke-static {p2, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_cc

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lk7/g;->H(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3d

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    goto :goto_6e

    .line 62
    :cond_3d
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    const/16 v3, 0xa

    .line 65
    .line 66
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    move v3, v2

    .line 70
    :cond_45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_45

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-object p2, v1

    .line 111
    :goto_6e
    check-cast p2, Ljava/util/Collection;

    .line 112
    .line 113
    new-array v0, v2, [Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, [Ljava/lang/String;

    .line 120
    .line 121
    aget-object p2, p2, v2

    .line 122
    .line 123
    goto :goto_cc

    .line 124
    :pswitch_7b
    const-string v0, "r5"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_8d

    .line 131
    .line 132
    goto :goto_cc

    .line 133
    :pswitch_84
    const-string v0, "r4"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_8d

    .line 140
    .line 141
    goto :goto_cc

    .line 142
    :cond_8d
    const-string v0, "[^a-z]+"

    .line 143
    .line 144
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    const-string v1, ""

    .line 152
    .line 153
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    const-string v0, "replaceAll(...)"

    .line 162
    .line 163
    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_cc

    .line 167
    :pswitch_a6
    const-string v0, "r3"

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_af

    .line 174
    .line 175
    goto :goto_cc

    .line 176
    :cond_af
    const-string v0, "m"

    .line 177
    .line 178
    invoke-static {p2, v0, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_cb

    .line 183
    .line 184
    const-string v1, "b"

    .line 185
    .line 186
    invoke-static {p2, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_cb

    .line 191
    .line 192
    const-string v1, "ge"

    .line 193
    .line 194
    invoke-static {p2, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-eqz p2, :cond_c8

    .line 199
    .line 200
    goto :goto_cb

    .line 201
    :cond_c8
    const-string p2, "f"

    .line 202
    .line 203
    goto :goto_cc

    .line 204
    :cond_cb
    :goto_cb
    move-object p2, v0

    .line 205
    :cond_cc
    :goto_cc
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_data_d0
    .packed-switch 0xe01
        :pswitch_a6
        :pswitch_84
        :pswitch_7b
        :pswitch_e
    .end packed-switch
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lz1/d;

    .line 6
    .line 7
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    goto :goto_15

    .line 15
    :cond_e
    :try_start_e
    sget-object v3, Lz1/d;->e:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_11

    .line 16
    .line 17
    goto :goto_15

    .line 18
    :catchall_11
    move-exception v2

    .line 19
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_27

    .line 31
    .line 32
    new-instance v2, Lz1/d;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lz1/d;-><init>(Landroid/app/Activity;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_27
    check-cast v2, Lz1/d;

    .line 41
    .line 42
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_30

    .line 47
    .line 48
    goto :goto_67

    .line 49
    :cond_30
    :try_start_30
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_63

    .line 53
    if-eqz p0, :cond_37

    .line 54
    .line 55
    goto :goto_67

    .line 56
    :cond_37
    :try_start_37
    iget-object p0, v2, Lz1/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_41

    .line 64
    .line 65
    goto :goto_67

    .line 66
    :cond_41
    iget-object p0, v2, Lz1/d;->c:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Landroid/app/Activity;

    .line 73
    .line 74
    invoke-static {p0}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-nez p0, :cond_50

    .line 79
    .line 80
    goto :goto_67

    .line 81
    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_67

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5e

    .line 92
    .line 93
    .line 94
    goto :goto_67

    .line 95
    :catchall_5e
    move-exception p0

    .line 96
    :try_start_5f
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    .line 97
    .line 98
    .line 99
    goto :goto_67

    .line 100
    :catchall_63
    move-exception p0

    .line 101
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    return-void
.end method
