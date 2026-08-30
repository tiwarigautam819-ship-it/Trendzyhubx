###### Class q2.m0 (q2.m0)
.class public final Lq2/m0;
.super Landroid/os/AsyncTask;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public c:[Ljava/lang/Exception;

.field public final synthetic d:Lq2/p0;


# direct methods
.method public constructor <init>(Lq2/p0;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lq2/m0;->d:Lq2/p0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lq2/m0;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lq2/m0;->b:Landroid/os/Bundle;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Exception;

    .line 12
    .line 13
    iput-object p1, p0, Lq2/m0;->c:[Ljava/lang/Exception;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 13

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    goto/16 :goto_9a

    .line 9
    .line 10
    :cond_9
    :try_start_9
    const-string v0, "p0"

    .line 11
    .line 12
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lq2/m0;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    const-string v0, "media"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_9a

    .line 26
    .line 27
    :cond_1a
    array-length v0, p1

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    .line 29
    .line 30
    array-length v2, p1

    .line 31
    new-array v2, v2, [Ljava/lang/Exception;

    .line 32
    .line 33
    iput-object v2, p0, Lq2/m0;->c:[Ljava/lang/Exception;

    .line 34
    .line 35
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 36
    .line 37
    array-length v3, p1

    .line 38
    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v4, Lx1/a;->l:Ljava/util/Date;

    .line 47
    .line 48
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 49
    .line 50
    .line 51
    move-result-object v4
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_52

    .line 52
    const/4 v5, 0x1

    .line 53
    :try_start_34
    array-length v6, p1

    .line 54
    const/4 v7, 0x0

    .line 55
    :goto_36
    if-ge v7, v6, :cond_82

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_54

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_9a

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lx1/a0;

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 80
    .line 81
    .line 82
    goto :goto_42

    .line 83
    :catchall_52
    move-exception p1

    .line 84
    goto :goto_9b

    .line 85
    :cond_54
    aget-object v8, p1, v7

    .line 86
    .line 87
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8}, Lq2/g0;->C(Landroid/net/Uri;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_6a

    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    aput-object v8, v0, v7

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 104
    .line 105
    .line 106
    goto :goto_7f

    .line 107
    :cond_6a
    new-instance v9, Lq2/l0;

    .line 108
    .line 109
    invoke-direct {v9, v0, v7, p0, v2}, Lq2/l0;-><init>([Ljava/lang/String;ILq2/m0;Ljava/util/concurrent/CountDownLatch;)V

    .line 110
    .line 111
    .line 112
    const-string v10, "uri"

    .line 113
    .line 114
    invoke-static {v10, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v8, v9}, Landroid/support/v4/media/session/a;->g(Lx1/a;Landroid/net/Uri;Lq2/l0;)Lx1/z;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Lx1/z;->d()Lx1/a0;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v3, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :goto_7f
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_36

    .line 131
    :cond_82
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_85} :catch_86
    .catchall {:try_start_34 .. :try_end_85} :catchall_52

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :catch_86
    :try_start_86
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_9a

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lx1/a0;

    .line 150
    .line 151
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_99
    .catchall {:try_start_86 .. :try_end_99} :catchall_52

    .line 152
    .line 153
    .line 154
    goto :goto_8a

    .line 155
    :cond_9a
    :goto_9a
    return-object v1

    .line 156
    :goto_9b
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-object v1
.end method

.method public final b([Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lq2/m0;->b:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/m0;->d:Lq2/p0;

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    iget-object v2, v1, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 13
    .line 14
    if-eqz v2, :cond_16

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    goto :goto_16

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto/16 :goto_96

    .line 22
    .line 23
    :cond_16
    :goto_16
    iget-object v2, p0, Lq2/m0;->c:[Ljava/lang/Exception;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_1a
    if-ge v4, v3, :cond_27

    .line 28
    .line 29
    aget-object v5, v2, v4

    .line 30
    .line 31
    if-eqz v5, :cond_24

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lq2/p0;->e(Ljava/lang/Exception;)V
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_13

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1a

    .line 40
    :cond_27
    const-string v2, "Failed to stage photos for web dialog"

    .line 41
    .line 42
    if-nez p1, :cond_34

    .line 43
    .line 44
    :try_start_2b
    new-instance p1, Lx1/l;

    .line 45
    .line 46
    invoke-direct {p1, v2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    invoke-static {p1}, Ls6/f;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_48

    .line 63
    .line 64
    new-instance p1, Lx1/l;

    .line 65
    .line 66
    invoke-direct {p1, v2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_48
    new-instance v2, Lorg/json/JSONArray;

    .line 74
    .line 75
    check-cast p1, Ljava/util/Collection;

    .line 76
    .line 77
    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2}, Lq2/g0;->H(Landroid/os/Bundle;Lorg/json/JSONArray;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lq2/g0;->p()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, "/dialog/"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lq2/m0;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {p1, v2, v0}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v1, Lq2/p0;->a:Ljava/lang/String;

    .line 122
    .line 123
    iget-object p1, v1, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 124
    .line 125
    if-eqz p1, :cond_8e

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    div-int/lit8 p1, p1, 0x2

    .line 136
    .line 137
    add-int/lit8 p1, p1, 0x1

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lq2/p0;->f(I)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_8e
    const-string p1, "Required value was null."

    .line 144
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0
    :try_end_96
    .catchall {:try_start_2b .. :try_end_96} :catchall_13

    .line 151
    :goto_96
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

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
    check-cast p1, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lq2/m0;->a([Ljava/lang/Void;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    .line 15
    return-object p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

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
    return-void

    .line 8
    :cond_7
    :try_start_7
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lq2/m0;->b([Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

###### Class q2.l0 (q2.l0)
.class public final synthetic Lq2/l0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lq2/m0;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;ILq2/m0;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/l0;->a:[Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lq2/l0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lq2/l0;->c:Lq2/m0;

    .line 9
    .line 10
    iput-object p4, p0, Lq2/l0;->d:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lq2/l0;->a:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lq2/l0;->b:I

    .line 4
    .line 5
    :try_start_4
    iget-object v2, p1, Lx1/c0;->c:Lx1/o;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_18

    .line 6
    .line 7
    const-string v3, "Error staging photo."

    .line 8
    .line 9
    if-eqz v2, :cond_1a

    .line 10
    .line 11
    :try_start_a
    invoke-virtual {v2}, Lx1/o;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v3, v0

    .line 19
    :goto_12
    new-instance v0, Lx1/m;

    .line 20
    .line 21
    invoke-direct {v0, p1, v3}, Lx1/m;-><init>(Lx1/c0;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :catch_18
    move-exception p1

    .line 26
    goto :goto_35

    .line 27
    :cond_1a
    iget-object p1, p1, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 28
    .line 29
    if-eqz p1, :cond_2f

    .line 30
    .line 31
    const-string v2, "uri"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_29

    .line 38
    .line 39
    aput-object p1, v0, v1

    .line 40
    .line 41
    goto :goto_3b

    .line 42
    :cond_29
    new-instance p1, Lx1/l;

    .line 43
    .line 44
    invoke-direct {p1, v3}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2f
    new-instance p1, Lx1/l;

    .line 49
    .line 50
    invoke-direct {p1, v3}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_18

    .line 54
    :goto_35
    iget-object v0, p0, Lq2/l0;->c:Lq2/m0;

    .line 55
    .line 56
    iget-object v0, v0, Lq2/m0;->c:[Ljava/lang/Exception;

    .line 57
    .line 58
    aput-object p1, v0, v1

    .line 59
    .line 60
    :goto_3b
    iget-object p1, p0, Lq2/l0;->d:Ljava/util/concurrent/CountDownLatch;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    .line 64
    .line 65
    return-void
.end method
