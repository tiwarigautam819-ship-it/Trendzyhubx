###### Class y2.o (y2.o)
.class public final Ly2/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Ly2/t;

.field public b:I

.field public c:Ly2/q;

.field public d:Lcom/google/firebase/messaging/j0;

.field public e:Ly2/p;

.field public f:Z

.field public g:Ly2/m;

.field public h:Ljava/util/Map;

.field public i:Ljava/util/LinkedHashMap;

.field public j:Ly2/r;

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/o;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Ly2/o;->h:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_9
    iget-object v1, p0, Ly2/o;->h:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v1, :cond_f

    .line 13
    .line 14
    iput-object v0, p0, Ly2/o;->h:Ljava/util/Map;

    .line 15
    .line 16
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_31

    .line 21
    .line 22
    if-eqz p3, :cond_31

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x2c

    .line 39
    .line 40
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_31
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b()Z
    .registers 10

    .line 1
    iget-boolean v0, p0, Ly2/o;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    const-string v2, "android.permission.INTERNET"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, -0x1

    .line 21
    :goto_14
    if-eqz v0, :cond_53

    .line 22
    .line 23
    invoke-virtual {p0}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_25

    .line 29
    .line 30
    const v2, 0x7f0f002b

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move-object v2, v1

    .line 39
    :goto_26
    if-eqz v0, :cond_2f

    .line 40
    .line 41
    const v1, 0x7f0f002a

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2f
    iget-object v4, p0, Ly2/o;->g:Ly2/m;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_3b

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_3b
    if-eqz v1, :cond_40

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_40
    const-string v1, ": "

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    new-instance v3, Ly2/n;

    .line 72
    .line 73
    const/4 v5, 0x3

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-direct/range {v3 .. v8}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Ly2/o;->c(Ly2/n;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    return v0

    .line 84
    :cond_53
    iput-boolean v1, p0, Ly2/o;->f:Z

    .line 85
    .line 86
    return v1
.end method

.method public final c(Ly2/n;)V
    .registers 10

    .line 1
    const-string v0, "outcome"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ly2/n;->a:I

    .line 7
    .line 8
    invoke-virtual {p0}, Ly2/o;->f()Ly2/t;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_31

    .line 13
    .line 14
    invoke-virtual {v1}, Ly2/t;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v7, v1, Ly2/t;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_25

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_22

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-ne v0, v1, :cond_20

    .line 28
    .line 29
    const-string v1, "error"

    .line 30
    .line 31
    :goto_1e
    move-object v4, v1

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_22
    const-string v1, "cancel"

    .line 36
    .line 37
    goto :goto_1e

    .line 38
    :cond_25
    const-string v1, "success"

    .line 39
    .line 40
    goto :goto_1e

    .line 41
    :goto_28
    iget-object v5, p1, Ly2/n;->d:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, p1, Ly2/n;->e:Ljava/lang/String;

    .line 44
    .line 45
    move-object v2, p0

    .line 46
    invoke-virtual/range {v2 .. v7}, Ly2/o;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v2, p0

    .line 51
    :goto_32
    iget-object v1, v2, Ly2/o;->h:Ljava/util/Map;

    .line 52
    .line 53
    if-eqz v1, :cond_38

    .line 54
    .line 55
    iput-object v1, p1, Ly2/n;->g:Ljava/util/Map;

    .line 56
    .line 57
    :cond_38
    iget-object v1, v2, Ly2/o;->i:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    if-eqz v1, :cond_3e

    .line 60
    .line 61
    iput-object v1, p1, Ly2/n;->h:Ljava/util/HashMap;

    .line 62
    .line 63
    :cond_3e
    const/4 v1, 0x0

    .line 64
    iput-object v1, v2, Ly2/o;->a:[Ly2/t;

    .line 65
    .line 66
    const/4 v3, -0x1

    .line 67
    iput v3, v2, Ly2/o;->b:I

    .line 68
    .line 69
    iput-object v1, v2, Ly2/o;->g:Ly2/m;

    .line 70
    .line 71
    iput-object v1, v2, Ly2/o;->h:Ljava/util/Map;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    iput v4, v2, Ly2/o;->k:I

    .line 75
    .line 76
    iput v4, v2, Ly2/o;->l:I

    .line 77
    .line 78
    iget-object v5, v2, Ly2/o;->d:Lcom/google/firebase/messaging/j0;

    .line 79
    .line 80
    if-eqz v5, :cond_7f

    .line 81
    .line 82
    iget-object v5, v5, Lcom/google/firebase/messaging/j0;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v5, Ly2/q;

    .line 85
    .line 86
    iput-object v1, v5, Ly2/q;->g0:Ly2/m;

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    if-ne v0, v1, :cond_5b

    .line 90
    .line 91
    move v3, v4

    .line 92
    :cond_5b
    new-instance v0, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "com.facebook.LoginFragment:Result"

    .line 98
    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Landroid/content/Intent;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v5}, Landroidx/fragment/app/c0;->k()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_7f

    .line 119
    .line 120
    if-eqz v0, :cond_7f

    .line 121
    .line 122
    invoke-virtual {v0, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 126
    .line 127
    .line 128
    :cond_7f
    return-void
.end method

.method public final d(Ly2/n;)V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "outcome"

    .line 6
    .line 7
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Ly2/n;->b:Lx1/a;

    .line 11
    .line 12
    if-eqz v2, :cond_7b

    .line 13
    .line 14
    sget-object v3, Lx1/a;->l:Ljava/util/Date;

    .line 15
    .line 16
    invoke-static {}, Lh8/b;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_7b

    .line 21
    .line 22
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v6, 0x3

    .line 27
    const-string v10, ": "

    .line 28
    .line 29
    if-eqz v3, :cond_3b

    .line 30
    .line 31
    :try_start_1e
    iget-object v3, v3, Lx1/a;->i:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, v2, Lx1/a;->i:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v3, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3b

    .line 40
    .line 41
    iget-object v12, v1, Ly2/o;->g:Ly2/m;

    .line 42
    .line 43
    iget-object v14, v0, Ly2/n;->b:Lx1/a;

    .line 44
    .line 45
    iget-object v15, v0, Ly2/n;->c:Lx1/g;

    .line 46
    .line 47
    new-instance v11, Ly2/n;

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    const/4 v13, 0x1

    .line 54
    invoke-direct/range {v11 .. v17}, Ly2/n;-><init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_53

    .line 58
    :catch_39
    move-exception v0

    .line 59
    goto :goto_57

    .line 60
    :cond_3b
    iget-object v5, v1, Ly2/o;->g:Ly2/m;

    .line 61
    .line 62
    const-string v0, "User logged in as different Facebook user."

    .line 63
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {v10, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    new-instance v4, Ly2/n;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-direct/range {v4 .. v9}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object v11, v4

    .line 84
    :goto_53
    invoke-virtual {v1, v11}, Ly2/o;->c(Ly2/n;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_56} :catch_39

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_57
    iget-object v5, v1, Ly2/o;->g:Ly2/m;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "Caught exception"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_6c

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_6c
    invoke-static {v10, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    new-instance v4, Ly2/n;

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-direct/range {v4 .. v9}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v4}, Ly2/o;->c(Ly2/n;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_7b
    invoke-virtual/range {p0 .. p1}, Ly2/o;->c(Ly2/n;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e()Landroidx/fragment/app/h0;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/o;->c:Ly2/q;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final f()Ly2/t;
    .registers 4

    .line 1
    iget v0, p0, Ly2/o;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_c

    .line 5
    .line 6
    iget-object v2, p0, Ly2/o;->a:[Ly2/t;

    .line 7
    .line 8
    if-eqz v2, :cond_c

    .line 9
    .line 10
    aget-object v0, v2, v0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    return-object v1
.end method

.method public final g()Ly2/r;
    .registers 5

    .line 1
    iget-object v0, p0, Ly2/o;->j:Ly2/r;

    .line 2
    .line 3
    if-eqz v0, :cond_21

    .line 4
    .line 5
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    :goto_b
    move-object v1, v2

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    :try_start_d
    iget-object v1, v0, Ly2/r;->a:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    .line 15
    .line 16
    goto :goto_15

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_b

    .line 22
    :goto_15
    iget-object v3, p0, Ly2/o;->g:Ly2/m;

    .line 23
    .line 24
    if-eqz v3, :cond_1b

    .line 25
    .line 26
    iget-object v2, v3, Ly2/m;->d:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1b
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3f

    .line 33
    .line 34
    :cond_21
    new-instance v0, Ly2/r;

    .line 35
    .line 36
    invoke-virtual {p0}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2a

    .line 41
    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_2e
    iget-object v2, p0, Ly2/o;->g:Ly2/m;

    .line 48
    .line 49
    if-eqz v2, :cond_36

    .line 50
    .line 51
    iget-object v2, v2, Ly2/m;->d:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v2, :cond_3a

    .line 54
    .line 55
    :cond_36
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_3a
    invoke-direct {v0, v1, v2}, Ly2/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Ly2/o;->j:Ly2/r;

    .line 63
    .line 64
    :cond_3f
    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13

    .line 1
    iget-object v0, p0, Ly2/o;->g:Ly2/m;

    .line 2
    .line 3
    const-string v1, "3_method"

    .line 4
    .line 5
    const-string v2, "5_error_message"

    .line 6
    .line 7
    const-string v3, "2_result"

    .line 8
    .line 9
    const-string v4, "fb_mobile_login_method_complete"

    .line 10
    .line 11
    if-nez v0, :cond_3a

    .line 12
    .line 13
    invoke-virtual {p0}, Ly2/o;->g()Ly2/r;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 18
    .line 19
    invoke-static {p2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_b4

    .line 26
    .line 27
    :cond_1a
    :try_start_1a
    sget p4, Ly2/r;->c:I

    .line 28
    .line 29
    const-string p4, ""

    .line 30
    .line 31
    invoke-static {p4}, Lx1/w;->d(Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    const-string p5, "error"

    .line 36
    .line 37
    invoke-virtual {p4, v3, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p2, Ly2/r;->b:Ly1/n;

    .line 47
    .line 48
    invoke-virtual {p1, p4, v4}, Ly1/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_34

    .line 49
    .line 50
    .line 51
    goto/16 :goto_b4

    .line 52
    .line 53
    :catchall_34
    move-exception p1

    .line 54
    invoke-static {p1, p2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_b4

    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p0}, Ly2/o;->g()Ly2/r;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v6, v0, Ly2/m;->e:Ljava/lang/String;

    .line 64
    .line 65
    iget-boolean v0, v0, Ly2/m;->m:Z

    .line 66
    .line 67
    if-eqz v0, :cond_46

    .line 68
    .line 69
    const-string v4, "foa_mobile_login_method_complete"

    .line 70
    .line 71
    :cond_46
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4d

    .line 76
    .line 77
    goto :goto_b4

    .line 78
    :cond_4d
    :try_start_4d
    sget v0, Ly2/r;->c:I

    .line 79
    .line 80
    invoke-static {v6}, Lx1/w;->d(Ljava/lang/String;)Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz p3, :cond_5e

    .line 88
    .line 89
    invoke-virtual {v0, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_5e

    .line 93
    :catchall_5c
    move-exception p1

    .line 94
    goto :goto_b1

    .line 95
    :cond_5e
    :goto_5e
    if-eqz p4, :cond_65

    .line 96
    .line 97
    const-string p2, "4_error_code"

    .line 98
    .line 99
    invoke-virtual {v0, p2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_65
    if-eqz p5, :cond_a8

    .line 103
    .line 104
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_a8

    .line 109
    .line 110
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    :cond_7a
    :goto_7a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    if-eqz p4, :cond_9a

    .line 128
    .line 129
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    check-cast p4, Ljava/util/Map$Entry;

    .line 134
    .line 135
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p5

    .line 139
    check-cast p5, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz p5, :cond_7a

    .line 142
    .line 143
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-virtual {p2, p5, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_7a

    .line 155
    :cond_9a
    new-instance p3, Lorg/json/JSONObject;

    .line 156
    .line 157
    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 158
    .line 159
    .line 160
    const-string p2, "6_extras"

    .line 161
    .line 162
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, v5, Ly2/r;->b:Ly1/n;

    .line 173
    .line 174
    invoke-virtual {p1, v0, v4}, Ly1/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_4d .. :try_end_b0} :catchall_5c

    .line 175
    .line 176
    .line 177
    goto :goto_b4

    .line 178
    :goto_b1
    invoke-static {p1, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :goto_b4
    return-void
.end method

.method public final i(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    iget v0, p0, Ly2/o;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ly2/o;->k:I

    .line 6
    .line 7
    iget-object v0, p0, Ly2/o;->g:Ly2/m;

    .line 8
    .line 9
    if-eqz v0, :cond_30

    .line 10
    .line 11
    if-eqz p3, :cond_1b

    .line 12
    .line 13
    sget v0, Lcom/facebook/CustomTabMainActivity;->c:I

    .line 14
    .line 15
    const-string v0, "CustomTabMainActivity.no_activity_exception"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p0}, Ly2/o;->j()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {p0}, Ly2/o;->f()Ly2/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_30

    .line 33
    .line 34
    instance-of v1, v0, Ly2/l;

    .line 35
    .line 36
    if-eqz v1, :cond_2d

    .line 37
    .line 38
    if-nez p3, :cond_2d

    .line 39
    .line 40
    iget v1, p0, Ly2/o;->k:I

    .line 41
    .line 42
    iget v2, p0, Ly2/o;->l:I

    .line 43
    .line 44
    if-lt v1, v2, :cond_30

    .line 45
    .line 46
    :cond_2d
    invoke-virtual {v0, p1, p2, p3}, Ly2/t;->h(IILandroid/content/Intent;)Z

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void
.end method

.method public final j()V
    .registers 16

    .line 1
    invoke-virtual {p0}, Ly2/o;->f()Ly2/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 6
    .line 7
    invoke-virtual {v0}, Ly2/t;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v6, v0, Ly2/t;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string v3, "skipped"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p0

    .line 18
    invoke-virtual/range {v1 .. v6}, Ly2/o;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v1, p0

    .line 23
    :goto_16
    iget-object v2, v1, Ly2/o;->a:[Ly2/t;

    .line 24
    .line 25
    :cond_18
    :goto_18
    if-eqz v2, :cond_b3

    .line 26
    .line 27
    iget v0, v1, Ly2/o;->b:I

    .line 28
    .line 29
    array-length v3, v2

    .line 30
    const/4 v4, 0x1

    .line 31
    sub-int/2addr v3, v4

    .line 32
    if-ge v0, v3, :cond_b3

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, v1, Ly2/o;->b:I

    .line 37
    .line 38
    invoke-virtual {p0}, Ly2/o;->f()Ly2/t;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_2c

    .line 43
    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    instance-of v0, v3, Ly2/v;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v0, :cond_3f

    .line 49
    .line 50
    invoke-virtual {p0}, Ly2/o;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3f

    .line 55
    .line 56
    const-string v0, "no_internet_permission"

    .line 57
    .line 58
    const-string v3, "1"

    .line 59
    .line 60
    invoke-virtual {p0, v0, v3, v5}, Ly2/o;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_18

    .line 64
    :cond_3f
    iget-object v0, v1, Ly2/o;->g:Ly2/m;

    .line 65
    .line 66
    if-nez v0, :cond_44

    .line 67
    .line 68
    goto :goto_18

    .line 69
    :cond_44
    iget-boolean v6, v0, Ly2/m;->m:Z

    .line 70
    .line 71
    iget-object v7, v0, Ly2/m;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ly2/t;->k(Ly2/m;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    iput v5, v1, Ly2/o;->k:I

    .line 78
    .line 79
    const-string v0, "3_method"

    .line 80
    .line 81
    if-lez v8, :cond_7e

    .line 82
    .line 83
    invoke-virtual {p0}, Ly2/o;->g()Ly2/r;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3}, Ly2/t;->e()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v6, :cond_5f

    .line 92
    .line 93
    const-string v5, "foa_mobile_login_method_start"

    .line 94
    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    const-string v5, "fb_mobile_login_method_start"

    .line 97
    .line 98
    :goto_61
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_68

    .line 103
    .line 104
    goto :goto_7b

    .line 105
    :cond_68
    :try_start_68
    sget v6, Ly2/r;->c:I

    .line 106
    .line 107
    invoke-static {v7}, Lx1/w;->d(Ljava/lang/String;)Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v4, Ly2/r;->b:Ly1/n;

    .line 115
    .line 116
    invoke-virtual {v0, v6, v5}, Ly1/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_77

    .line 117
    .line 118
    .line 119
    goto :goto_7b

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_7b
    iput v8, v1, Ly2/o;->l:I

    .line 125
    .line 126
    goto :goto_b0

    .line 127
    :cond_7e
    invoke-virtual {p0}, Ly2/o;->g()Ly2/r;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v3}, Ly2/t;->e()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    if-eqz v6, :cond_8b

    .line 136
    .line 137
    const-string v6, "foa_mobile_login_method_not_tried"

    .line 138
    .line 139
    goto :goto_8d

    .line 140
    :cond_8b
    const-string v6, "fb_mobile_login_method_not_tried"

    .line 141
    .line 142
    :goto_8d
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_94

    .line 147
    .line 148
    goto :goto_a7

    .line 149
    :cond_94
    :try_start_94
    sget v10, Ly2/r;->c:I

    .line 150
    .line 151
    invoke-static {v7}, Lx1/w;->d(Ljava/lang/String;)Landroid/os/Bundle;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v7, v0, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v5, Ly2/r;->b:Ly1/n;

    .line 159
    .line 160
    invoke-virtual {v0, v7, v6}, Ly1/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_a3

    .line 161
    .line 162
    .line 163
    goto :goto_a7

    .line 164
    :catchall_a3
    move-exception v0

    .line 165
    invoke-static {v0, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :goto_a7
    const-string v0, "not_tried"

    .line 169
    .line 170
    invoke-virtual {v3}, Ly2/t;->e()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {p0, v0, v3, v4}, Ly2/o;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    :goto_b0
    if-lez v8, :cond_18

    .line 178
    .line 179
    goto :goto_d2

    .line 180
    :cond_b3
    iget-object v10, v1, Ly2/o;->g:Ly2/m;

    .line 181
    .line 182
    if-eqz v10, :cond_d2

    .line 183
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "Login attempt failed."

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const-string v2, ": "

    .line 195
    .line 196
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    new-instance v9, Ly2/n;

    .line 201
    .line 202
    const/4 v11, 0x3

    .line 203
    const/4 v12, 0x0

    .line 204
    const/4 v14, 0x0

    .line 205
    invoke-direct/range {v9 .. v14}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v9}, Ly2/o;->c(Ly2/n;)V

    .line 209
    .line 210
    .line 211
    :cond_d2
    :goto_d2
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly2/o;->a:[Ly2/t;

    .line 7
    .line 8
    check-cast v0, [Landroid/os/Parcelable;

    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Ly2/o;->b:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Ly2/o;->g:Ly2/m;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Ly2/o;->h:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lq2/g0;->N(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Ly2/o;->i:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lq2/g0;->N(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
