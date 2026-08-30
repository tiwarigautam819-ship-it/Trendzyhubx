###### Class y2.j (y2.j)
.class public final Ly2/j;
.super Ly2/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ly2/i;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Ly2/t;-><init>(Landroid/os/Parcel;)V

    .line 5
    const-string p1, "get_token"

    iput-object p1, p0, Ly2/j;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/t;->b:Ly2/o;

    .line 3
    const-string p1, "get_token"

    iput-object p1, p0, Ly2/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly2/j;->c:Ly2/i;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Ly2/i;->d:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Ly2/i;->c:Lb2/d;

    .line 10
    .line 11
    iput-object v1, p0, Ly2/j;->c:Ly2/i;

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/j;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ly2/m;)I
    .registers 9

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly2/i;

    .line 7
    .line 8
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_12

    .line 17
    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-direct {v0, v1, p1}, Ly2/i;-><init>(Landroid/content/Context;Ly2/m;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ly2/j;->c:Ly2/i;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_1c
    iget-boolean v1, v0, Ly2/i;->d:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_8b

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_25

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    :goto_23
    move v1, v2

    .line 37
    goto :goto_5f

    .line 38
    :cond_25
    :try_start_25
    iget v1, v0, Ly2/i;->i:I

    .line 39
    .line 40
    sget-object v4, Lq2/b0;->a:Lq2/b0;

    .line 41
    .line 42
    const-class v4, Lq2/b0;

    .line 43
    .line 44
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_8b

    .line 48
    if-eqz v5, :cond_33

    .line 49
    .line 50
    :goto_31
    move v1, v2

    .line 51
    goto :goto_47

    .line 52
    :cond_33
    :try_start_33
    sget-object v5, Lq2/b0;->a:Lq2/b0;

    .line 53
    .line 54
    sget-object v6, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    filled-new-array {v1}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v5, v6, v1}, Lq2/b0;->g(Ljava/util/List;[I)Lf4/j;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v1, v1, Lf4/j;->a:I
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_42

    .line 65
    .line 66
    goto :goto_47

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    :try_start_43
    invoke-static {v1, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_8b

    .line 69
    .line 70
    .line 71
    goto :goto_31

    .line 72
    :goto_47
    const/4 v4, -0x1

    .line 73
    if-ne v1, v4, :cond_4c

    .line 74
    .line 75
    monitor-exit v0

    .line 76
    goto :goto_23

    .line 77
    :cond_4c
    :try_start_4c
    iget-object v1, v0, Ly2/i;->a:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v1}, Lq2/b0;->d(Landroid/content/Context;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_56

    .line 84
    .line 85
    move v1, v2

    .line 86
    goto :goto_5e

    .line 87
    :cond_56
    iput-boolean v3, v0, Ly2/i;->d:Z

    .line 88
    .line 89
    iget-object v4, v0, Ly2/i;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v4, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_8b

    .line 92
    .line 93
    .line 94
    move v1, v3

    .line 95
    :goto_5e
    monitor-exit v0

    .line 96
    :goto_5f
    if-nez v1, :cond_62

    .line 97
    .line 98
    return v2

    .line 99
    :cond_62
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Ly2/o;->e:Ly2/p;

    .line 104
    .line 105
    if-eqz v0, :cond_7d

    .line 106
    .line 107
    iget-object v0, v0, Ly2/p;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Ly2/q;

    .line 110
    .line 111
    iget-object v0, v0, Ly2/q;->j0:Landroid/view/View;

    .line 112
    .line 113
    if-eqz v0, :cond_76

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_7d

    .line 119
    :cond_76
    const-string p1, "progressBar"

    .line 120
    .line 121
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    throw p1

    .line 126
    :cond_7d
    :goto_7d
    new-instance v0, Lb2/d;

    .line 127
    .line 128
    const/16 v1, 0xa

    .line 129
    .line 130
    invoke-direct {v0, p0, v1, p1}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Ly2/j;->c:Ly2/i;

    .line 134
    .line 135
    if-eqz p1, :cond_8a

    .line 136
    .line 137
    iput-object v0, p1, Ly2/i;->c:Lb2/d;

    .line 138
    .line 139
    :cond_8a
    return v3

    .line 140
    :catchall_8b
    move-exception p1

    .line 141
    monitor-exit v0

    .line 142
    throw p1
.end method

.method public final l(Ly2/m;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    iget-object v0, p1, Ly2/m;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p2, v0}, Ly1/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Lx1/a;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v0, p1, Ly2/m;->w:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "com.facebook.platform.extra.ID_TOKEN"

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3d

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_21

    .line 32
    .line 33
    goto :goto_3d

    .line 34
    :cond_21
    if-eqz v0, :cond_3d

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1
    :try_end_27
    .catch Lx1/l; {:try_start_a .. :try_end_27} :catch_49

    .line 40
    if-nez v1, :cond_2a

    .line 41
    .line 42
    goto :goto_3d

    .line 43
    :cond_2a
    :try_start_2a
    new-instance v1, Lx1/g;

    .line 44
    .line 45
    invoke-direct {v1, p2, v0}, Lx1/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_31

    .line 46
    .line 47
    .line 48
    :goto_2f
    move-object v5, v1

    .line 49
    goto :goto_3f

    .line 50
    :catch_31
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    :try_start_33
    new-instance p2, Lx1/l;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    .line 63
    goto :goto_2f

    .line 64
    :goto_3f
    new-instance v1, Ly2/n;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v3, 0x1

    .line 69
    move-object v2, p1

    .line 70
    invoke-direct/range {v1 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Lx1/l; {:try_start_33 .. :try_end_48} :catch_49

    .line 71
    .line 72
    .line 73
    goto :goto_6e

    .line 74
    :catch_49
    move-exception v0

    .line 75
    move-object p1, v0

    .line 76
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object v1, p2, Ly2/o;->g:Ly2/m;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    if-eqz p1, :cond_5f

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_5f
    const-string p1, ": "

    .line 97
    .line 98
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v0, Ly2/n;

    .line 103
    .line 104
    const/4 v2, 0x3

    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object v1, v0

    .line 111
    :goto_6e
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v1}, Ly2/o;->d(Ly2/n;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
