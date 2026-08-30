###### Class a2.g (a2.g)
.class public final synthetic La2/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, La2/g;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La2/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .registers 7

    .line 1
    iget-object v0, p0, La2/g;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/q;

    .line 4
    .line 5
    const-string v1, "fetchFonts result is not OK. ("

    .line 6
    .line 7
    iget-object v2, v0, Lp0/q;->d:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_9
    iget-object v3, v0, Lp0/q;->h:Lx2/a;

    .line 11
    .line 12
    if-nez v3, :cond_12

    .line 13
    .line 14
    monitor-exit v2

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    goto/16 :goto_c8

    .line 18
    .line 19
    :cond_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_f

    .line 20
    :try_start_13
    invoke-virtual {v0}, Lp0/q;->d()Lg0/j;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, v2, Lg0/j;->e:I

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-ne v3, v4, :cond_27

    .line 28
    .line 29
    iget-object v4, v0, Lp0/q;->d:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_24

    .line 32
    :try_start_1f
    monitor-exit v4

    .line 33
    goto :goto_27

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    .line 36
    :try_start_23
    throw v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 37
    :catchall_24
    move-exception v1

    .line 38
    goto/16 :goto_b4

    .line 39
    .line 40
    :cond_27
    :goto_27
    if-nez v3, :cond_9d

    .line 41
    .line 42
    :try_start_29
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 43
    .line 44
    sget v3, Lf0/j;->a:I

    .line 45
    .line 46
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lp0/q;->c:Lo3/a;

    .line 50
    .line 51
    iget-object v3, v0, Lp0/q;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    new-array v1, v1, [Lg0/j;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    sget-object v5, Lc0/f;->a:Lx2/a;

    .line 63
    .line 64
    const-string v5, "TypefaceCompat.createFromFontInfo"

    .line 65
    .line 66
    invoke-static {v5}, Lz7/d;->a(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_90

    .line 67
    .line 68
    .line 69
    :try_start_44
    sget-object v5, Lc0/f;->a:Lx2/a;

    .line 70
    .line 71
    invoke-virtual {v5, v3, v1, v4}, Lx2/a;->b(Landroid/content/Context;[Lg0/j;I)Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_92

    .line 75
    :try_start_4a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Lp0/q;->a:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v2, v2, Lg0/j;->a:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-static {v3, v2}, Ly1/g;->s(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v2
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_90

    .line 86
    if-eqz v2, :cond_88

    .line 87
    .line 88
    if-eqz v1, :cond_88

    .line 89
    .line 90
    :try_start_59
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 91
    .line 92
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/google/firebase/messaging/y;

    .line 96
    .line 97
    invoke-static {v2}, Ly1/j;->l(Ljava/nio/MappedByteBuffer;)Lq0/b;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v3, v1, v2}, Lcom/google/firebase/messaging/y;-><init>(Landroid/graphics/Typeface;Lq0/b;)V
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_81

    .line 102
    .line 103
    .line 104
    :try_start_67
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_90

    .line 105
    .line 106
    .line 107
    :try_start_6a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lp0/q;->d:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_24

    .line 113
    :try_start_70
    iget-object v2, v0, Lp0/q;->h:Lx2/a;

    .line 114
    .line 115
    if-eqz v2, :cond_7a

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lx2/a;->l(Lcom/google/firebase/messaging/y;)V

    .line 118
    .line 119
    .line 120
    goto :goto_7a

    .line 121
    :catchall_78
    move-exception v2

    .line 122
    goto :goto_7f

    .line 123
    :cond_7a
    :goto_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_78

    .line 124
    :try_start_7b
    invoke-virtual {v0}, Lp0/q;->b()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_24

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_7f
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_78

    .line 129
    :try_start_80
    throw v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_24

    .line 130
    :catchall_81
    move-exception v1

    .line 131
    :try_start_82
    sget v2, Lf0/j;->a:I

    .line 132
    .line 133
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :cond_88
    new-instance v1, Ljava/lang/RuntimeException;

    .line 138
    .line 139
    const-string v2, "Unable to open file."

    .line 140
    .line 141
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :catchall_90
    move-exception v1

    .line 146
    goto :goto_97

    .line 147
    :catchall_92
    move-exception v1

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 149
    .line 150
    .line 151
    throw v1
    :try_end_97
    .catchall {:try_start_82 .. :try_end_97} :catchall_90

    .line 152
    :goto_97
    :try_start_97
    sget v2, Lf0/j;->a:I

    .line 153
    .line 154
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_9d
    new-instance v2, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ")"

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v2
    :try_end_b4
    .catchall {:try_start_97 .. :try_end_b4} :catchall_24

    .line 181
    :goto_b4
    iget-object v3, v0, Lp0/q;->d:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v3

    .line 184
    :try_start_b7
    iget-object v2, v0, Lp0/q;->h:Lx2/a;

    .line 185
    .line 186
    if-eqz v2, :cond_c1

    .line 187
    .line 188
    invoke-virtual {v2, v1}, Lx2/a;->k(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    goto :goto_c1

    .line 192
    :catchall_bf
    move-exception v0

    .line 193
    goto :goto_c6

    .line 194
    :cond_c1
    :goto_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_bf

    .line 195
    invoke-virtual {v0}, Lp0/q;->b()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_c6
    :try_start_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_bf

    .line 200
    throw v0

    .line 201
    :goto_c8
    :try_start_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_f

    .line 202
    throw v0
.end method


# virtual methods
.method public final run()V
    .registers 41

    move-object/from16 v1, p0

    iget v0, v1, La2/g;->a:I

    const/16 v3, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_9aa

    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Ly2/g;

    .line 1
    const-string v2, "this$0"

    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Ly2/g;->R()V

    return-void

    .line 3
    :pswitch_18
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/app/Activity;

    .line 4
    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 5
    sget-object v10, Ly/d;->g:Landroid/os/Handler;

    sget-object v0, Ly/d;->f:Ljava/lang/reflect/Method;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_32

    .line 6
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_c3

    :cond_32
    const/16 v12, 0x1b

    const/16 v13, 0x1a

    if-eq v11, v13, :cond_3a

    if-ne v11, v12, :cond_3e

    :cond_3a
    if-nez v0, :cond_3e

    goto/16 :goto_c0

    .line 7
    :cond_3e
    sget-object v14, Ly/d;->e:Ljava/lang/reflect/Method;

    if-nez v14, :cond_48

    sget-object v14, Ly/d;->d:Ljava/lang/reflect/Method;

    if-nez v14, :cond_48

    goto/16 :goto_c0

    .line 8
    :cond_48
    :try_start_48
    sget-object v14, Ly/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_52

    goto/16 :goto_c0

    .line 9
    :cond_52
    sget-object v15, Ly/d;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v15, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_5b

    goto :goto_c0

    :cond_5b
    const/16 v16, 0x3

    .line 10
    invoke-virtual {v9}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/16 v17, 0x2

    .line 11
    new-instance v5, Ly/c;

    invoke-direct {v5, v9}, Ly/c;-><init>(Landroid/app/Activity;)V

    .line 12
    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/16 v18, 0x6

    .line 13
    new-instance v2, Ls4/b;

    const/16 v19, 0x0

    const/16 v8, 0x14

    invoke-direct {v2, v5, v8, v14}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_79
    .catchall {:try_start_48 .. :try_end_79} :catchall_c0

    if-eq v11, v13, :cond_81

    if-ne v11, v12, :cond_7e

    goto :goto_81

    :cond_7e
    move/from16 v2, v19

    goto :goto_82

    :cond_81
    :goto_81
    move v2, v7

    :goto_82
    const/16 v8, 0x15

    if-eqz v2, :cond_ab

    .line 14
    :try_start_86
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v14, v3, v19

    aput-object v6, v3, v7

    aput-object v6, v3, v17

    aput-object v2, v3, v16

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x4

    aput-object v2, v3, v7

    const/4 v7, 0x5

    aput-object v6, v3, v7

    aput-object v6, v3, v18

    const/4 v6, 0x7

    aput-object v2, v3, v6

    const/16 v6, 0x8

    aput-object v2, v3, v6

    .line 15
    invoke-virtual {v0, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    :catchall_a9
    move-exception v0

    goto :goto_b7

    .line 16
    :cond_ab
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V
    :try_end_ae
    .catchall {:try_start_86 .. :try_end_ae} :catchall_a9

    .line 17
    :goto_ae
    :try_start_ae
    new-instance v0, Ls4/b;

    invoke-direct {v0, v4, v8, v5}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c3

    :goto_b7
    new-instance v2, Ls4/b;

    invoke-direct {v2, v4, v8, v5}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    throw v0
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_c0

    .line 19
    :catchall_c0
    :goto_c0
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    :cond_c3
    :goto_c3
    return-void

    .line 20
    :pswitch_c4
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lx1/e;

    .line 21
    invoke-virtual {v0}, Lx1/e;->a()V

    return-void

    .line 22
    :pswitch_cc
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lq2/p;

    .line 23
    iget-object v2, v0, Lq2/p;->a:Lq2/n;

    iget-object v0, v0, Lq2/p;->b:Lq2/o;

    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    move-result v0

    invoke-interface {v2, v0}, Lq2/n;->d(Z)V

    return-void

    .line 24
    :pswitch_dc
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lq2/m;

    invoke-static {v0}, Lq2/m;->g(Lq2/m;)V

    return-void

    :pswitch_e4
    invoke-direct {v1}, La2/g;->a()V

    return-void

    :pswitch_e8
    const/16 v19, 0x0

    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lo2/e;

    .line 25
    const-class v2, Lo2/e;

    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    goto :goto_14e

    :cond_f7
    :try_start_f7
    iget-object v0, v0, Lo2/e;->a:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v3, :cond_14e

    if-nez v0, :cond_10e

    goto :goto_14e

    .line 28
    :cond_10e
    invoke-static {v3}, Lo2/c;->a(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v8, v19

    :cond_118
    :goto_118
    if-ge v8, v5, :cond_14e

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    check-cast v6, Landroid/view/View;

    .line 30
    invoke-static {v6}, Lc2/d;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_129

    goto :goto_118

    .line 31
    :cond_129
    invoke-static {v6}, Lo2/c;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_118

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x12c

    if-gt v7, v9, :cond_118

    .line 33
    sget-object v7, Lo2/f;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "activity.localClassName"

    invoke-static {v9, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6, v3, v7}, Lo2/a;->b(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_149} :catch_14e
    .catchall {:try_start_f7 .. :try_end_149} :catchall_14a

    goto :goto_118

    :catchall_14a
    move-exception v0

    .line 34
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_14e
    :cond_14e
    :goto_14e
    return-void

    .line 35
    :pswitch_14f
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    return-void

    :pswitch_157
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/lottery/app/GateActivity;

    .line 36
    const-string v2, "Gate"

    iget-boolean v3, v0, Lcom/lottery/app/GateActivity;->a:Z

    if-nez v3, :cond_167

    const-string v0, "maybeStartAuth skip: not armed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_172

    .line 37
    :cond_167
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_173

    const-string v0, "maybeStartAuth skip: no focus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_172
    return-void

    .line 38
    :cond_173
    throw v6

    .line 39
    :pswitch_174
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/y;

    .line 40
    iget-object v2, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    check-cast v2, Ln3/c;

    new-instance v4, Lcom/google/firebase/messaging/j0;

    invoke-direct {v4, v3, v0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    check-cast v2, Lm3/h;

    invoke-virtual {v2, v4}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    return-void

    .line 41
    :pswitch_187
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/m0;

    .line 42
    const-string v2, "FirebaseMessaging"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service took too long to process intent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/firebase/messaging/m0;->a:Landroid/content/Intent;

    .line 43
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " finishing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, v0, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    invoke-virtual {v0, v6}, Lp4/j;->c(Ljava/lang/Object;)V

    return-void

    .line 46
    :pswitch_1af
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/z;

    .line 47
    iget-object v2, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 48
    :try_start_1b8
    iget-object v3, v0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    iget-object v6, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d1

    .line 52
    :cond_1e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    monitor-exit v2

    return-void

    :catchall_1f5
    move-exception v0

    monitor-exit v2
    :try_end_1f7
    .catchall {:try_start_1b8 .. :try_end_1f7} :catchall_1f5

    throw v0

    .line 55
    :pswitch_1f8
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lb2/i;

    .line 56
    const-class v2, Lb2/i;

    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_205

    goto :goto_212

    :cond_205
    :try_start_205
    const-string v3, "this$0"

    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Lb2/i;->b()V
    :try_end_20d
    .catchall {:try_start_205 .. :try_end_20d} :catchall_20e

    goto :goto_212

    :catchall_20e
    move-exception v0

    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_212
    return-void

    .line 58
    :pswitch_213
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Le6/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_21b
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lb/r;

    invoke-static {v0}, Lb/r;->a(Lb/r;)V

    return-void

    :pswitch_223
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Lb/l;

    .line 59
    const-string v2, "this$0"

    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v2, v0, Lb/l;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_235

    .line 61
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 62
    iput-object v6, v0, Lb/l;->b:Ljava/lang/Runnable;

    :cond_235
    return-void

    .line 63
    :pswitch_236
    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/c0;

    iget-object v2, v0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 64
    iget v3, v0, Landroidx/lifecycle/c0;->b:I

    if-nez v3, :cond_247

    .line 65
    iput-boolean v7, v0, Landroidx/lifecycle/c0;->c:Z

    .line 66
    sget-object v3, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 67
    :cond_247
    iget v3, v0, Landroidx/lifecycle/c0;->a:I

    if-nez v3, :cond_256

    iget-boolean v3, v0, Landroidx/lifecycle/c0;->c:Z

    if-eqz v3, :cond_256

    .line 68
    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 69
    iput-boolean v7, v0, Landroidx/lifecycle/c0;->d:Z

    :cond_256
    return-void

    :pswitch_257
    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x6

    const/16 v19, 0x0

    .line 70
    const-string v2, "credentials"

    iget-object v0, v1, La2/g;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lx1/z;

    .line 71
    const-string v4, "POST"

    sget-object v5, Ls6/o;->a:Ls6/o;

    sget-object v8, Lx1/e0;->d:Lx1/e0;

    sget-object v9, Lx1/e0;->e:Lx1/e0;

    sget-object v0, La2/j;->a:Ljava/util/HashSet;

    const-string v10, "CAPITransformerWebRequests"

    .line 72
    iget-object v0, v3, Lx1/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_285

    .line 73
    const-string v11, "/"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    move/from16 v12, v18

    move/from16 v13, v19

    invoke-static {v0, v11, v13, v12}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_286

    :cond_285
    move-object v0, v6

    :goto_286
    if-eqz v0, :cond_290

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v11, v17

    if-eq v0, v11, :cond_298

    :cond_290
    move-object/from16 v22, v3

    move-object v4, v9

    move-object v2, v10

    const/16 v19, 0x0

    goto/16 :goto_99e

    .line 75
    :cond_298
    :try_start_298
    sget-object v0, La2/j;->c:La2/h;

    if-eqz v0, :cond_985

    .line 76
    iget-object v11, v0, La2/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_979

    .line 77
    iget-object v0, v0, La2/h;->a:Ljava/lang/String;

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/capi/"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/events"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2bb
    .catch Lr6/i; {:try_start_298 .. :try_end_2bb} :catch_975

    .line 79
    const-string v12, "null cannot be cast to non-null type kotlin.Any"

    const-string v13, "custom_events"

    .line 80
    iget-object v0, v3, Lx1/z;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_6a1

    .line 81
    invoke-static {v0}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ls6/r;->y(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 82
    iget-object v0, v3, Lx1/z;->e:Ljava/lang/String;

    .line 83
    invoke-static {v12, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v14, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2e0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_30c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v7, " : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    const/4 v7, 0x1

    goto :goto_2e0

    :cond_30c
    move-object/from16 v20, v6

    .line 90
    sget-object v6, Lq2/z;->c:Lo3/a;

    const-string v6, "\nGraph Request data: \n\n%s \n\n"

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v15, v19

    invoke-static {v8, v10, v6, v15}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v0, La2/f;->a:Ljava/lang/Object;

    .line 92
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v21, v2

    .line 96
    const-string v2, "\n transformEvents JSONException: \n%s\n%s"

    move-object/from16 v22, v3

    const-string v3, "AppEventsConversionsAPITransformer"

    move-object/from16 v23, v5

    const-string v5, "rawValue"

    .line 97
    const-string v0, "event"

    .line 98
    invoke-virtual {v14, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v9

    .line 99
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v9, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    move-object/from16 v25, v4

    .line 100
    const-string v4, "MOBILE_APP_INSTALL"

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35d

    move-object/from16 v26, v11

    move/from16 v11, v16

    const/4 v4, 0x1

    goto :goto_370

    .line 102
    :cond_35d
    const-string v4, "CUSTOM_APP_EVENTS"

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36b

    move-object/from16 v26, v11

    move/from16 v11, v16

    const/4 v4, 0x2

    goto :goto_370

    :cond_36b
    move-object/from16 v26, v11

    move/from16 v4, v16

    move v11, v4

    :goto_370
    if-ne v4, v11, :cond_37b

    move-object/from16 v37, v7

    move v7, v11

    :goto_375
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    goto/16 :goto_62b

    .line 104
    :cond_37b
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_383
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_626

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v11

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 106
    invoke-static {v5, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v28, v10

    .line 107
    invoke-static {}, La2/a;->values()[La2/a;

    move-result-object v10

    move-object/from16 v29, v14

    .line 108
    array-length v14, v10

    move-object/from16 v30, v10

    const/4 v10, 0x0

    :goto_3ae
    if-ge v10, v14, :cond_3c4

    move/from16 v31, v10

    aget-object v10, v30, v31

    move/from16 v32, v14

    .line 109
    iget-object v14, v10, La2/a;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3bf

    goto :goto_3c6

    :cond_3bf
    add-int/lit8 v10, v31, 0x1

    move/from16 v14, v32

    goto :goto_3ae

    :cond_3c4
    move-object/from16 v10, v20

    :goto_3c6
    if-eqz v10, :cond_443

    .line 111
    const-string v0, "value"

    invoke-static {v0, v11}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v0, La2/f;->a:Ljava/lang/Object;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La2/e;

    if-eqz v14, :cond_3db

    .line 113
    iget v14, v14, La2/e;->a:I

    if-nez v14, :cond_3de

    :cond_3db
    move-object/from16 v30, v1

    goto :goto_439

    .line 114
    :cond_3de
    invoke-static {v14}, Landroidx/fragment/app/m1;->e(I)I

    move-result v14

    if-eqz v14, :cond_3fe

    move-object/from16 v30, v1

    const/4 v1, 0x1

    if-eq v14, v1, :cond_3ea

    goto :goto_439

    .line 115
    :cond_3ea
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/e;

    if-eqz v0, :cond_439

    .line 116
    iget v0, v0, La2/e;->b:I

    if-eqz v0, :cond_439

    .line 117
    invoke-static {v0}, La1/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {v7, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_439

    :cond_3fe
    move-object/from16 v30, v1

    .line 119
    sget-object v1, La2/a;->g:La2/a;

    if-ne v10, v1, :cond_426

    .line 120
    :try_start_404
    new-instance v0, Lorg/json/JSONObject;

    move-object v1, v11

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 121
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_413
    .catch Lorg/json/JSONException; {:try_start_404 .. :try_end_413} :catch_414

    goto :goto_439

    :catch_414
    move-exception v0

    .line 122
    sget-object v1, Lq2/z;->c:Lo3/a;

    const/4 v1, 0x2

    .line 123
    new-array v10, v1, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v11, v10, v19

    const/16 v18, 0x1

    aput-object v0, v10, v18

    .line 124
    invoke-static {v8, v3, v2, v10}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_439

    .line 125
    :cond_426
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/e;

    if-eqz v0, :cond_439

    .line 126
    iget v0, v0, La2/e;->b:I

    if-eqz v0, :cond_439

    .line 127
    invoke-static {v0}, La1/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_439
    :goto_439
    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    :cond_43f
    :goto_43f
    move-object/from16 v1, v30

    goto/16 :goto_618

    :cond_443
    move-object/from16 v30, v1

    .line 129
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 130
    instance-of v10, v11, Ljava/lang/String;

    const/4 v14, 0x2

    if-ne v4, v14, :cond_5e3

    if-eqz v1, :cond_5e3

    if-eqz v10, :cond_5e3

    .line 131
    check-cast v11, Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :try_start_459
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lq2/g0;->g(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_467
    if-ge v14, v10, :cond_491

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    check-cast v0, Ljava/lang/String;

    move/from16 v31, v10

    .line 135
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_483
    .catch Lorg/json/JSONException; {:try_start_459 .. :try_end_483} :catch_488

    move/from16 v10, v31

    move-object/from16 v0, v32

    goto :goto_467

    :catch_488
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    goto/16 :goto_5ca

    .line 137
    :cond_491
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a1

    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    :goto_49d
    move-object/from16 v10, v20

    goto/16 :goto_5dc

    .line 138
    :cond_4a1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    :goto_4ab
    if-ge v0, v11, :cond_5c3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v31, v0, 0x1

    check-cast v14, Ljava/util/Map;

    move-object/from16 v32, v1

    .line 140
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v33, v11

    .line 141
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_4cd
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a1

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v5, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v35, v5

    .line 145
    invoke-static {}, La2/l;->values()[La2/l;

    move-result-object v5

    move-object/from16 v36, v13

    .line 146
    array-length v13, v5

    move-object/from16 v37, v5

    const/4 v5, 0x0

    :goto_4e8
    if-ge v5, v13, :cond_4fe

    move/from16 v38, v5

    aget-object v5, v37, v38

    move/from16 v39, v13

    .line 147
    iget-object v13, v5, La2/l;->a:Ljava/lang/String;

    .line 148
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f9

    goto :goto_500

    :cond_4f9
    add-int/lit8 v5, v38, 0x1

    move/from16 v13, v39

    goto :goto_4e8

    :cond_4fe
    move-object/from16 v5, v20

    .line 149
    :goto_500
    sget-object v13, La2/f;->b:Ljava/lang/Object;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La2/d;

    if-eqz v5, :cond_50c

    if-nez v13, :cond_510

    :cond_50c
    move-object/from16 v37, v7

    goto/16 :goto_599

    :cond_510
    move-object/from16 v37, v7

    .line 150
    iget v7, v13, La2/d;->b:I

    .line 151
    iget v13, v13, La2/d;->a:I

    if-eqz v13, :cond_533

    move/from16 v38, v7

    const/4 v7, 0x3

    if-ne v13, v7, :cond_599

    .line 152
    invoke-static/range {v38 .. v38}, La1/a;->f(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v7}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v7}, La2/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_599

    :cond_533
    move/from16 v38, v7

    .line 155
    :try_start_535
    invoke-static/range {v38 .. v38}, La1/a;->f(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    sget-object v13, La2/l;->c:La2/l;

    if-ne v5, v13, :cond_569

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_569

    .line 157
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 158
    sget-object v5, La2/f;->c:Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_563

    .line 159
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/k;

    if-eqz v0, :cond_561

    .line 160
    iget-object v0, v0, La2/k;->a:Ljava/lang/String;

    goto :goto_563

    .line 161
    :cond_561
    const-string v0, ""

    .line 162
    :cond_563
    :goto_563
    invoke-interface {v11, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_599

    :catch_567
    move-exception v0

    goto :goto_587

    .line 163
    :cond_569
    sget-object v13, La2/l;->b:La2/l;

    if-ne v5, v13, :cond_599

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_599

    .line 164
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12, v5}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v5}, La2/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-interface {v11, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_586
    .catch Ljava/lang/ClassCastException; {:try_start_535 .. :try_end_586} :catch_567

    goto :goto_599

    .line 166
    :goto_587
    sget-object v5, Lq2/z;->c:Lo3/a;

    .line 167
    const-string v5, "\n transformEvents ClassCastException: \n %s "

    .line 168
    invoke-static {v0}, Li2/t;->q(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v13, v19

    .line 169
    invoke-static {v8, v3, v5, v13}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_599
    :goto_599
    move-object/from16 v5, v35

    move-object/from16 v13, v36

    move-object/from16 v7, v37

    goto/16 :goto_4cd

    :cond_5a1
    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    .line 170
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b2

    .line 171
    const-string v0, "custom_data"

    .line 172
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_5b2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v11, v33

    move-object/from16 v5, v35

    move-object/from16 v13, v36

    move-object/from16 v7, v37

    goto/16 :goto_4ab

    :cond_5c3
    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    goto :goto_5dc

    .line 174
    :goto_5ca
    sget-object v1, Lq2/z;->c:Lo3/a;

    const/4 v1, 0x2

    .line 175
    new-array v5, v1, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v11, v5, v19

    const/16 v18, 0x1

    aput-object v0, v5, v18

    .line 176
    invoke-static {v8, v3, v2, v5}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_49d

    :goto_5dc
    if-eqz v10, :cond_43f

    .line 177
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43f

    :cond_5e3
    move-object/from16 v35, v5

    move-object/from16 v37, v7

    move-object/from16 v36, v13

    const/4 v7, 0x3

    .line 178
    invoke-static {v7}, Landroidx/fragment/app/m1;->h(I)[I

    move-result-object v1

    .line 179
    array-length v5, v1

    const/4 v10, 0x0

    :goto_5f0
    if-ge v10, v5, :cond_610

    aget v13, v1, v10

    const/4 v14, 0x1

    if-eq v13, v14, :cond_603

    const/4 v14, 0x2

    if-eq v13, v14, :cond_600

    if-ne v13, v7, :cond_5ff

    .line 180
    const-string v7, "data_processing_options_state"

    goto :goto_605

    :cond_5ff
    throw v20

    :cond_600
    const-string v7, "data_processing_options_country"

    goto :goto_605

    :cond_603
    const-string v7, "data_processing_options"

    .line 181
    :goto_605
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60c

    goto :goto_611

    :cond_60c
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    goto :goto_5f0

    :cond_610
    const/4 v13, 0x0

    :goto_611
    if-eqz v13, :cond_43f

    move-object/from16 v1, v30

    .line 182
    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_618
    move-object/from16 v11, v27

    move-object/from16 v10, v28

    move-object/from16 v14, v29

    move-object/from16 v5, v35

    move-object/from16 v13, v36

    move-object/from16 v7, v37

    goto/16 :goto_383

    :cond_626
    move-object/from16 v37, v7

    const/4 v7, 0x3

    goto/16 :goto_375

    :goto_62b
    if-ne v4, v7, :cond_62e

    goto :goto_65a

    .line 183
    :cond_62e
    const-string v0, "install_timestamp"

    move-object/from16 v2, v29

    .line 184
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    const-string v3, "action_source"

    const-string v5, "app"

    .line 187
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v3, "user_data"

    .line 189
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v3, "app_data"

    move-object/from16 v5, v37

    .line 191
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 193
    invoke-static {v4}, Landroidx/fragment/app/m1;->e(I)I

    move-result v1

    if-eqz v1, :cond_685

    const/4 v7, 0x1

    if-eq v1, v7, :cond_65b

    :goto_65a
    goto :goto_6b1

    .line 194
    :cond_65b
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_662

    goto :goto_65a

    .line 195
    :cond_662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_66c
    if-ge v3, v1, :cond_6b3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/Map;

    .line 197
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 198
    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 199
    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66c

    :cond_685
    if-nez v0, :cond_688

    goto :goto_65a

    .line 201
    :cond_688
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 203
    const-string v2, "event_name"

    .line 204
    const-string v3, "MobileAppInstall"

    .line 205
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v2, "event_time"

    .line 207
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {v1}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6b3

    :cond_6a1
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v9

    move-object/from16 v28, v10

    move-object/from16 v26, v11

    :goto_6b1
    move-object/from16 v0, v20

    :cond_6b3
    :goto_6b3
    if-nez v0, :cond_6b7

    goto/16 :goto_9a9

    .line 209
    :cond_6b7
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    const/4 v13, 0x0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_7b4

    .line 211
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-ltz v0, :cond_7a2

    if-nez v0, :cond_6e3

    .line 212
    invoke-static {v1}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_781

    .line 213
    :cond_6e3
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_760

    .line 214
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-gtz v3, :cond_6f5

    move-object/from16 v0, v23

    goto/16 :goto_781

    :cond_6f5
    const/4 v7, 0x1

    if-ne v3, v7, :cond_72a

    .line 215
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_703

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ls6/g;->s(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_71d

    .line 216
    :cond_703
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_722

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 219
    :goto_711
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71c

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_711

    :cond_71c
    move-object v0, v1

    .line 221
    :goto_71d
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_781

    .line 222
    :cond_722
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_72a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_765

    .line 225
    instance-of v3, v1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_74a

    .line 226
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_73b
    if-ge v0, v2, :cond_75e

    .line 227
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_73b

    .line 228
    :cond_74a
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_750
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 229
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_750

    :cond_75e
    move-object v0, v4

    goto :goto_781

    .line 230
    :cond_760
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :cond_765
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_76a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-lt v2, v0, :cond_77a

    .line 232
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76a

    :cond_77a
    add-int/lit8 v2, v2, 0x1

    goto :goto_76a

    .line 233
    :cond_77d
    invoke-static {v4}, Ls6/h;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 234
    :goto_781
    check-cast v0, Ljava/util/List;

    .line 235
    instance-of v1, v0, Le7/a;

    if-eqz v1, :cond_792

    instance-of v1, v0, Le7/b;

    if-eqz v1, :cond_78c

    goto :goto_792

    .line 236
    :cond_78c
    const-string v1, "kotlin.collections.MutableList"

    invoke-static {v1, v0}, Ld7/o;->c(Ljava/lang/String;Ljava/lang/Object;)V

    throw v20

    .line 237
    :cond_792
    :goto_792
    :try_start_792
    check-cast v0, Ljava/util/List;
    :try_end_794
    .catch Ljava/lang/ClassCastException; {:try_start_792 .. :try_end_794} :catch_797

    .line 238
    sput-object v0, La2/j;->d:Ljava/util/List;

    goto :goto_7b4

    :catch_797
    move-exception v0

    .line 239
    const-class v1, Ld7/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld7/g;->h(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 240
    throw v0

    .line 241
    :cond_7a2
    const-string v1, "Requested element count "

    const-string v2, " is less than zero."

    .line 242
    invoke-static {v0, v1, v2}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_7b4
    :goto_7b4
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 245
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lh7/c;

    add-int/lit8 v3, v0, -0x1

    const/4 v7, 0x1

    const/4 v13, 0x0

    .line 246
    invoke-direct {v2, v13, v3, v7}, Lh7/a;-><init>(III)V

    .line 247
    invoke-virtual {v2}, Lh7/c;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7da

    move-object/from16 v5, v23

    goto :goto_7e7

    .line 248
    :cond_7da
    iget v2, v2, Lh7/a;->b:I

    add-int/2addr v2, v7

    .line 249
    invoke-interface {v1, v13, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 250
    :goto_7e7
    invoke-static {}, La2/j;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    new-instance v0, Lorg/json/JSONArray;

    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 252
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 253
    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "accessKey"

    .line 255
    sget-object v2, La2/j;->c:La2/h;

    if-eqz v2, :cond_971

    .line 256
    iget-object v2, v2, La2/h;->c:Ljava/lang/String;

    .line 257
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 259
    sget-object v1, Lq2/z;->c:Lo3/a;

    .line 260
    const-string v1, "\nTransformed_CAPI_JSON:\nURL: %s\nFROM=========\n%s\n>>>>>>TO>>>>>>\n%s\n=============\n"

    const/4 v14, 0x2

    .line 261
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "jsonBodyStr.toString(2)"

    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v26, v3, v19

    const/16 v18, 0x1

    aput-object v22, v3, v18

    aput-object v2, v3, v14

    move-object/from16 v2, v28

    .line 262
    invoke-static {v8, v2, v1, v3}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "Content-Type"

    const-string v3, "application/json"

    .line 265
    new-instance v4, Lr6/d;

    invoke-direct {v4, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    invoke-static {v4}, Ls6/r;->t(Lr6/d;)Ljava/util/Map;

    move-result-object v1

    .line 267
    const-string v3, "UTF-8"

    const-string v4, "urlStr"

    move-object/from16 v6, v26

    invoke-static {v4, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :try_start_84e
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v6, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object/from16 v6, v25

    .line 270
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 271
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_88d

    check-cast v7, Ljava/lang/Iterable;

    .line 272
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_86f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 273
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86f

    :catch_885
    move-exception v0

    goto/16 :goto_93f

    :catch_888
    move-exception v0

    const/4 v7, 0x1

    const/4 v13, 0x0

    goto/16 :goto_953

    .line 274
    :cond_88d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a6

    .line 275
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v6, "PUT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a4

    goto :goto_8a6

    :cond_8a4
    const/4 v1, 0x0

    goto :goto_8a7

    :cond_8a6
    :goto_8a6
    const/4 v1, 0x1

    .line 276
    :goto_8a7
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const v1, 0xea60

    .line 277
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 278
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 279
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 280
    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 282
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 283
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    sget-object v1, La2/j;->a:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_909

    .line 286
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8f2
    .catch Ljava/net/UnknownHostException; {:try_start_84e .. :try_end_8f2} :catch_888
    .catch Ljava/io/IOException; {:try_start_84e .. :try_end_8f2} :catch_885

    .line 287
    :goto_8f2
    :try_start_8f2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8ff

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8fb
    .catchall {:try_start_8f2 .. :try_end_8fb} :catchall_8fc

    goto :goto_8f2

    :catchall_8fc
    move-exception v0

    move-object v3, v0

    goto :goto_903

    .line 289
    :cond_8ff
    :try_start_8ff
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_902
    .catch Ljava/net/UnknownHostException; {:try_start_8ff .. :try_end_902} :catch_888
    .catch Ljava/io/IOException; {:try_start_8ff .. :try_end_902} :catch_885

    goto :goto_909

    .line 290
    :goto_903
    :try_start_903
    throw v3
    :try_end_904
    .catchall {:try_start_903 .. :try_end_904} :catchall_904

    :catchall_904
    move-exception v0

    :try_start_905
    invoke-static {v1, v3}, Lb2/k;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_909
    :goto_909
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connResponseSB.toString()"

    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    sget-object v1, Lq2/z;->c:Lo3/a;

    .line 293
    const-string v1, "\nResponse Received: \n%s\n%s"

    .line 294
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v6, v19

    const/16 v18, 0x1

    aput-object v3, v6, v18

    .line 295
    invoke-static {v8, v2, v1, v6}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    new-instance v1, La2/i;

    const/4 v13, 0x0

    invoke-direct {v1, v0, v13, v5}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lq2/g0;->K(Ljava/lang/Runnable;)V
    :try_end_93d
    .catch Ljava/net/UnknownHostException; {:try_start_905 .. :try_end_93d} :catch_888
    .catch Ljava/io/IOException; {:try_start_905 .. :try_end_93d} :catch_885

    goto/16 :goto_9a9

    .line 298
    :goto_93f
    sget-object v1, Lq2/z;->c:Lo3/a;

    const-string v1, "Send to server failed: \n%s"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    move-object/from16 v4, v24

    invoke-static {v4, v2, v1, v3}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9a9

    .line 299
    :goto_953
    sget-object v1, Lq2/z;->c:Lo3/a;

    const-string v1, "Connection failed, retrying: \n%s"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v8, v2, v1, v3}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1f7

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 301
    new-instance v1, La2/i;

    invoke-direct {v1, v0, v13, v5}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lq2/g0;->K(Ljava/lang/Runnable;)V

    goto :goto_9a9

    .line 302
    :cond_971
    invoke-static/range {v21 .. v21}, Ld7/g;->i(Ljava/lang/String;)V

    throw v20

    :catch_975
    move-exception v0

    move-object v4, v9

    move-object v2, v10

    goto :goto_98f

    :cond_979
    move-object/from16 v21, v2

    move-object/from16 v20, v6

    move-object v4, v9

    move-object v2, v10

    .line 303
    :try_start_97f
    invoke-static/range {v21 .. v21}, Ld7/g;->i(Ljava/lang/String;)V

    throw v20

    :catch_983
    move-exception v0

    goto :goto_98f

    :cond_985
    move-object/from16 v21, v2

    move-object/from16 v20, v6

    move-object v4, v9

    move-object v2, v10

    .line 304
    invoke-static/range {v21 .. v21}, Ld7/g;->i(Ljava/lang/String;)V

    throw v20
    :try_end_98f
    .catch Lr6/i; {:try_start_97f .. :try_end_98f} :catch_983

    .line 305
    :goto_98f
    sget-object v1, Lq2/z;->c:Lo3/a;

    .line 306
    const-string v1, "\n Credentials not initialized Error when logging: \n%s"

    const/4 v7, 0x1

    .line 307
    new-array v3, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v3, v19

    .line 308
    invoke-static {v4, v2, v1, v3}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9a9

    .line 309
    :goto_99e
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 310
    const-string v0, "\n GraphPathComponents Error when logging: \n%s"

    .line 311
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v22, v1, v19

    .line 312
    invoke-static {v4, v2, v0, v1}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9a9
    return-void

    :pswitch_data_9aa
    .packed-switch 0x0
        :pswitch_257
        :pswitch_236
        :pswitch_223
        :pswitch_21b
        :pswitch_213
        :pswitch_1f8
        :pswitch_1af
        :pswitch_187
        :pswitch_174
        :pswitch_157
        :pswitch_14f
        :pswitch_e8
        :pswitch_e4
        :pswitch_dc
        :pswitch_cc
        :pswitch_c4
        :pswitch_18
    .end packed-switch
.end method
