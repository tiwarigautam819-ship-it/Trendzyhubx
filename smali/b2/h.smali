###### Class b2.h (b2.h)
.class public final Lb2/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listenerSet"

    .line 7
    .line 8
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lb2/h;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    iput-object p3, p0, Lb2/h;->c:Ljava/util/HashSet;

    .line 22
    .line 23
    iput-object p4, p0, Lb2/h;->d:Ljava/lang/String;

    .line 24
    .line 25
    const-wide/16 p3, 0xc8

    .line 26
    .line 27
    invoke-virtual {p2, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lb2/g;Landroid/view/View;Lc2/a;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lb2/g;->a()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_58

    .line 8
    :cond_7
    iget-object p1, p1, Lb2/g;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lc2/e;->e(Landroid/view/View;)Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lb2/a;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_1a

    .line 18
    .line 19
    check-cast v1, Lb2/a;

    .line 20
    .line 21
    iget-boolean v1, v1, Lb2/a;->e:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1a

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    :goto_1b
    iget-object v2, p0, Lb2/h;->c:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_58

    .line 35
    .line 36
    if-nez v1, :cond_58

    .line 37
    .line 38
    const-class v1, Lb2/c;

    .line 39
    .line 40
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_2f

    .line 46
    .line 47
    goto :goto_52

    .line 48
    :cond_2f
    :try_start_2f
    new-instance v4, Lb2/a;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p3, v4, Lb2/a;->a:Lc2/a;

    .line 54
    .line 55
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, v4, Lb2/a;->b:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object p3, v4, Lb2/a;->c:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-static {v0}, Lc2/e;->e(Landroid/view/View;)Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, v4, Lb2/a;->d:Landroid/view/View$OnClickListener;

    .line 74
    .line 75
    iput-boolean v3, v4, Lb2/a;->e:Z
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_4e

    .line 76
    .line 77
    move-object v5, v4

    .line 78
    goto :goto_52

    .line 79
    :catchall_4e
    move-exception p2

    .line 80
    invoke-static {p2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_52
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_58
    :goto_58
    return-void
.end method

.method public final b(Lb2/g;Landroid/view/View;Lc2/a;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lb2/g;->a()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/AdapterView;

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_5a

    .line 10
    :cond_9
    iget-object p1, p1, Lb2/g;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Lb2/b;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_1c

    .line 20
    .line 21
    check-cast v1, Lb2/b;

    .line 22
    .line 23
    iget-boolean v1, v1, Lb2/b;->e:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1c

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    :goto_1d
    iget-object v2, p0, Lb2/h;->c:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_5a

    .line 37
    .line 38
    if-nez v1, :cond_5a

    .line 39
    .line 40
    const-class v1, Lb2/c;

    .line 41
    .line 42
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_31

    .line 48
    .line 49
    goto :goto_54

    .line 50
    :cond_31
    :try_start_31
    new-instance v4, Lb2/b;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p3, v4, Lb2/b;->a:Lc2/a;

    .line 56
    .line 57
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p3, v4, Lb2/b;->b:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p3, v4, Lb2/b;->c:Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, v4, Lb2/b;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 76
    .line 77
    iput-boolean v3, v4, Lb2/b;->e:Z
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_50

    .line 78
    .line 79
    move-object v5, v4

    .line 80
    goto :goto_54

    .line 81
    :catchall_50
    move-exception p2

    .line 82
    invoke-static {p2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_54
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method

.method public final c(Lb2/g;Landroid/view/View;Lc2/a;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lb2/g;->a()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_3f

    .line 8
    :cond_7
    iget-object p1, p1, Lb2/g;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lc2/e;->f(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lb2/j;

    .line 15
    .line 16
    if-eqz v2, :cond_19

    .line 17
    .line 18
    check-cast v1, Lb2/j;

    .line 19
    .line 20
    iget-boolean v1, v1, Lb2/j;->e:Z

    .line 21
    .line 22
    if-eqz v1, :cond_19

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    iget-object v2, p0, Lb2/h;->c:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_3f

    .line 34
    .line 35
    if-nez v1, :cond_3f

    .line 36
    .line 37
    const-class v1, Lb2/k;

    .line 38
    .line 39
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v3, :cond_2e

    .line 45
    .line 46
    goto :goto_39

    .line 47
    :cond_2e
    :try_start_2e
    new-instance v3, Lb2/j;

    .line 48
    .line 49
    invoke-direct {v3, p3, p2, v0}, Lb2/j;-><init>(Lc2/a;Landroid/view/View;Landroid/view/View;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    .line 50
    .line 51
    .line 52
    move-object v4, v3

    .line 53
    goto :goto_39

    .line 54
    :catchall_35
    move-exception p2

    .line 55
    invoke-static {p2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_39
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public final d()V
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lb2/h;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v2, :cond_f8

    .line 6
    .line 7
    iget-object v3, v1, Lb2/h;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_f8

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_14
    if-ge v6, v4, :cond_f8

    .line 22
    .line 23
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v7, v0

    .line 28
    check-cast v7, Lc2/a;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v8, v0

    .line 35
    check-cast v8, Landroid/view/View;

    .line 36
    .line 37
    if-eqz v7, :cond_2a

    .line 38
    .line 39
    iget-object v0, v7, Lc2/a;->d:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v8, :cond_2d

    .line 42
    .line 43
    :cond_2a
    :goto_2a
    move v14, v5

    .line 44
    goto/16 :goto_f3

    .line 45
    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    iget-object v10, v1, Lb2/h;->d:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v9, :cond_36

    .line 53
    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3d

    .line 60
    .line 61
    goto :goto_2a

    .line 62
    :cond_3d
    :goto_3d
    iget-object v0, v7, Lc2/a;->b:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v9, "unmodifiableList(path)"

    .line 69
    .line 70
    invoke-static {v9, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/16 v11, 0x19

    .line 78
    .line 79
    if-le v9, v11, :cond_51

    .line 80
    .line 81
    goto :goto_2a

    .line 82
    :cond_51
    const/4 v9, -0x1

    .line 83
    invoke-static {v8, v0, v5, v9, v10}, Lk2/e;->g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    move v0, v5

    .line 92
    :goto_5b
    if-ge v0, v10, :cond_2a

    .line 93
    .line 94
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    add-int/lit8 v12, v0, 0x1

    .line 99
    .line 100
    check-cast v11, Lb2/g;

    .line 101
    .line 102
    :try_start_65
    invoke-virtual {v11}, Lb2/g;->a()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    if-nez v13, :cond_6e

    .line 107
    .line 108
    move v14, v5

    .line 109
    goto/16 :goto_ef

    .line 110
    .line 111
    :cond_6e
    sget-object v0, Lc2/e;->a:Lc2/e;

    .line 112
    .line 113
    const-class v14, Lc2/e;

    .line 114
    .line 115
    invoke-static {v14}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_76} :catch_e7

    .line 119
    if-eqz v0, :cond_7a

    .line 120
    .line 121
    :cond_78
    :goto_78
    const/4 v15, 0x0

    .line 122
    goto :goto_b4

    .line 123
    :cond_7a
    move-object/from16 v16, v13

    .line 124
    .line 125
    :goto_7c
    if-eqz v16, :cond_78

    .line 126
    .line 127
    :try_start_7e
    sget-object v15, Lc2/e;->a:Lc2/e;

    .line 128
    .line 129
    invoke-static {v15}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_af

    .line 133
    if-eqz v0, :cond_88

    .line 134
    .line 135
    move v0, v5

    .line 136
    goto :goto_9c

    .line 137
    :cond_88
    :try_start_88
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v5, "com.facebook.react.ReactRootView"

    .line 146
    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_97

    .line 151
    goto :goto_9c

    .line 152
    :catchall_97
    move-exception v0

    .line 153
    :try_start_98
    invoke-static {v0, v15}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    :goto_9c
    if-eqz v0, :cond_a1

    .line 158
    .line 159
    move-object/from16 v15, v16

    .line 160
    .line 161
    goto :goto_b4

    .line 162
    :cond_a1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    instance-of v5, v0, Landroid/view/View;

    .line 167
    .line 168
    if-eqz v5, :cond_78

    .line 169
    .line 170
    move-object/from16 v16, v0

    .line 171
    .line 172
    check-cast v16, Landroid/view/View;
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_af

    .line 173
    .line 174
    const/4 v5, 0x0

    .line 175
    goto :goto_7c

    .line 176
    :catchall_af
    move-exception v0

    .line 177
    :try_start_b0
    invoke-static {v0, v14}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_78

    .line 181
    :goto_b4
    if-eqz v15, :cond_c5

    .line 182
    .line 183
    sget-object v0, Lc2/e;->a:Lc2/e;

    .line 184
    .line 185
    invoke-virtual {v0, v13, v15}, Lc2/e;->l(Landroid/view/View;Landroid/view/View;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c5

    .line 190
    .line 191
    invoke-virtual {v1, v11, v8, v7}, Lb2/h;->c(Lb2/g;Landroid/view/View;Lc2/a;)V

    .line 192
    .line 193
    .line 194
    const/4 v14, 0x0

    .line 195
    goto :goto_ef

    .line 196
    :catch_c3
    const/4 v14, 0x0

    .line 197
    goto :goto_e8

    .line 198
    :cond_c5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v5, "com.facebook.react"
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cf} :catch_c3

    .line 207
    .line 208
    const/4 v14, 0x0

    .line 209
    :try_start_d0
    invoke-static {v0, v5, v14}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_d7

    .line 214
    .line 215
    goto :goto_ef

    .line 216
    :cond_d7
    instance-of v0, v13, Landroid/widget/AdapterView;

    .line 217
    .line 218
    if-nez v0, :cond_df

    .line 219
    .line 220
    invoke-virtual {v1, v11, v8, v7}, Lb2/h;->a(Lb2/g;Landroid/view/View;Lc2/a;)V

    .line 221
    .line 222
    .line 223
    goto :goto_ef

    .line 224
    :cond_df
    instance-of v0, v13, Landroid/widget/ListView;

    .line 225
    .line 226
    if-eqz v0, :cond_ef

    .line 227
    .line 228
    invoke-virtual {v1, v11, v8, v7}, Lb2/h;->b(Lb2/g;Landroid/view/View;Lc2/a;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e6} :catch_e8

    .line 229
    .line 230
    .line 231
    goto :goto_ef

    .line 232
    :catch_e7
    move v14, v5

    .line 233
    :catch_e8
    :goto_e8
    const-class v0, Lb2/i;

    .line 234
    .line 235
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 239
    .line 240
    :cond_ef
    :goto_ef
    move v0, v12

    .line 241
    move v5, v14

    .line 242
    goto/16 :goto_5b

    .line 243
    .line 244
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    move v5, v14

    .line 247
    goto/16 :goto_14

    .line 248
    .line 249
    :cond_f8
    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lb2/h;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lb2/h;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final run()V
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_5c

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_5c

    .line 17
    .line 18
    iget-boolean v1, v0, Lq2/t;->g:Z

    .line 19
    .line 20
    if-nez v1, :cond_16

    .line 21
    .line 22
    goto :goto_5c

    .line 23
    :cond_16
    iget-object v0, v0, Lq2/t;->h:Lorg/json/JSONArray;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_57

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_39

    .line 31
    .line 32
    :try_start_1f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_24
    if-ge v3, v2, :cond_39

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "array.getJSONObject(i)"

    .line 44
    .line 45
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Ly1/j;->g(Lorg/json/JSONObject;)Lc2/a;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_36} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_36} :catch_39
    .catchall {:try_start_1f .. :try_end_36} :catchall_57

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_24

    .line 58
    :catch_39
    :cond_39
    :try_start_39
    iput-object v1, p0, Lb2/h;->b:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v0, p0, Lb2/h;->a:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/View;

    .line 67
    .line 68
    if-nez v0, :cond_46

    .line 69
    .line 70
    goto :goto_5c

    .line 71
    :cond_46
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_59

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 85
    .line 86
    .line 87
    goto :goto_59

    .line 88
    :catchall_57
    move-exception v0

    .line 89
    goto :goto_5d

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lb2/h;->d()V
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_57

    .line 91
    .line 92
    .line 93
    :cond_5c
    :goto_5c
    return-void

    .line 94
    :goto_5d
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
