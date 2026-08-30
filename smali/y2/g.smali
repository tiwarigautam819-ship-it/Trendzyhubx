###### Class y2.g (y2.g)
.class public Ly2/g;
.super Landroidx/fragment/app/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public volatile A0:Ly2/e;

.field public B0:Z

.field public C0:Z

.field public D0:Ly2/m;

.field public t0:Landroid/view/View;

.field public u0:Landroid/widget/TextView;

.field public v0:Landroid/widget/TextView;

.field public w0:Ly2/h;

.field public final x0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile y0:Lx1/a0;

.field public volatile z0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final K(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->E()Landroidx/fragment/app/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ly2/f;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Ly2/f;-><init>(Ly2/g;Landroidx/fragment/app/h0;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lp2/b;->b()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_15

    .line 15
    .line 16
    iget-boolean p1, p0, Ly2/g;->C0:Z

    .line 17
    .line 18
    if-nez p1, :cond_15

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    :goto_16
    invoke-virtual {p0, p1}, Ly2/g;->N(Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final M(Ljava/lang/String;Lc5/h;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Ly2/g;->w0:Ly2/h;

    .line 6
    .line 7
    if-eqz v2, :cond_44

    .line 8
    .line 9
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v3, v1, Lc5/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v7, v3

    .line 16
    check-cast v7, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v3, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v8, v3

    .line 21
    check-cast v8, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v1, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v9, v1

    .line 26
    check-cast v9, Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v13, Lx1/a;

    .line 29
    .line 30
    const-string v14, "facebook"

    .line 31
    .line 32
    sget-object v10, Lx1/f;->f:Lx1/f;

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    move-object/from16 v6, p1

    .line 36
    .line 37
    move-object/from16 v4, p3

    .line 38
    .line 39
    move-object/from16 v11, p4

    .line 40
    .line 41
    move-object v3, v13

    .line 42
    move-object/from16 v13, p5

    .line 43
    .line 44
    invoke-direct/range {v3 .. v14}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v13, v3

    .line 48
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v11, v1, Ly2/o;->g:Ly2/m;

    .line 53
    .line 54
    new-instance v10, Ly2/n;

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/4 v12, 0x1

    .line 59
    invoke-direct/range {v10 .. v15}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v10}, Ly2/o;->d(Ly2/n;)V

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v1, v0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 70
    .line 71
    if-eqz v1, :cond_4b

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_4b
    return-void
.end method

.method public final N(Z)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->E()Landroidx/fragment/app/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "requireActivity().layoutInflater"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_13

    .line 15
    .line 16
    const p1, 0x7f0c0025

    .line 17
    .line 18
    .line 19
    goto :goto_16

    .line 20
    :cond_13
    const p1, 0x7f0c0023

    .line 21
    .line 22
    .line 23
    :goto_16
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "inflater.inflate(getLayo\u2026esId(isSmartLogin), null)"

    .line 29
    .line 30
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0900ac

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "view.findViewById(R.id.progress_bar)"

    .line 41
    .line 42
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Ly2/g;->t0:Landroid/view/View;

    .line 46
    .line 47
    const v0, 0x7f090065

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 55
    .line 56
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Ly2/g;->u0:Landroid/widget/TextView;

    .line 62
    .line 63
    const v0, 0x7f090056

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "null cannot be cast to non-null type android.widget.Button"

    .line 71
    .line 72
    invoke-static {v2, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Landroid/widget/Button;

    .line 76
    .line 77
    new-instance v2, Ll6/b;

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    invoke-direct {v2, p0, v3}, Ll6/b;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f090060

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Ly2/g;->v0:Landroid/widget/TextView;

    .line 99
    .line 100
    const v1, 0x7f0f0028

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    return-object p1
.end method

.method public final O()V
    .registers 9

    .line 1
    iget-object v0, p0, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_36

    .line 12
    :cond_b
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 13
    .line 14
    if-eqz v0, :cond_14

    .line 15
    .line 16
    iget-object v0, v0, Ly2/e;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lp2/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object v0, p0, Ly2/g;->w0:Ly2/h;

    .line 22
    .line 23
    if-eqz v0, :cond_2f

    .line 24
    .line 25
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 30
    .line 31
    new-instance v2, Ly2/n;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v4, 0x2

    .line 36
    const-string v6, "User canceled log in."

    .line 37
    .line 38
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Ly2/o;->d(Ly2/n;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 49
    .line 50
    if-eqz v0, :cond_36

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method public final P(Lx1/l;)V
    .registers 10

    .line 1
    iget-object v0, p0, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_48

    .line 12
    :cond_b
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 13
    .line 14
    if-eqz v0, :cond_14

    .line 15
    .line 16
    iget-object v0, v0, Ly2/e;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lp2/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object v0, p0, Ly2/g;->w0:Ly2/h;

    .line 22
    .line 23
    if-eqz v0, :cond_41

    .line 24
    .line 25
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_2c

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2c
    const-string p1, ": "

    .line 46
    .line 47
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-instance v2, Ly2/n;

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ly2/t;->d()Ly2/o;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v2}, Ly2/o;->d(Ly2/n;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 67
    .line 68
    if-eqz p1, :cond_48

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 71
    .line 72
    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method public final Q(Ljava/lang/String;JLjava/lang/Long;)V
    .registers 28

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fields"

    .line 7
    .line 8
    const-string v2, "id,permissions,name"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    cmp-long v3, p2, v1

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-wide/16 v5, 0x3e8

    .line 19
    .line 20
    if-eqz v3, :cond_28

    .line 21
    .line 22
    new-instance v3, Ljava/util/Date;

    .line 23
    .line 24
    new-instance v7, Ljava/util/Date;

    .line 25
    .line 26
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    mul-long v9, p2, v5

    .line 34
    .line 35
    add-long/2addr v9, v7

    .line 36
    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 37
    .line 38
    .line 39
    move-object v14, v3

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move-object v14, v4

    .line 42
    :goto_29
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    cmp-long v1, v7, v1

    .line 47
    .line 48
    if-eqz v1, :cond_3b

    .line 49
    .line 50
    new-instance v4, Ljava/util/Date;

    .line 51
    .line 52
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    mul-long/2addr v1, v5

    .line 57
    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    move-object v15, v4

    .line 61
    new-instance v11, Lx1/a;

    .line 62
    .line 63
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    const/16 v20, 0x0

    .line 68
    .line 69
    const-string v22, "facebook"

    .line 70
    .line 71
    move-object/from16 v19, v14

    .line 72
    .line 73
    const-string v14, "0"

    .line 74
    .line 75
    move-object/from16 v21, v15

    .line 76
    .line 77
    const/4 v15, 0x0

    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    move-object/from16 v12, p1

    .line 85
    .line 86
    invoke-direct/range {v11 .. v22}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v1, v11

    .line 90
    sget-object v2, Lx1/z;->j:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v11, Lx1/c;

    .line 93
    .line 94
    const/16 v16, 0x2

    .line 95
    .line 96
    move-object/from16 v12, p0

    .line 97
    .line 98
    move-object/from16 v13, p1

    .line 99
    .line 100
    move-object/from16 v14, v19

    .line 101
    .line 102
    move-object/from16 v15, v21

    .line 103
    .line 104
    invoke-direct/range {v11 .. v16}, Lx1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    const-string v2, "me"

    .line 108
    .line 109
    invoke-static {v1, v2, v11}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v2, Lx1/d0;->a:Lx1/d0;

    .line 114
    .line 115
    iput-object v2, v1, Lx1/z;->h:Lx1/d0;

    .line 116
    .line 117
    iput-object v0, v1, Lx1/z;->d:Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-virtual {v1}, Lx1/z;->d()Lx1/a0;

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final R()V
    .registers 10

    .line 1
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Ly2/e;->e:J

    .line 15
    .line 16
    :cond_f
    new-instance v6, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 22
    .line 23
    if-eqz v0, :cond_1b

    .line 24
    .line 25
    iget-object v0, v0, Ly2/e;->c:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    const-string v1, "code"

    .line 30
    .line 31
    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7c

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lq2/g;->k()V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lx1/r;->f:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v1, :cond_5e

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "access_token"

    .line 66
    .line 67
    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v8, Ly2/c;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-direct {v8, p0, v0}, Ly2/c;-><init>(Ly2/g;I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lx1/z;

    .line 79
    .line 80
    sget-object v7, Lx1/d0;->b:Lx1/d0;

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    const-string v5, "device/login_status"

    .line 84
    .line 85
    invoke-direct/range {v3 .. v8}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lx1/z;->d()Lx1/a0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Ly2/g;->y0:Lx1/a0;

    .line 93
    .line 94
    return-void

    .line 95
    :cond_5e
    new-instance v0, Lx1/l;

    .line 96
    .line 97
    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 98
    .line 99
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public final S()V
    .registers 7

    .line 1
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    iget-wide v2, v0, Ly2/e;->d:J

    .line 7
    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v1

    .line 14
    :goto_d
    if-eqz v0, :cond_42

    .line 15
    .line 16
    sget-object v2, Ly2/h;->d:Lx1/w;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_12
    sget-object v3, Ly2/h;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    .line 21
    if-nez v3, :cond_21

    .line 22
    .line 23
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Ly2/h;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    goto :goto_40

    .line 34
    :cond_21
    :goto_21
    sget-object v3, Ly2/h;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_1f

    .line 35
    .line 36
    if-eqz v3, :cond_3a

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    new-instance v1, La2/g;

    .line 40
    .line 41
    const/16 v2, 0x11

    .line 42
    .line 43
    invoke-direct {v1, v2, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    invoke-virtual {v3, v1, v4, v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Ly2/g;->z0:Ljava/util/concurrent/ScheduledFuture;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    :try_start_3a
    const-string v0, "backgroundExecutor"

    .line 60
    .line 61
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_1f

    .line 66
    throw v0

    .line 67
    :cond_42
    return-void
.end method

.method public final T(Ly2/e;)V
    .registers 16

    .line 1
    iput-object p1, p0, Ly2/g;->A0:Ly2/e;

    .line 2
    .line 3
    iget-object v0, p0, Ly2/g;->u0:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "confirmationCode"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_105

    .line 9
    .line 10
    iget-object v3, p1, Ly2/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Ly2/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v3, Lp2/b;->a:Lp2/b;

    .line 18
    .line 19
    const-class v3, Lp2/b;

    .line 20
    .line 21
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_1d

    .line 27
    .line 28
    :catch_1b
    :goto_1b
    move-object v6, v2

    .line 29
    goto :goto_73

    .line 30
    :cond_1d
    :try_start_1d
    new-instance v4, Ljava/util/EnumMap;

    .line 31
    .line 32
    const-class v6, Ly5/a;

    .line 33
    .line 34
    invoke-direct {v4, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    sget-object v6, Ly5/a;->f:Ly5/a;

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v4, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_5c

    .line 45
    .line 46
    .line 47
    :try_start_2e
    new-instance v6, Lx1/w;

    .line 48
    .line 49
    const/16 v7, 0x9

    .line 50
    .line 51
    invoke-direct {v6, v7}, Lx1/w;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const/16 v7, 0xc

    .line 55
    .line 56
    invoke-virtual {v6, v0, v7, v4}, Lx1/w;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v13, v0, Lb6/b;->b:I

    .line 61
    .line 62
    iget v9, v0, Lb6/b;->a:I

    .line 63
    .line 64
    mul-int v4, v13, v9

    .line 65
    .line 66
    new-array v7, v4, [I

    .line 67
    .line 68
    move v4, v5

    .line 69
    :goto_44
    if-ge v4, v13, :cond_61

    .line 70
    .line 71
    mul-int v6, v4, v9

    .line 72
    .line 73
    move v8, v5

    .line 74
    :goto_49
    if-ge v8, v9, :cond_5e

    .line 75
    .line 76
    add-int v10, v6, v8

    .line 77
    .line 78
    invoke-virtual {v0, v8, v4}, Lb6/b;->a(II)Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_56

    .line 83
    .line 84
    const/high16 v11, -0x1000000

    .line 85
    .line 86
    goto :goto_57

    .line 87
    :cond_56
    const/4 v11, -0x1

    .line 88
    :goto_57
    aput v11, v7, v10

    .line 89
    .line 90
    add-int/lit8 v8, v8, 0x1

    .line 91
    .line 92
    goto :goto_49

    .line 93
    :catchall_5c
    move-exception v0

    .line 94
    goto :goto_6f

    .line 95
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_44

    .line 98
    :cond_61
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 99
    .line 100
    invoke-static {v9, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object v6
    :try_end_67
    .catch Ly5/e; {:try_start_2e .. :try_end_67} :catch_1b
    .catchall {:try_start_2e .. :try_end_67} :catchall_5c

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    move v12, v9

    .line 108
    :try_start_6b
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_6e
    .catch Ly5/e; {:try_start_6b .. :try_end_6e} :catch_73
    .catchall {:try_start_6b .. :try_end_6e} :catchall_5c

    .line 109
    .line 110
    .line 111
    goto :goto_73

    .line 112
    :goto_6f
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1b

    .line 116
    :catch_73
    :goto_73
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v0, v4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, Ly2/g;->v0:Landroid/widget/TextView;

    .line 126
    .line 127
    if-eqz v4, :cond_ff

    .line 128
    .line 129
    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Ly2/g;->u0:Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v0, :cond_fb

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Ly2/g;->t0:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v0, :cond_f5

    .line 142
    .line 143
    const/16 v1, 0x8

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Ly2/g;->C0:Z

    .line 149
    .line 150
    if-nez v0, :cond_cb

    .line 151
    .line 152
    iget-object v0, p1, Ly2/e;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_a1

    .line 159
    .line 160
    :cond_9f
    :goto_9f
    move v0, v5

    .line 161
    goto :goto_b3

    .line 162
    :cond_a1
    :try_start_a1
    invoke-static {}, Lp2/b;->b()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_9f

    .line 167
    .line 168
    sget-object v1, Lp2/b;->a:Lp2/b;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lp2/b;->c(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v0
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_ae

    .line 174
    goto :goto_b3

    .line 175
    :catchall_ae
    move-exception v0

    .line 176
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_9f

    .line 180
    :goto_b3
    if-eqz v0, :cond_cb

    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v1, Ly1/k;

    .line 187
    .line 188
    invoke-direct {v1, v0, v2}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 192
    .line 193
    invoke-static {}, Lx1/j0;->c()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_cb

    .line 198
    .line 199
    const-string v0, "fb_smart_login_service"

    .line 200
    .line 201
    invoke-virtual {v1, v2, v0}, Ly1/k;->g(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_cb
    iget-wide v0, p1, Ly2/e;->e:J

    .line 205
    .line 206
    const-wide/16 v2, 0x0

    .line 207
    .line 208
    cmp-long v0, v0, v2

    .line 209
    .line 210
    if-nez v0, :cond_d4

    .line 211
    .line 212
    goto :goto_eb

    .line 213
    :cond_d4
    new-instance v0, Ljava/util/Date;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 219
    .line 220
    .line 221
    move-result-wide v0

    .line 222
    iget-wide v6, p1, Ly2/e;->e:J

    .line 223
    .line 224
    sub-long/2addr v0, v6

    .line 225
    iget-wide v6, p1, Ly2/e;->d:J

    .line 226
    .line 227
    const-wide/16 v8, 0x3e8

    .line 228
    .line 229
    mul-long/2addr v6, v8

    .line 230
    sub-long/2addr v0, v6

    .line 231
    cmp-long p1, v0, v2

    .line 232
    .line 233
    if-gez p1, :cond_eb

    .line 234
    .line 235
    const/4 v5, 0x1

    .line 236
    :cond_eb
    :goto_eb
    if-eqz v5, :cond_f1

    .line 237
    .line 238
    invoke-virtual {p0}, Ly2/g;->S()V

    .line 239
    .line 240
    .line 241
    goto :goto_f4

    .line 242
    :cond_f1
    invoke-virtual {p0}, Ly2/g;->R()V

    .line 243
    .line 244
    .line 245
    :goto_f4
    return-void

    .line 246
    :cond_f5
    const-string p1, "progressBar"

    .line 247
    .line 248
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v2

    .line 252
    :cond_fb
    invoke-static {v1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v2

    .line 256
    :cond_ff
    const-string p1, "instructions"

    .line 257
    .line 258
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v2

    .line 262
    :cond_105
    invoke-static {v1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v2
.end method

.method public final U(Ly2/m;)V
    .registers 9

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ly2/g;->D0:Ly2/m;

    .line 7
    .line 8
    new-instance v4, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, ","

    .line 14
    .line 15
    iget-object v1, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "scope"

    .line 22
    .line 23
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Ly2/m;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_26

    .line 33
    .line 34
    const-string v1, "redirect_uri"

    .line 35
    .line 36
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    iget-object p1, p1, Ly2/m;->i:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_33

    .line 46
    .line 47
    const-string v0, "target_user_id"

    .line 48
    .line 49
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x7c

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lq2/g;->k()V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lx1/r;->f:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v0, :cond_af

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "access_token"

    .line 84
    .line 85
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lp2/b;->a:Lp2/b;

    .line 89
    .line 90
    const-class p1, Lp2/b;

    .line 91
    .line 92
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x0

    .line 97
    if-eqz v0, :cond_63

    .line 98
    .line 99
    goto :goto_94

    .line 100
    :cond_63
    :try_start_63
    new-instance v0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v2, "device"

    .line 106
    .line 107
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 108
    .line 109
    const-string v5, "DEVICE"

    .line 110
    .line 111
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-string v2, "model"

    .line 118
    .line 119
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 120
    .line 121
    const-string v5, "MODEL"

    .line 122
    .line 123
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    new-instance v2, Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v2, "JSONObject(deviceInfo as Map<*, *>).toString()"

    .line 139
    .line 140
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_63 .. :try_end_8e} :catchall_90

    .line 141
    .line 142
    .line 143
    move-object v1, v0

    .line 144
    goto :goto_94

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_94
    const-string p1, "device_info"

    .line 150
    .line 151
    invoke-virtual {v4, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object p1, Lx1/z;->j:Ljava/lang/String;

    .line 155
    .line 156
    new-instance v6, Ly2/c;

    .line 157
    .line 158
    const/4 p1, 0x0

    .line 159
    invoke-direct {v6, p0, p1}, Ly2/c;-><init>(Ly2/g;I)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lx1/z;

    .line 163
    .line 164
    sget-object v5, Lx1/d0;->b:Lx1/d0;

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    const-string v3, "device/login"

    .line 168
    .line 169
    invoke-direct/range {v1 .. v6}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lx1/z;->d()Lx1/a0;

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_af
    new-instance p1, Lx1/l;

    .line 177
    .line 178
    const-string v0, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 179
    .line 180
    invoke-direct {p1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/t;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Ly2/g;->B0:Z

    .line 10
    .line 11
    if-nez p1, :cond_f

    .line 12
    .line 13
    invoke-virtual {p0}, Ly2/g;->O()V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public final r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->E()Landroidx/fragment/app/h0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/facebook/FacebookActivity;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/facebook/FacebookActivity;->a:Landroidx/fragment/app/c0;

    .line 13
    .line 14
    check-cast p1, Ly2/q;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    if-eqz p1, :cond_1b

    .line 18
    .line 19
    invoke-virtual {p1}, Ly2/q;->K()Ly2/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ly2/o;->f()Ly2/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move-object p1, p2

    .line 29
    :goto_1c
    check-cast p1, Ly2/h;

    .line 30
    .line 31
    iput-object p1, p0, Ly2/g;->w0:Ly2/h;

    .line 32
    .line 33
    if-eqz p3, :cond_2f

    .line 34
    .line 35
    const-string p1, "request_state"

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ly2/e;

    .line 42
    .line 43
    if-eqz p1, :cond_2f

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ly2/g;->T(Ly2/e;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    return-object p2
.end method

.method public final t()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly2/g;->B0:Z

    .line 3
    .line 4
    iget-object v1, p0, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroidx/fragment/app/t;->t()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ly2/g;->y0:Lx1/a0;

    .line 13
    .line 14
    if-eqz v1, :cond_12

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_12
    iget-object v1, p0, Ly2/g;->z0:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    if-eqz v1, :cond_19

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public final y(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/t;->y(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly2/g;->A0:Ly2/e;

    .line 5
    .line 6
    if-eqz v0, :cond_e

    .line 7
    .line 8
    const-string v0, "request_state"

    .line 9
    .line 10
    iget-object v1, p0, Ly2/g;->A0:Ly2/e;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method
