###### Class androidx.fragment.app.t (androidx.fragment.app.t)
.class public Landroidx/fragment/app/t;
.super Landroidx/fragment/app/c0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final f0:Landroidx/fragment/app/q;

.field public final g0:Landroidx/fragment/app/r;

.field public h0:I

.field public i0:I

.field public j0:Z

.field public k0:Z

.field public l0:I

.field public m0:Z

.field public final n0:Lk1/h;

.field public o0:Landroid/app/Dialog;

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/p;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/fragment/app/q;

    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/q;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/fragment/app/t;->f0:Landroidx/fragment/app/q;

    .line 16
    .line 17
    new-instance v0, Landroidx/fragment/app/r;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/t;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/fragment/app/t;->g0:Landroidx/fragment/app/r;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/fragment/app/t;->h0:I

    .line 26
    .line 27
    iput v0, p0, Landroidx/fragment/app/t;->i0:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Landroidx/fragment/app/t;->j0:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Landroidx/fragment/app/t;->k0:Z

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Landroidx/fragment/app/t;->l0:I

    .line 36
    .line 37
    new-instance v1, Lk1/h;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v1, v2, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/fragment/app/t;->n0:Lk1/h;

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/fragment/app/t;->s0:Z

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final A()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 9
    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public final B(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_16

    .line 7
    .line 8
    if-eqz p1, :cond_16

    .line 9
    .line 10
    const-string v0, "android:savedDialogState"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_16

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public final C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c0;->C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_1a

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz p1, :cond_1a

    .line 11
    .line 12
    if-eqz p3, :cond_1a

    .line 13
    .line 14
    const-string p1, "android:savedDialogState"

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1a

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public K(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_1a

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v0, "onCreateDialog called for DialogFragment "

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    new-instance p1, Lb/r;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->F()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Landroidx/fragment/app/t;->i0:I

    .line 34
    .line 35
    invoke-direct {p1, v0, v1}, Lb/r;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public L(Landroidx/fragment/app/y0;Ljava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/t;->q0:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/t;->r0:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/fragment/app/a;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, v2, Landroidx/fragment/app/a;->o:Z

    .line 16
    .line 17
    invoke-virtual {v2, v0, p0, p2}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final a()Lh8/b;
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/c0;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/fragment/app/s;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/t;Landroidx/fragment/app/x;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final n()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/t;->p0:Z

    .line 2
    .line 3
    if-nez p1, :cond_98

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1e

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "onDismiss called for DialogFragment "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "FragmentManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-boolean v0, p0, Landroidx/fragment/app/t;->q0:Z

    .line 32
    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_98

    .line 36
    :cond_23
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/fragment/app/t;->q0:Z

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Landroidx/fragment/app/t;->r0:Z

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 43
    .line 44
    if-eqz v1, :cond_36

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_36
    iput-boolean v0, p0, Landroidx/fragment/app/t;->p0:Z

    .line 56
    .line 57
    iget v1, p0, Landroidx/fragment/app/t;->l0:I

    .line 58
    .line 59
    if-ltz v1, :cond_5c

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget v1, p0, Landroidx/fragment/app/t;->l0:I

    .line 66
    .line 67
    if-ltz v1, :cond_50

    .line 68
    .line 69
    new-instance v2, Landroidx/fragment/app/w0;

    .line 70
    .line 71
    invoke-direct {v2, p1, v1}, Landroidx/fragment/app/w0;-><init>(Landroidx/fragment/app/y0;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/y0;->x(Landroidx/fragment/app/v0;Z)V

    .line 75
    .line 76
    .line 77
    const/4 p1, -0x1

    .line 78
    iput p1, p0, Landroidx/fragment/app/t;->l0:I

    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string v0, "Bad id: "

    .line 84
    .line 85
    invoke-static {v1, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_5c
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Landroidx/fragment/app/a;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v0, v2, Landroidx/fragment/app/a;->o:Z

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 105
    .line 106
    if-eqz v1, :cond_8d

    .line 107
    .line 108
    iget-object v3, v2, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/y0;

    .line 109
    .line 110
    if-ne v1, v3, :cond_70

    .line 111
    .line 112
    goto :goto_8d

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, " is already attached to a FragmentManager."

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_8d
    :goto_8d
    new-instance v1, Landroidx/fragment/app/h1;

    .line 143
    .line 144
    invoke-direct {v1, p1, p0}, Landroidx/fragment/app/h1;-><init>(ILandroidx/fragment/app/c0;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v1}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/h1;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v0, v0}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 151
    .line 152
    .line 153
    :cond_98
    :goto_98
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c0;->p(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/c0;->Z:Landroidx/lifecycle/y;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v0, "observeForever"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/lifecycle/y;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/lifecycle/x;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/fragment/app/t;->n0:Lk1/h;

    .line 17
    .line 18
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/y;Lk1/h;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Landroidx/lifecycle/y;->b:Lo/f;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lo/f;->a(Ljava/lang/Object;)Lo/c;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_20

    .line 29
    .line 30
    iget-object p1, v2, Lo/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_3a

    .line 33
    :cond_20
    new-instance v2, Lo/c;

    .line 34
    .line 35
    invoke-direct {v2, v1, v0}, Lo/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v1, p1, Lo/f;->d:I

    .line 39
    .line 40
    add-int/2addr v1, v3

    .line 41
    iput v1, p1, Lo/f;->d:I

    .line 42
    .line 43
    iget-object v1, p1, Lo/f;->b:Lo/c;

    .line 44
    .line 45
    if-nez v1, :cond_33

    .line 46
    .line 47
    iput-object v2, p1, Lo/f;->a:Lo/c;

    .line 48
    .line 49
    iput-object v2, p1, Lo/f;->b:Lo/c;

    .line 50
    .line 51
    goto :goto_39

    .line 52
    :cond_33
    iput-object v2, v1, Lo/c;->c:Lo/c;

    .line 53
    .line 54
    iput-object v1, v2, Lo/c;->d:Lo/c;

    .line 55
    .line 56
    iput-object v2, p1, Lo/f;->b:Lo/c;

    .line 57
    .line 58
    :goto_39
    const/4 p1, 0x0

    .line 59
    :goto_3a
    check-cast p1, Landroidx/lifecycle/x;

    .line 60
    .line 61
    if-eqz p1, :cond_3f

    .line 62
    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    invoke-virtual {v0, v3}, Landroidx/lifecycle/x;->a(Z)V

    .line 65
    .line 66
    .line 67
    :goto_42
    iget-boolean p1, p0, Landroidx/fragment/app/t;->r0:Z

    .line 68
    .line 69
    if-nez p1, :cond_49

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Landroidx/fragment/app/t;->q0:Z

    .line 73
    .line 74
    :cond_49
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c0;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/fragment/app/c0;->G:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_10

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v0, v2

    .line 18
    :goto_11
    iput-boolean v0, p0, Landroidx/fragment/app/t;->k0:Z

    .line 19
    .line 20
    if-eqz p1, :cond_40

    .line 21
    .line 22
    const-string v0, "android:style"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Landroidx/fragment/app/t;->h0:I

    .line 29
    .line 30
    const-string v0, "android:theme"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Landroidx/fragment/app/t;->i0:I

    .line 37
    .line 38
    const-string v0, "android:cancelable"

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Landroidx/fragment/app/t;->j0:Z

    .line 45
    .line 46
    const-string v0, "android:showsDialog"

    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/fragment/app/t;->k0:Z

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Landroidx/fragment/app/t;->k0:Z

    .line 55
    .line 56
    const-string v0, "android:backStackId"

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Landroidx/fragment/app/t;->l0:I

    .line 64
    .line 65
    :cond_40
    return-void
.end method

.method public t()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v1, :cond_20

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/t;->p0:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/fragment/app/t;->q0:Z

    .line 20
    .line 21
    if-nez v1, :cond_1b

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/fragment/app/t;->onDismiss(Landroid/content/DialogInterface;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iput-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroidx/fragment/app/t;->s0:Z

    .line 32
    .line 33
    :cond_20
    return-void
.end method

.method public final u()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/fragment/app/t;->r0:Z

    .line 5
    .line 6
    if-nez v1, :cond_d

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/t;->q0:Z

    .line 9
    .line 10
    if-nez v1, :cond_d

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/fragment/app/t;->q0:Z

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/c0;->Z:Landroidx/lifecycle/y;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v1, "removeObserver"

    .line 20
    .line 21
    invoke-static {v1}, Landroidx/lifecycle/y;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Landroidx/lifecycle/y;->b:Lo/f;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/fragment/app/t;->n0:Lk1/h;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lo/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/lifecycle/x;

    .line 33
    .line 34
    if-nez v0, :cond_24

    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->a(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c0;->v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/fragment/app/t;->k0:Z

    .line 6
    .line 7
    const-string v2, "FragmentManager"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eqz v1, :cond_9c

    .line 11
    .line 12
    iget-boolean v4, p0, Landroidx/fragment/app/t;->m0:Z

    .line 13
    .line 14
    if-eqz v4, :cond_11

    .line 15
    .line 16
    goto/16 :goto_9c

    .line 17
    .line 18
    :cond_11
    if-nez v1, :cond_14

    .line 19
    .line 20
    goto :goto_73

    .line 21
    :cond_14
    iget-boolean v1, p0, Landroidx/fragment/app/t;->s0:Z

    .line 22
    .line 23
    if-nez v1, :cond_73

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    :try_start_1a
    iput-boolean v4, p0, Landroidx/fragment/app/t;->m0:Z

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/t;->K(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 34
    .line 35
    iget-boolean v5, p0, Landroidx/fragment/app/t;->k0:Z

    .line 36
    .line 37
    if-eqz v5, :cond_6a

    .line 38
    .line 39
    iget v5, p0, Landroidx/fragment/app/t;->h0:I

    .line 40
    .line 41
    if-eq v5, v4, :cond_3b

    .line 42
    .line 43
    if-eq v5, v3, :cond_3b

    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    if-eq v5, v6, :cond_30

    .line 47
    .line 48
    goto :goto_3e

    .line 49
    :cond_30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_3b

    .line 54
    .line 55
    const/16 v6, 0x18

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    .line 62
    .line 63
    :goto_3e
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Landroidx/fragment/app/m1;->d(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_52

    .line 72
    .line 73
    iget-object v5, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 74
    .line 75
    check-cast p1, Landroid/app/Activity;

    .line 76
    .line 77
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 78
    .line 79
    .line 80
    goto :goto_52

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    goto :goto_70

    .line 83
    :cond_52
    :goto_52
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 84
    .line 85
    iget-boolean v5, p0, Landroidx/fragment/app/t;->j0:Z

    .line 86
    .line 87
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 91
    .line 92
    iget-object v5, p0, Landroidx/fragment/app/t;->f0:Landroidx/fragment/app/q;

    .line 93
    .line 94
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 98
    .line 99
    iget-object v5, p0, Landroidx/fragment/app/t;->g0:Landroidx/fragment/app/r;

    .line 100
    .line 101
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v4, p0, Landroidx/fragment/app/t;->s0:Z

    .line 105
    .line 106
    goto :goto_6d

    .line 107
    :cond_6a
    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;
    :try_end_6d
    .catchall {:try_start_1a .. :try_end_6d} :catchall_50

    .line 109
    .line 110
    :goto_6d
    iput-boolean v1, p0, Landroidx/fragment/app/t;->m0:Z

    .line 111
    .line 112
    goto :goto_73

    .line 113
    :goto_70
    iput-boolean v1, p0, Landroidx/fragment/app/t;->m0:Z

    .line 114
    .line 115
    throw p1

    .line 116
    :cond_73
    :goto_73
    invoke-static {v3}, Landroidx/fragment/app/y0;->J(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_8f

    .line 121
    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "get layout inflater for DialogFragment "

    .line 125
    .line 126
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, " from dialog context"

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_8f
    iget-object p1, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 145
    .line 146
    if-eqz p1, :cond_d7

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_9c
    :goto_9c
    invoke-static {v3}, Landroidx/fragment/app/y0;->J(I)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_d7

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, "getting layout inflater for DialogFragment "

    .line 166
    .line 167
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-boolean v1, p0, Landroidx/fragment/app/t;->k0:Z

    .line 178
    .line 179
    if-nez v1, :cond_c6

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v3, "mShowsDialog = false: "

    .line 184
    .line 185
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "mCreatingDialog = true: "

    .line 202
    .line 203
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_d7
    return-object v0
.end method

.method public y(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android:dialogShowing"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v1, "android:savedDialogState"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    iget v0, p0, Landroidx/fragment/app/t;->h0:I

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    const-string v1, "android:style"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget v0, p0, Landroidx/fragment/app/t;->i0:I

    .line 30
    .line 31
    if-eqz v0, :cond_25

    .line 32
    .line 33
    const-string v1, "android:theme"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_25
    iget-boolean v0, p0, Landroidx/fragment/app/t;->j0:Z

    .line 39
    .line 40
    if-nez v0, :cond_2e

    .line 41
    .line 42
    const-string v1, "android:cancelable"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    iget-boolean v0, p0, Landroidx/fragment/app/t;->k0:Z

    .line 48
    .line 49
    if-nez v0, :cond_37

    .line 50
    .line 51
    const-string v1, "android:showsDialog"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget v0, p0, Landroidx/fragment/app/t;->l0:I

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    if-eq v0, v1, :cond_41

    .line 60
    .line 61
    const-string v1, "android:backStackId"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_41
    return-void
.end method

.method public final z()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->N:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_23

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Landroidx/fragment/app/t;->p0:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, p0}, Landroidx/lifecycle/j0;->f(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0900fa

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0}, Lf4/f;->d(Landroid/view/View;Le1/g;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method
