###### Class androidx.fragment.app.g1 (androidx.fragment.app.g1)
.class public final Landroidx/fragment/app/g1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/y4;

.field public final b:Lcom/google/firebase/messaging/y;

.field public final c:Landroidx/fragment/app/c0;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Landroidx/fragment/app/c0;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/g1;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/g1;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Landroidx/fragment/app/c0;Landroid/os/Bundle;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/fragment/app/g1;->d:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Landroidx/fragment/app/g1;->e:I

    .line 42
    iput-object p1, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 43
    iput-object p2, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 44
    iput-object p3, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p3, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 46
    iput-object p1, p3, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 47
    iput v0, p3, Landroidx/fragment/app/c0;->A:I

    .line 48
    iput-boolean v0, p3, Landroidx/fragment/app/c0;->w:Z

    .line 49
    iput-boolean v0, p3, Landroidx/fragment/app/c0;->k:Z

    .line 50
    iget-object p2, p3, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    if-eqz p2, :cond_21

    iget-object p2, p2, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    goto :goto_22

    :cond_21
    move-object p2, p1

    :goto_22
    iput-object p2, p3, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 51
    iput-object p1, p3, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 52
    iput-object p4, p3, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 53
    const-string p1, "arguments"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Ljava/lang/ClassLoader;Landroidx/fragment/app/r0;Landroid/os/Bundle;)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/g1;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/g1;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 12
    const-string p1, "state"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/e1;

    .line 13
    iget-object p2, p1, Landroidx/fragment/app/e1;->a:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroidx/fragment/app/r0;->a(Ljava/lang/String;)Landroidx/fragment/app/c0;

    move-result-object p2

    .line 14
    iget-object p4, p1, Landroidx/fragment/app/e1;->b:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 15
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->c:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->v:Z

    .line 16
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->d:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->x:Z

    const/4 p4, 0x1

    .line 17
    iput-boolean p4, p2, Landroidx/fragment/app/c0;->y:Z

    .line 18
    iget p4, p1, Landroidx/fragment/app/e1;->e:I

    iput p4, p2, Landroidx/fragment/app/c0;->F:I

    .line 19
    iget p4, p1, Landroidx/fragment/app/e1;->f:I

    iput p4, p2, Landroidx/fragment/app/c0;->G:I

    .line 20
    iget-object p4, p1, Landroidx/fragment/app/e1;->g:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 21
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->h:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->K:Z

    .line 22
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->i:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->l:Z

    .line 23
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->j:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->J:Z

    .line 24
    iget-boolean p4, p1, Landroidx/fragment/app/e1;->k:Z

    iput-boolean p4, p2, Landroidx/fragment/app/c0;->I:Z

    .line 25
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    move-result-object p4

    iget v0, p1, Landroidx/fragment/app/e1;->l:I

    aget-object p4, p4, v0

    iput-object p4, p2, Landroidx/fragment/app/c0;->W:Landroidx/lifecycle/n;

    .line 26
    iget-object p4, p1, Landroidx/fragment/app/e1;->m:Ljava/lang/String;

    iput-object p4, p2, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 27
    iget p4, p1, Landroidx/fragment/app/e1;->v:I

    iput p4, p2, Landroidx/fragment/app/c0;->i:I

    .line 28
    iget-boolean p1, p1, Landroidx/fragment/app/e1;->w:Z

    iput-boolean p1, p2, Landroidx/fragment/app/c0;->R:Z

    .line 29
    iput-object p2, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 30
    iput-object p5, p2, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 31
    const-string p1, "arguments"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 32
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 33
    :cond_6b
    iget-object p3, p2, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    if-eqz p3, :cond_80

    .line 34
    iget-boolean p4, p3, Landroidx/fragment/app/y0;->H:Z

    if-nez p4, :cond_78

    iget-boolean p3, p3, Landroidx/fragment/app/y0;->I:Z

    if-nez p3, :cond_78

    goto :goto_80

    .line 35
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already added and state has been saved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_80
    :goto_80
    iput-object p1, p2, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    const/4 p1, 0x2

    .line 37
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    if-eqz v1, :cond_1c

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v1, v3, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v4, "savedInstanceState"

    .line 32
    .line 33
    if-eqz v1, :cond_25

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    :cond_25
    iget-object v1, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->P()V

    .line 41
    .line 42
    .line 43
    iput v0, v3, Landroidx/fragment/app/c0;->a:I

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, v3, Landroidx/fragment/app/c0;->N:Z

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->n()V

    .line 49
    .line 50
    .line 51
    iget-boolean v5, v3, Landroidx/fragment/app/c0;->N:Z

    .line 52
    .line 53
    const-string v6, "Fragment "

    .line 54
    .line 55
    if-eqz v5, :cond_a0

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4f

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, "moveto RESTORE_VIEW_STATE: "

    .line 66
    .line 67
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_4f
    iget-object v0, v3, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v0, :cond_8a

    .line 84
    .line 85
    iget-object v0, v3, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 86
    .line 87
    if-eqz v0, :cond_5d

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move-object v0, v2

    .line 95
    :goto_5e
    iget-object v4, v3, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 96
    .line 97
    if-eqz v4, :cond_69

    .line 98
    .line 99
    iget-object v5, v3, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v5, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, v3, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 105
    .line 106
    :cond_69
    iput-boolean v1, v3, Landroidx/fragment/app/c0;->N:Z

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Landroidx/fragment/app/c0;->B(Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    iget-boolean v0, v3, Landroidx/fragment/app/c0;->N:Z

    .line 112
    .line 113
    if-eqz v0, :cond_7e

    .line 114
    .line 115
    iget-object v0, v3, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 116
    .line 117
    if-eqz v0, :cond_8a

    .line 118
    .line 119
    iget-object v0, v3, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 120
    .line 121
    sget-object v4, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroidx/fragment/app/i1;->a(Landroidx/lifecycle/m;)V

    .line 124
    .line 125
    .line 126
    goto :goto_8a

    .line 127
    :cond_7e
    new-instance v0, Landroidx/fragment/app/o1;

    .line 128
    .line 129
    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 130
    .line 131
    invoke-static {v6, v3, v1}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_8a
    :goto_8a
    iput-object v2, v3, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 140
    .line 141
    iget-object v0, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 142
    .line 143
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->H:Z

    .line 144
    .line 145
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->I:Z

    .line 146
    .line 147
    iget-object v2, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 148
    .line 149
    iput-boolean v1, v2, Landroidx/fragment/app/c1;->g:Z

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 156
    .line 157
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/y4;->g(Landroidx/fragment/app/c0;Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a0
    new-instance v0, Landroidx/fragment/app/o1;

    .line 162
    .line 163
    const-string v1, " did not call through to super.onActivityCreated()"

    .line 164
    .line 165
    invoke-static {v6, v3, v1}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0
.end method

.method public final b()V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 4
    .line 5
    :goto_4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_27

    .line 7
    .line 8
    const v3, 0x7f090080

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Landroidx/fragment/app/c0;

    .line 16
    .line 17
    if-eqz v4, :cond_15

    .line 18
    .line 19
    check-cast v3, Landroidx/fragment/app/c0;

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v3, v2

    .line 23
    :goto_16
    if-eqz v3, :cond_1a

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    goto :goto_27

    .line 27
    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v3, v1, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v3, :cond_25

    .line 34
    .line 35
    check-cast v1, Landroid/view/View;

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_25
    move-object v1, v2

    .line 39
    goto :goto_4

    .line 40
    :cond_27
    :goto_27
    iget-object v1, v0, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 41
    .line 42
    if-eqz v2, :cond_67

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_67

    .line 49
    .line 50
    iget v1, v0, Landroidx/fragment/app/c0;->G:I

    .line 51
    .line 52
    sget-object v3, Lt0/c;->a:Lt0/b;

    .line 53
    .line 54
    new-instance v3, Lt0/a;

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "Attempting to nest fragment "

    .line 59
    .line 60
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, " within the view of parent fragment "

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " via container with ID "

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " without using parent\'s childFragmentManager"

    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v3, v0, v1}, Lt0/e;-><init>(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lt0/c;->b(Lt0/e;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lt0/c;->a(Landroidx/fragment/app/c0;)Lt0/b;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    :cond_67
    iget-object v1, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 111
    .line 112
    const/4 v3, -0x1

    .line 113
    if-nez v2, :cond_73

    .line 114
    .line 115
    goto :goto_af

    .line 116
    :cond_73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    add-int/lit8 v5, v4, -0x1

    .line 121
    .line 122
    :goto_79
    if-ltz v5, :cond_93

    .line 123
    .line 124
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Landroidx/fragment/app/c0;

    .line 129
    .line 130
    iget-object v7, v6, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 131
    .line 132
    if-ne v7, v2, :cond_90

    .line 133
    .line 134
    iget-object v6, v6, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 135
    .line 136
    if-eqz v6, :cond_90

    .line 137
    .line 138
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/lit8 v3, v1, 0x1

    .line 143
    .line 144
    goto :goto_af

    .line 145
    :cond_90
    add-int/lit8 v5, v5, -0x1

    .line 146
    .line 147
    goto :goto_79

    .line 148
    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-ge v4, v5, :cond_af

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Landroidx/fragment/app/c0;

    .line 161
    .line 162
    iget-object v6, v5, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 163
    .line 164
    if-ne v6, v2, :cond_ae

    .line 165
    .line 166
    iget-object v5, v5, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 167
    .line 168
    if-eqz v5, :cond_ae

    .line 169
    .line 170
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    goto :goto_93

    .line 176
    :cond_af
    :goto_af
    iget-object v1, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 177
    .line 178
    iget-object v0, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final c()V
    .registers 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, " that does not belong to this FragmentManager!"

    .line 33
    .line 34
    const-string v4, " declared target fragment "

    .line 35
    .line 36
    iget-object v5, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 37
    .line 38
    const-string v6, "Fragment "

    .line 39
    .line 40
    if-eqz v0, :cond_5e

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v5, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/fragment/app/g1;

    .line 53
    .line 54
    if-eqz v0, :cond_41

    .line 55
    .line 56
    iget-object v3, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 57
    .line 58
    iget-object v3, v3, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v1, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    goto :goto_87

    .line 66
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_5e
    iget-object v0, v1, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_87

    .line 98
    .line 99
    iget-object v2, v5, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v2, v0

    .line 108
    check-cast v2, Landroidx/fragment/app/g1;

    .line 109
    .line 110
    if-eqz v2, :cond_70

    .line 111
    .line 112
    goto :goto_87

    .line 113
    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, v1, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v1, v3}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_87
    :goto_87
    if-eqz v2, :cond_8c

    .line 137
    .line 138
    invoke-virtual {v2}, Landroidx/fragment/app/g1;->k()V

    .line 139
    .line 140
    .line 141
    :cond_8c
    iget-object v0, v1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 142
    .line 143
    iget-object v2, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 144
    .line 145
    iput-object v2, v1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 148
    .line 149
    iput-object v0, v1, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 150
    .line 151
    iget-object v0, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;->o(Landroidx/fragment/app/c0;Z)V

    .line 155
    .line 156
    .line 157
    iget-object v3, v1, Landroidx/fragment/app/c0;->c0:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    move v5, v2

    .line 164
    :goto_a3
    if-ge v5, v4, :cond_b1

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 171
    .line 172
    check-cast v7, Landroidx/fragment/app/b0;

    .line 173
    .line 174
    invoke-virtual {v7}, Landroidx/fragment/app/b0;->a()V

    .line 175
    .line 176
    .line 177
    goto :goto_a3

    .line 178
    :cond_b1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    iget-object v3, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 182
    .line 183
    iget-object v4, v1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->a()Lh8/b;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v3, v4, v5, v1}, Landroidx/fragment/app/y0;->b(Landroidx/fragment/app/g0;Lh8/b;Landroidx/fragment/app/c0;)V

    .line 190
    .line 191
    .line 192
    iput v2, v1, Landroidx/fragment/app/c0;->a:I

    .line 193
    .line 194
    iput-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 195
    .line 196
    iget-object v3, v1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 197
    .line 198
    iget-object v3, v3, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroidx/fragment/app/c0;->p(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    iget-boolean v3, v1, Landroidx/fragment/app/c0;->N:Z

    .line 204
    .line 205
    if-eqz v3, :cond_f7

    .line 206
    .line 207
    iget-object v3, v1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 208
    .line 209
    iget-object v3, v3, Landroidx/fragment/app/y0;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_e6

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Landroidx/fragment/app/d1;

    .line 226
    .line 227
    invoke-interface {v4, v1}, Landroidx/fragment/app/d1;->a(Landroidx/fragment/app/c0;)V

    .line 228
    .line 229
    .line 230
    goto :goto_d6

    .line 231
    :cond_e6
    iget-object v3, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 232
    .line 233
    iput-boolean v2, v3, Landroidx/fragment/app/y0;->H:Z

    .line 234
    .line 235
    iput-boolean v2, v3, Landroidx/fragment/app/y0;->I:Z

    .line 236
    .line 237
    iget-object v4, v3, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 238
    .line 239
    iput-boolean v2, v4, Landroidx/fragment/app/c1;->g:Z

    .line 240
    .line 241
    invoke-virtual {v3, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;->j(Landroidx/fragment/app/c0;Z)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_f7
    new-instance v0, Landroidx/fragment/app/o1;

    .line 249
    .line 250
    const-string v2, " did not call through to super.onAttach()"

    .line 251
    .line 252
    invoke-static {v6, v1, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method public final d()I
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 4
    .line 5
    if-nez v1, :cond_9

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/c0;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_9
    iget v1, p0, Landroidx/fragment/app/g1;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/fragment/app/c0;->W:Landroidx/lifecycle/n;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v2, v9, :cond_2f

    .line 26
    .line 27
    if-eq v2, v8, :cond_2a

    .line 28
    .line 29
    if-eq v2, v6, :cond_25

    .line 30
    .line 31
    if-eq v2, v7, :cond_33

    .line 32
    .line 33
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_33

    .line 38
    :cond_25
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_33

    .line 43
    :cond_2a
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_33
    :goto_33
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->v:Z

    .line 53
    .line 54
    if-eqz v2, :cond_5f

    .line 55
    .line 56
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->w:Z

    .line 57
    .line 58
    if-eqz v2, :cond_50

    .line 59
    .line 60
    iget v1, p0, Landroidx/fragment/app/g1;->e:I

    .line 61
    .line 62
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v2, :cond_5f

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_5f

    .line 75
    .line 76
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_5f

    .line 81
    :cond_50
    iget v2, p0, Landroidx/fragment/app/g1;->e:I

    .line 82
    .line 83
    if-ge v2, v7, :cond_5b

    .line 84
    .line 85
    iget v2, v0, Landroidx/fragment/app/c0;->a:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_5f

    .line 92
    :cond_5b
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_5f
    :goto_5f
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->x:Z

    .line 97
    .line 98
    if-eqz v2, :cond_6b

    .line 99
    .line 100
    iget-object v2, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 101
    .line 102
    if-nez v2, :cond_6b

    .line 103
    .line 104
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_6b
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->k:Z

    .line 109
    .line 110
    if-nez v2, :cond_73

    .line 111
    .line 112
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :cond_73
    iget-object v2, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 117
    .line 118
    if-eqz v2, :cond_a2

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-static {v2, v10}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Landroidx/fragment/app/o;->f(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    if-eqz v10, :cond_88

    .line 133
    .line 134
    iget v10, v10, Landroidx/fragment/app/l1;->b:I

    .line 135
    .line 136
    goto :goto_89

    .line 137
    :cond_88
    move v10, v3

    .line 138
    :goto_89
    invoke-virtual {v2, v0}, Landroidx/fragment/app/o;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-eqz v2, :cond_91

    .line 143
    .line 144
    iget v3, v2, Landroidx/fragment/app/l1;->b:I

    .line 145
    .line 146
    :cond_91
    if-nez v10, :cond_95

    .line 147
    .line 148
    move v2, v5

    .line 149
    goto :goto_9d

    .line 150
    :cond_95
    sget-object v2, Landroidx/fragment/app/n1;->a:[I

    .line 151
    .line 152
    invoke-static {v10}, Landroidx/fragment/app/m1;->e(I)I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    aget v2, v2, v11

    .line 157
    .line 158
    :goto_9d
    if-eq v2, v5, :cond_a2

    .line 159
    .line 160
    if-eq v2, v9, :cond_a2

    .line 161
    .line 162
    move v3, v10

    .line 163
    :cond_a2
    if-ne v3, v8, :cond_aa

    .line 164
    .line 165
    const/4 v2, 0x6

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    goto :goto_c4

    .line 171
    :cond_aa
    if-ne v3, v6, :cond_b1

    .line 172
    .line 173
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    goto :goto_c4

    .line 178
    :cond_b1
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->l:Z

    .line 179
    .line 180
    if-eqz v2, :cond_c4

    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_c0

    .line 187
    .line 188
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    goto :goto_c4

    .line 193
    :cond_c0
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :cond_c4
    :goto_c4
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->Q:Z

    .line 198
    .line 199
    if-eqz v2, :cond_d0

    .line 200
    .line 201
    iget v2, v0, Landroidx/fragment/app/c0;->a:I

    .line 202
    .line 203
    if-ge v2, v4, :cond_d0

    .line 204
    .line 205
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    :cond_d0
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->m:Z

    .line 210
    .line 211
    if-eqz v2, :cond_d8

    .line 212
    .line 213
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    :cond_d8
    invoke-static {v8}, Landroidx/fragment/app/y0;->J(I)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_f9

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v3, "computeExpectedState() of "

    .line 226
    .line 227
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, " for "

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const-string v2, "FragmentManager"

    .line 246
    .line 247
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :cond_f9
    return v1
.end method

.method public final e()V
    .registers 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 30
    .line 31
    if-eqz v0, :cond_27

    .line 32
    .line 33
    const-string v2, "savedInstanceState"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    :goto_28
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->U:Z

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v2, :cond_69

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 48
    .line 49
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/measurement/y4;->p(Landroidx/fragment/app/c0;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/fragment/app/y0;->P()V

    .line 55
    .line 56
    .line 57
    iput v3, v1, Landroidx/fragment/app/c0;->a:I

    .line 58
    .line 59
    iput-boolean v4, v1, Landroidx/fragment/app/c0;->N:Z

    .line 60
    .line 61
    iget-object v5, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 62
    .line 63
    new-instance v6, Le1/b;

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-direct {v6, v7, v1}, Le1/b;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c0;->q(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v3, v1, Landroidx/fragment/app/c0;->U:Z

    .line 76
    .line 77
    iget-boolean v0, v1, Landroidx/fragment/app/c0;->N:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5b

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 82
    .line 83
    sget-object v3, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/measurement/y4;->k(Landroidx/fragment/app/c0;Z)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5b
    new-instance v0, Landroidx/fragment/app/o1;

    .line 93
    .line 94
    const-string v2, "Fragment "

    .line 95
    .line 96
    const-string v3, " did not call through to super.onCreate()"

    .line 97
    .line 98
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_69
    iput v3, v1, Landroidx/fragment/app/c0;->a:I

    .line 107
    .line 108
    iget-object v0, v1, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 109
    .line 110
    if-eqz v0, :cond_89

    .line 111
    .line 112
    const-string v2, "childFragmentManager"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_89

    .line 119
    .line 120
    iget-object v2, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroidx/fragment/app/y0;->U(Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 126
    .line 127
    iput-boolean v4, v0, Landroidx/fragment/app/y0;->H:Z

    .line 128
    .line 129
    iput-boolean v4, v0, Landroidx/fragment/app/y0;->I:Z

    .line 130
    .line 131
    iget-object v1, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 132
    .line 133
    iput-boolean v4, v1, Landroidx/fragment/app/c1;->g:Z

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroidx/fragment/app/y0;->u(I)V

    .line 136
    .line 137
    .line 138
    :cond_89
    return-void
.end method

.method public final f()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->v:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "FragmentManager"

    .line 14
    .line 15
    if-eqz v2, :cond_21

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "moveto CREATE_VIEW: "

    .line 20
    .line 21
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_21
    iget-object v2, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 35
    .line 36
    const-string v4, "savedInstanceState"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v2, :cond_2d

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move-object v2, v5

    .line 47
    :goto_2e
    invoke-virtual {v0, v2}, Landroidx/fragment/app/c0;->v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v7, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 52
    .line 53
    if-eqz v7, :cond_39

    .line 54
    .line 55
    move-object v5, v7

    .line 56
    goto/16 :goto_cb

    .line 57
    .line 58
    :cond_39
    iget v7, v0, Landroidx/fragment/app/c0;->G:I

    .line 59
    .line 60
    if-eqz v7, :cond_cb

    .line 61
    .line 62
    const/4 v5, -0x1

    .line 63
    if-eq v7, v5, :cond_bd

    .line 64
    .line 65
    iget-object v5, v0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 66
    .line 67
    iget-object v5, v5, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Lh8/b;->n(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-nez v5, :cond_8c

    .line 76
    .line 77
    iget-boolean v7, v0, Landroidx/fragment/app/c0;->y:Z

    .line 78
    .line 79
    if-nez v7, :cond_cb

    .line 80
    .line 81
    iget-boolean v7, v0, Landroidx/fragment/app/c0;->x:Z

    .line 82
    .line 83
    if-eqz v7, :cond_55

    .line 84
    .line 85
    goto :goto_cb

    .line 86
    :cond_55
    :try_start_55
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget v2, v0, Landroidx/fragment/app/c0;->G:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1
    :try_end_5f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_55 .. :try_end_5f} :catch_60

    .line 96
    goto :goto_62

    .line 97
    :catch_60
    const-string v1, "unknown"

    .line 98
    .line 99
    :goto_62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "No view found for id 0x"

    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v4, v0, Landroidx/fragment/app/c0;->G:I

    .line 109
    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v4, " ("

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, ") for fragment "

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :cond_8c
    instance-of v7, v5, Landroidx/fragment/app/j0;

    .line 142
    .line 143
    if-nez v7, :cond_cb

    .line 144
    .line 145
    sget-object v7, Lt0/c;->a:Lt0/b;

    .line 146
    .line 147
    new-instance v7, Lt0/a;

    .line 148
    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v9, "Attempting to add fragment "

    .line 152
    .line 153
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v9, " to container "

    .line 160
    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v9, " which is not a FragmentContainerView"

    .line 168
    .line 169
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-direct {v7, v0, v8}, Lt0/e;-><init>(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v7}, Lt0/c;->b(Lt0/e;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lt0/c;->a(Landroidx/fragment/app/c0;)Lt0/b;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    goto :goto_cb

    .line 190
    :cond_bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    const-string v2, "Cannot create fragment "

    .line 193
    .line 194
    const-string v3, " for a container view with no id"

    .line 195
    .line 196
    invoke-static {v2, v0, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_cb
    :goto_cb
    iput-object v5, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 205
    .line 206
    invoke-virtual {v0, v6, v5, v2}, Landroidx/fragment/app/c0;->C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 210
    .line 211
    const/4 v6, 0x2

    .line 212
    if-eqz v2, :cond_182

    .line 213
    .line 214
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_ec

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v2, "moveto VIEW_CREATED: "

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_ec
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 244
    .line 245
    const v7, 0x7f090080

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    if-eqz v5, :cond_ff

    .line 252
    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->b()V

    .line 254
    .line 255
    .line 256
    :cond_ff
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->I:Z

    .line 257
    .line 258
    if-eqz v1, :cond_10a

    .line 259
    .line 260
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 261
    .line 262
    const/16 v5, 0x8

    .line 263
    .line 264
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    :cond_10a
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_11a

    .line 274
    .line 275
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 276
    .line 277
    sget-object v5, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 278
    .line 279
    invoke-static {v1}, Lj0/b0;->c(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    goto :goto_124

    .line 283
    :cond_11a
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 284
    .line 285
    new-instance v5, Landroidx/fragment/app/f1;

    .line 286
    .line 287
    invoke-direct {v5, v2, v1}, Landroidx/fragment/app/f1;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 291
    .line 292
    .line 293
    :goto_124
    iget-object v1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 294
    .line 295
    if-eqz v1, :cond_12b

    .line 296
    .line 297
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 298
    .line 299
    .line 300
    :cond_12b
    iget-object v1, v0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 301
    .line 302
    invoke-virtual {v1, v6}, Landroidx/fragment/app/y0;->u(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 306
    .line 307
    iget-object v4, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 308
    .line 309
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/y4;->u(Landroidx/fragment/app/c0;Landroid/view/View;Z)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 313
    .line 314
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    iget-object v2, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 319
    .line 320
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iput v2, v4, Landroidx/fragment/app/z;->j:F

    .line 329
    .line 330
    iget-object v2, v0, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 331
    .line 332
    if-eqz v2, :cond_182

    .line 333
    .line 334
    if-nez v1, :cond_182

    .line 335
    .line 336
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    if-eqz v1, :cond_17c

    .line 343
    .line 344
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    iput-object v1, v2, Landroidx/fragment/app/z;->k:Landroid/view/View;

    .line 349
    .line 350
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_17c

    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v4, "requestFocus: Saved focused view "

    .line 359
    .line 360
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, " for Fragment "

    .line 367
    .line 368
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    :cond_17c
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 385
    .line 386
    .line 387
    :cond_182
    iput v6, v0, Landroidx/fragment/app/c0;->a:I

    .line 388
    .line 389
    return-void
.end method

.method public final g()V
    .registers 10

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-boolean v0, v1, Landroidx/fragment/app/c0;->l:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_2a

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->m()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2a

    .line 40
    .line 41
    move v0, v2

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v0, v3

    .line 44
    :goto_2b
    const/4 v4, 0x0

    .line 45
    iget-object v5, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 46
    .line 47
    if-eqz v0, :cond_35

    .line 48
    .line 49
    iget-object v6, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v4, v6}, Lcom/google/firebase/messaging/y;->E(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    :cond_35
    if-nez v0, :cond_64

    .line 55
    .line 56
    iget-object v6, v5, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Landroidx/fragment/app/c1;

    .line 59
    .line 60
    iget-object v7, v6, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 61
    .line 62
    iget-object v8, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_46

    .line 69
    .line 70
    goto :goto_4d

    .line 71
    :cond_46
    iget-boolean v7, v6, Landroidx/fragment/app/c1;->e:Z

    .line 72
    .line 73
    if-eqz v7, :cond_4d

    .line 74
    .line 75
    iget-boolean v6, v6, Landroidx/fragment/app/c1;->f:Z

    .line 76
    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    :goto_4d
    move v6, v2

    .line 79
    :goto_4e
    if-eqz v6, :cond_51

    .line 80
    .line 81
    goto :goto_64

    .line 82
    :cond_51
    iget-object v0, v1, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v0, :cond_61

    .line 85
    .line 86
    invoke-virtual {v5, v0}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_61

    .line 91
    .line 92
    iget-boolean v2, v0, Landroidx/fragment/app/c0;->K:Z

    .line 93
    .line 94
    if-eqz v2, :cond_61

    .line 95
    .line 96
    iput-object v0, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 97
    .line 98
    :cond_61
    iput v3, v1, Landroidx/fragment/app/c0;->a:I

    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    :goto_64
    iget-object v6, v1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 102
    .line 103
    if-eqz v6, :cond_6a

    .line 104
    .line 105
    move v7, v2

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v7, v3

    .line 108
    :goto_6b
    if-eqz v7, :cond_74

    .line 109
    .line 110
    iget-object v2, v5, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Landroidx/fragment/app/c1;

    .line 113
    .line 114
    iget-boolean v2, v2, Landroidx/fragment/app/c1;->f:Z

    .line 115
    .line 116
    goto :goto_81

    .line 117
    :cond_74
    iget-object v6, v6, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 118
    .line 119
    invoke-static {v6}, Landroidx/fragment/app/m1;->d(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_81

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    xor-int/2addr v2, v6

    .line 130
    :cond_81
    :goto_81
    if-eqz v0, :cond_84

    .line 131
    .line 132
    goto :goto_86

    .line 133
    :cond_84
    if-eqz v2, :cond_8d

    .line 134
    .line 135
    :goto_86
    iget-object v0, v5, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroidx/fragment/app/c1;

    .line 138
    .line 139
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/c1;->d(Landroidx/fragment/app/c0;Z)V

    .line 140
    .line 141
    .line 142
    :cond_8d
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->l()V

    .line 145
    .line 146
    .line 147
    iget-object v0, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 148
    .line 149
    sget-object v2, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 152
    .line 153
    .line 154
    iput v3, v1, Landroidx/fragment/app/c0;->a:I

    .line 155
    .line 156
    iput-boolean v3, v1, Landroidx/fragment/app/c0;->N:Z

    .line 157
    .line 158
    iput-boolean v3, v1, Landroidx/fragment/app/c0;->U:Z

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->s()V

    .line 161
    .line 162
    .line 163
    iget-boolean v0, v1, Landroidx/fragment/app/c0;->N:Z

    .line 164
    .line 165
    if-eqz v0, :cond_de

    .line 166
    .line 167
    iget-object v0, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 168
    .line 169
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/y4;->l(Landroidx/fragment/app/c0;Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Lcom/google/firebase/messaging/y;->r()Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :cond_b3
    :goto_b3
    if-ge v3, v2, :cond_d0

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    add-int/lit8 v3, v3, 0x1

    .line 187
    .line 188
    check-cast v6, Landroidx/fragment/app/g1;

    .line 189
    .line 190
    if-eqz v6, :cond_b3

    .line 191
    .line 192
    iget-object v6, v6, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 193
    .line 194
    iget-object v7, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v8, v6, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_b3

    .line 203
    .line 204
    iput-object v1, v6, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 205
    .line 206
    iput-object v4, v6, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 207
    .line 208
    goto :goto_b3

    .line 209
    :cond_d0
    iget-object v0, v1, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v0, :cond_da

    .line 212
    .line 213
    invoke-virtual {v5, v0}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, v1, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 218
    .line 219
    :cond_da
    invoke-virtual {v5, p0}, Lcom/google/firebase/messaging/y;->y(Landroidx/fragment/app/g1;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_de
    new-instance v0, Landroidx/fragment/app/o1;

    .line 224
    .line 225
    const-string v2, "Fragment "

    .line 226
    .line 227
    const-string v3, " did not call through to super.onDestroy()"

    .line 228
    .line 229
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v0
.end method

.method public final h()V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_27

    .line 32
    .line 33
    iget-object v2, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v2, :cond_27

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_27
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_49

    .line 49
    .line 50
    iget-object v0, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/i1;->b()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 58
    .line 59
    sget-object v3, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ltz v0, :cond_49

    .line 66
    .line 67
    iget-object v0, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 68
    .line 69
    sget-object v3, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroidx/fragment/app/i1;->a(Landroidx/lifecycle/m;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    iput v2, v1, Landroidx/fragment/app/c0;->a:I

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v1, Landroidx/fragment/app/c0;->N:Z

    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->t()V

    .line 80
    .line 81
    .line 82
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 83
    .line 84
    if-eqz v2, :cond_84

    .line 85
    .line 86
    invoke-static {v1}, Lx0/a;->a(Landroidx/lifecycle/t;)Lx0/c;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v2, v2, Lx0/c;->b:Lx0/b;

    .line 91
    .line 92
    iget-object v2, v2, Lx0/b;->b:Ls/k;

    .line 93
    .line 94
    iget v3, v2, Ls/k;->c:I

    .line 95
    .line 96
    if-gtz v3, :cond_77

    .line 97
    .line 98
    iput-boolean v0, v1, Landroidx/fragment/app/c0;->z:Z

    .line 99
    .line 100
    iget-object v2, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 101
    .line 102
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/y4;->v(Landroidx/fragment/app/c0;Z)V

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    iput-object v2, v1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 107
    .line 108
    iput-object v2, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 109
    .line 110
    iput-object v2, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 111
    .line 112
    iget-object v3, v1, Landroidx/fragment/app/c0;->Z:Landroidx/lifecycle/y;

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Landroidx/lifecycle/y;->d(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-boolean v0, v1, Landroidx/fragment/app/c0;->w:Z

    .line 118
    .line 119
    return-void

    .line 120
    :cond_77
    iget-object v1, v2, Ls/k;->b:[Ljava/lang/Object;

    .line 121
    .line 122
    aget-object v0, v1, v0

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/ClassCastException;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_84
    new-instance v0, Landroidx/fragment/app/o1;

    .line 134
    .line 135
    const-string v2, "Fragment "

    .line 136
    .line 137
    const-string v3, " did not call through to super.onDestroyView()"

    .line 138
    .line 139
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method public final i()V
    .registers 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    if-eqz v1, :cond_1c

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    const/4 v1, -0x1

    .line 30
    iput v1, v3, Landroidx/fragment/app/c0;->a:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v3, Landroidx/fragment/app/c0;->N:Z

    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->u()V

    .line 36
    .line 37
    .line 38
    iget-boolean v5, v3, Landroidx/fragment/app/c0;->N:Z

    .line 39
    .line 40
    if-eqz v5, :cond_88

    .line 41
    .line 42
    iget-object v5, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 43
    .line 44
    iget-boolean v6, v5, Landroidx/fragment/app/y0;->J:Z

    .line 45
    .line 46
    if-nez v6, :cond_39

    .line 47
    .line 48
    invoke-virtual {v5}, Landroidx/fragment/app/y0;->l()V

    .line 49
    .line 50
    .line 51
    new-instance v5, Landroidx/fragment/app/z0;

    .line 52
    .line 53
    invoke-direct {v5}, Landroidx/fragment/app/y0;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v5, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 57
    .line 58
    :cond_39
    iget-object v5, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 59
    .line 60
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;->m(Landroidx/fragment/app/c0;Z)V

    .line 61
    .line 62
    .line 63
    iput v1, v3, Landroidx/fragment/app/c0;->a:I

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    iput-object v1, v3, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 67
    .line 68
    iput-object v1, v3, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 69
    .line 70
    iput-object v1, v3, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 71
    .line 72
    iget-boolean v1, v3, Landroidx/fragment/app/c0;->l:Z

    .line 73
    .line 74
    if-eqz v1, :cond_52

    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->m()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_52

    .line 81
    .line 82
    goto :goto_6d

    .line 83
    :cond_52
    iget-object v1, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Landroidx/fragment/app/c1;

    .line 88
    .line 89
    iget-object v4, v1, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 90
    .line 91
    iget-object v5, v3, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_63

    .line 98
    .line 99
    goto :goto_6a

    .line 100
    :cond_63
    iget-boolean v4, v1, Landroidx/fragment/app/c1;->e:Z

    .line 101
    .line 102
    if-eqz v4, :cond_6a

    .line 103
    .line 104
    iget-boolean v1, v1, Landroidx/fragment/app/c1;->f:Z

    .line 105
    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    .line 108
    :goto_6b
    if-eqz v1, :cond_87

    .line 109
    .line 110
    :goto_6d
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_84

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v1, "initState called for fragment: "

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_84
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->j()V

    .line 134
    .line 135
    .line 136
    :cond_87
    return-void

    .line 137
    :cond_88
    new-instance v0, Landroidx/fragment/app/o1;

    .line 138
    .line 139
    const-string v1, "Fragment "

    .line 140
    .line 141
    const-string v2, " did not call through to super.onDetach()"

    .line 142
    .line 143
    invoke-static {v1, v3, v2}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method public final j()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->v:Z

    .line 4
    .line 5
    if-eqz v1, :cond_6d

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->w:Z

    .line 8
    .line 9
    if-eqz v1, :cond_6d

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->z:Z

    .line 12
    .line 13
    if-nez v1, :cond_6d

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_28

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_28
    iget-object v1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 42
    .line 43
    const-string v2, "savedInstanceState"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v1, :cond_34

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move-object v1, v3

    .line 54
    :goto_35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/c0;->v(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v4, v3, v1}, Landroidx/fragment/app/c0;->C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v1, :cond_6d

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 70
    .line 71
    const v4, 0x7f090080

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v1, v0, Landroidx/fragment/app/c0;->I:Z

    .line 78
    .line 79
    if-eqz v1, :cond_57

    .line 80
    .line 81
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 82
    .line 83
    const/16 v4, 0x8

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_57
    iget-object v1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 89
    .line 90
    if-eqz v1, :cond_5e

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    :cond_5e
    iget-object v1, v0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 102
    .line 103
    iget-object v4, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v1, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/y4;->u(Landroidx/fragment/app/c0;Landroid/view/View;Z)V

    .line 106
    .line 107
    .line 108
    iput v2, v0, Landroidx/fragment/app/c0;->a:I

    .line 109
    .line 110
    :cond_6d
    return-void
.end method

.method public final k()V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/g1;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "FragmentManager"

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    if-eqz v1, :cond_23

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_22

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void

    .line 36
    :cond_23
    const/4 v1, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    :try_start_25
    iput-boolean v1, p0, Landroidx/fragment/app/g1;->d:Z

    .line 39
    .line 40
    move v6, v5

    .line 41
    :goto_28
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->d()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v4, Landroidx/fragment/app/c0;->a:I

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-eq v7, v8, :cond_138

    .line 49
    .line 50
    if-le v7, v8, :cond_bd

    .line 51
    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    packed-switch v8, :pswitch_data_1f2

    .line 55
    .line 56
    .line 57
    goto/16 :goto_135

    .line 58
    .line 59
    :pswitch_3a
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->n()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_135

    .line 63
    .line 64
    :catchall_3f
    move-exception v0

    .line 65
    goto/16 :goto_1ef

    .line 66
    .line 67
    :pswitch_42
    const/4 v6, 0x6

    .line 68
    iput v6, v4, Landroidx/fragment/app/c0;->a:I

    .line 69
    .line 70
    goto/16 :goto_135

    .line 71
    .line 72
    :pswitch_47
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->p()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_135

    .line 76
    .line 77
    :pswitch_4c
    iget-object v6, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 78
    .line 79
    const/4 v7, 0x4

    .line 80
    if-eqz v6, :cond_a2

    .line 81
    .line 82
    iget-object v6, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 83
    .line 84
    if-eqz v6, :cond_a2

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-static {v6, v8}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v8, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_82

    .line 101
    .line 102
    if-eq v8, v7, :cond_80

    .line 103
    .line 104
    const/16 v10, 0x8

    .line 105
    .line 106
    if-ne v8, v10, :cond_6c

    .line 107
    .line 108
    goto :goto_83

    .line 109
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "Unknown visibility "

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_80
    move v9, v7

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v9, v2

    .line 132
    :goto_83
    const-string v8, "finalState"

    .line 133
    .line 134
    invoke-static {v9, v8}, La1/a;->n(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_9f

    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v10, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 146
    .line 147
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_9f
    invoke-virtual {v6, v9, v2, p0}, Landroidx/fragment/app/o;->d(IILandroidx/fragment/app/g1;)V

    .line 161
    .line 162
    .line 163
    :cond_a2
    iput v7, v4, Landroidx/fragment/app/c0;->a:I

    .line 164
    .line 165
    goto/16 :goto_135

    .line 166
    .line 167
    :pswitch_a6
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->a()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_135

    .line 171
    .line 172
    :pswitch_ab
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->j()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->f()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_135

    .line 179
    .line 180
    :pswitch_b3
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->e()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_135

    .line 184
    .line 185
    :pswitch_b8
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->c()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_135

    .line 189
    .line 190
    :cond_bd
    add-int/lit8 v8, v8, -0x1

    .line 191
    .line 192
    packed-switch v8, :pswitch_data_206

    .line 193
    .line 194
    .line 195
    goto/16 :goto_135

    .line 196
    .line 197
    :pswitch_c4
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->l()V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_135

    .line 201
    .line 202
    :pswitch_c9
    const/4 v6, 0x5

    .line 203
    iput v6, v4, Landroidx/fragment/app/c0;->a:I

    .line 204
    .line 205
    goto :goto_135

    .line 206
    :pswitch_cd
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->q()V

    .line 207
    .line 208
    .line 209
    goto :goto_135

    .line 210
    :pswitch_d1
    invoke-static {v9}, Landroidx/fragment/app/y0;->J(I)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_eb

    .line 215
    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_eb
    iget-object v6, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 237
    .line 238
    if-eqz v6, :cond_f6

    .line 239
    .line 240
    iget-object v6, v4, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 241
    .line 242
    if-nez v6, :cond_f6

    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->o()V

    .line 245
    .line 246
    .line 247
    :cond_f6
    iget-object v6, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 248
    .line 249
    if-eqz v6, :cond_120

    .line 250
    .line 251
    iget-object v6, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 252
    .line 253
    if-eqz v6, :cond_120

    .line 254
    .line 255
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v6, v7}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_11d

    .line 268
    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 272
    .line 273
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    :cond_11d
    invoke-virtual {v6, v1, v9, p0}, Landroidx/fragment/app/o;->d(IILandroidx/fragment/app/g1;)V

    .line 287
    .line 288
    .line 289
    :cond_120
    iput v9, v4, Landroidx/fragment/app/c0;->a:I

    .line 290
    .line 291
    goto :goto_135

    .line 292
    :pswitch_123
    iput-boolean v5, v4, Landroidx/fragment/app/c0;->w:Z

    .line 293
    .line 294
    iput v2, v4, Landroidx/fragment/app/c0;->a:I

    .line 295
    .line 296
    goto :goto_135

    .line 297
    :pswitch_128
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->h()V

    .line 298
    .line 299
    .line 300
    iput v1, v4, Landroidx/fragment/app/c0;->a:I

    .line 301
    .line 302
    goto :goto_135

    .line 303
    :pswitch_12e
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->g()V

    .line 304
    .line 305
    .line 306
    goto :goto_135

    .line 307
    :pswitch_132
    invoke-virtual {p0}, Landroidx/fragment/app/g1;->i()V

    .line 308
    .line 309
    .line 310
    :goto_135
    move v6, v1

    .line 311
    goto/16 :goto_28

    .line 312
    .line 313
    :cond_138
    if-nez v6, :cond_188

    .line 314
    .line 315
    const/4 v6, -0x1

    .line 316
    if-ne v8, v6, :cond_188

    .line 317
    .line 318
    iget-boolean v6, v4, Landroidx/fragment/app/c0;->l:Z

    .line 319
    .line 320
    if-eqz v6, :cond_188

    .line 321
    .line 322
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->m()Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-nez v6, :cond_188

    .line 327
    .line 328
    invoke-static {v9}, Landroidx/fragment/app/y0;->J(I)Z

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-eqz v6, :cond_161

    .line 333
    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v7, "Cleaning up state of never attached fragment: "

    .line 340
    .line 341
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    :cond_161
    iget-object v6, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v6, Landroidx/fragment/app/c1;

    .line 357
    .line 358
    invoke-virtual {v6, v4, v1}, Landroidx/fragment/app/c1;->d(Landroidx/fragment/app/c0;Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/y;->y(Landroidx/fragment/app/g1;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v9}, Landroidx/fragment/app/y0;->J(I)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_185

    .line 369
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v6, "initState called for fragment: "

    .line 376
    .line 377
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    :cond_185
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->j()V

    .line 391
    .line 392
    .line 393
    :cond_188
    iget-boolean v0, v4, Landroidx/fragment/app/c0;->T:Z

    .line 394
    .line 395
    if-eqz v0, :cond_1ec

    .line 396
    .line 397
    iget-object v0, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 398
    .line 399
    if-eqz v0, :cond_1d5

    .line 400
    .line 401
    iget-object v0, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 402
    .line 403
    if-eqz v0, :cond_1d5

    .line 404
    .line 405
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-static {v0, v6}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    iget-boolean v6, v4, Landroidx/fragment/app/c0;->I:Z

    .line 414
    .line 415
    if-eqz v6, :cond_1bb

    .line 416
    .line 417
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_1b7

    .line 422
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 426
    .line 427
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    :cond_1b7
    invoke-virtual {v0, v9, v1, p0}, Landroidx/fragment/app/o;->d(IILandroidx/fragment/app/g1;)V

    .line 441
    .line 442
    .line 443
    goto :goto_1d5

    .line 444
    :cond_1bb
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    if-eqz v6, :cond_1d2

    .line 449
    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 453
    .line 454
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    :cond_1d2
    invoke-virtual {v0, v2, v1, p0}, Landroidx/fragment/app/o;->d(IILandroidx/fragment/app/g1;)V

    .line 468
    .line 469
    .line 470
    :cond_1d5
    :goto_1d5
    iget-object v0, v4, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 471
    .line 472
    if-eqz v0, :cond_1e5

    .line 473
    .line 474
    iget-boolean v2, v4, Landroidx/fragment/app/c0;->k:Z

    .line 475
    .line 476
    if-eqz v2, :cond_1e5

    .line 477
    .line 478
    invoke-static {v4}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_1e5

    .line 483
    .line 484
    iput-boolean v1, v0, Landroidx/fragment/app/y0;->G:Z

    .line 485
    .line 486
    :cond_1e5
    iput-boolean v5, v4, Landroidx/fragment/app/c0;->T:Z

    .line 487
    .line 488
    iget-object v0, v4, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 489
    .line 490
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->o()V
    :try_end_1ec
    .catchall {:try_start_25 .. :try_end_1ec} :catchall_3f

    .line 491
    .line 492
    .line 493
    :cond_1ec
    iput-boolean v5, p0, Landroidx/fragment/app/g1;->d:Z

    .line 494
    .line 495
    return-void

    .line 496
    :goto_1ef
    iput-boolean v5, p0, Landroidx/fragment/app/g1;->d:Z

    .line 497
    .line 498
    throw v0

    .line 499
    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b3
        :pswitch_ab
        :pswitch_a6
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3a
    .end packed-switch

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :pswitch_data_206
    .packed-switch -0x1
        :pswitch_132
        :pswitch_12e
        :pswitch_128
        :pswitch_123
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c4
    .end packed-switch
.end method

.method public final l()V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_2d

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 40
    .line 41
    sget-object v2, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/i1;->a(Landroidx/lifecycle/m;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    iget-object v0, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 47
    .line 48
    sget-object v2, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x6

    .line 54
    iput v0, v1, Landroidx/fragment/app/c0;->a:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v1, Landroidx/fragment/app/c0;->N:Z

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->w()V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 63
    .line 64
    if-eqz v2, :cond_47

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 67
    .line 68
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/y4;->n(Landroidx/fragment/app/c0;Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_47
    new-instance v0, Landroidx/fragment/app/o1;

    .line 73
    .line 74
    const-string v2, "Fragment "

    .line 75
    .line 76
    const-string v3, " did not call through to super.onPause()"

    .line 77
    .line 78
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    goto :goto_51

    .line 8
    :cond_7
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "savedInstanceState"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1e

    .line 20
    .line 21
    iget-object p1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 22
    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    :try_start_1e
    iget-object p1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "viewState"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;
    :try_end_28
    .catch Landroid/os/BadParcelableException; {:try_start_1e .. :try_end_28} :catch_52

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 42
    .line 43
    const-string v1, "viewRegistryState"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v0, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object p1, v0, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 52
    .line 53
    const-string v1, "state"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroidx/fragment/app/e1;

    .line 60
    .line 61
    if-eqz p1, :cond_4a

    .line 62
    .line 63
    iget-object v1, p1, Landroidx/fragment/app/e1;->m:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v1, v0, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 66
    .line 67
    iget v1, p1, Landroidx/fragment/app/e1;->v:I

    .line 68
    .line 69
    iput v1, v0, Landroidx/fragment/app/c0;->i:I

    .line 70
    .line 71
    iget-boolean p1, p1, Landroidx/fragment/app/e1;->w:Z

    .line 72
    .line 73
    iput-boolean p1, v0, Landroidx/fragment/app/c0;->R:Z

    .line 74
    .line 75
    :cond_4a
    iget-boolean p1, v0, Landroidx/fragment/app/c0;->R:Z

    .line 76
    .line 77
    if-nez p1, :cond_51

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, v0, Landroidx/fragment/app/c0;->Q:Z

    .line 81
    .line 82
    :cond_51
    :goto_51
    return-void

    .line 83
    :catch_52
    move-exception p1

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v3, "Failed to restore view hierarchy state for fragment "

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v1
.end method

.method public final n()V
    .registers 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    if-eqz v0, :cond_1c

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v2, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v0, :cond_23

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    iget-object v0, v0, Landroidx/fragment/app/z;->k:Landroid/view/View;

    .line 37
    .line 38
    :goto_25
    if-eqz v0, :cond_7d

    .line 39
    .line 40
    iget-object v4, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 41
    .line 42
    if-ne v0, v4, :cond_2c

    .line 43
    .line 44
    goto :goto_36

    .line 45
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_30
    if-eqz v4, :cond_7d

    .line 50
    .line 51
    iget-object v5, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 52
    .line 53
    if-ne v4, v5, :cond_78

    .line 54
    .line 55
    :goto_36
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-static {v5}, Landroidx/fragment/app/y0;->J(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_7d

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "requestFocus: Restoring focused view "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v4, :cond_55

    .line 82
    .line 83
    const-string v0, "succeeded"

    .line 84
    .line 85
    goto :goto_57

    .line 86
    :cond_55
    const-string v0, "failed"

    .line 87
    .line 88
    :goto_57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " on Fragment "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " resulting in focused view "

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_7d

    .line 121
    :cond_78
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_30

    .line 126
    :cond_7d
    :goto_7d
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v3, v0, Landroidx/fragment/app/z;->k:Landroid/view/View;

    .line 131
    .line 132
    iget-object v0, v2, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->P()V

    .line 135
    .line 136
    .line 137
    iget-object v0, v2, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x7

    .line 144
    iput v0, v2, Landroidx/fragment/app/c0;->a:I

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, v2, Landroidx/fragment/app/c0;->N:Z

    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->x()V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, v2, Landroidx/fragment/app/c0;->N:Z

    .line 153
    .line 154
    if-eqz v4, :cond_cd

    .line 155
    .line 156
    iget-object v4, v2, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 157
    .line 158
    sget-object v5, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v4, :cond_ad

    .line 166
    .line 167
    iget-object v4, v2, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 168
    .line 169
    iget-object v4, v4, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 172
    .line 173
    .line 174
    :cond_ad
    iget-object v4, v2, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 175
    .line 176
    iput-boolean v1, v4, Landroidx/fragment/app/y0;->H:Z

    .line 177
    .line 178
    iput-boolean v1, v4, Landroidx/fragment/app/y0;->I:Z

    .line 179
    .line 180
    iget-object v5, v4, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 181
    .line 182
    iput-boolean v1, v5, Landroidx/fragment/app/c1;->g:Z

    .line 183
    .line 184
    invoke-virtual {v4, v0}, Landroidx/fragment/app/y0;->u(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 188
    .line 189
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/y4;->q(Landroidx/fragment/app/c0;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Landroidx/fragment/app/g1;->b:Lcom/google/firebase/messaging/y;

    .line 193
    .line 194
    iget-object v1, v2, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/messaging/y;->E(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    iput-object v3, v2, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 200
    .line 201
    iput-object v3, v2, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 202
    .line 203
    iput-object v3, v2, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 204
    .line 205
    return-void

    .line 206
    :cond_cd
    new-instance v0, Landroidx/fragment/app/o1;

    .line 207
    .line 208
    const-string v1, "Fragment "

    .line 209
    .line 210
    const-string v3, " did not call through to super.onResume()"

    .line 211
    .line 212
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method

.method public final o()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    goto :goto_51

    .line 8
    :cond_7
    const/4 v1, 0x2

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2b

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Saving view state for fragment "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " with view "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "FragmentManager"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2b
    new-instance v1, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_3d

    .line 59
    .line 60
    iput-object v1, v0, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_3d
    new-instance v1, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 68
    .line 69
    iget-object v2, v2, Landroidx/fragment/app/i1;->e:Le1/f;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Le1/f;->c(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_51

    .line 79
    .line 80
    iput-object v1, v0, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 81
    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public final p()V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->P()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    iput v0, v1, Landroidx/fragment/app/c0;->a:I

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->z()V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, v1, Landroidx/fragment/app/c0;->N:Z

    .line 50
    .line 51
    if-eqz v3, :cond_59

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 54
    .line 55
    sget-object v4, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v3, :cond_46

    .line 63
    .line 64
    iget-object v3, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 65
    .line 66
    iget-object v3, v3, Landroidx/fragment/app/i1;->d:Landroidx/lifecycle/v;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 69
    .line 70
    .line 71
    :cond_46
    iget-object v3, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 72
    .line 73
    iput-boolean v2, v3, Landroidx/fragment/app/y0;->H:Z

    .line 74
    .line 75
    iput-boolean v2, v3, Landroidx/fragment/app/y0;->I:Z

    .line 76
    .line 77
    iget-object v4, v3, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 78
    .line 79
    iput-boolean v2, v4, Landroidx/fragment/app/c1;->g:Z

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Landroidx/fragment/app/y0;->u(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;->s(Landroidx/fragment/app/c0;Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_59
    new-instance v0, Landroidx/fragment/app/o1;

    .line 91
    .line 92
    const-string v2, "Fragment "

    .line 93
    .line 94
    const-string v3, " did not call through to super.onStart()"

    .line 95
    .line 96
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public final q()V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    if-eqz v0, :cond_1c

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Landroidx/fragment/app/y0;->I:Z

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 35
    .line 36
    iput-boolean v2, v3, Landroidx/fragment/app/c1;->g:Z

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->u(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_34

    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 47
    .line 48
    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroidx/fragment/app/i1;->a(Landroidx/lifecycle/m;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object v0, v1, Landroidx/fragment/app/c0;->X:Landroidx/lifecycle/v;

    .line 54
    .line 55
    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 58
    .line 59
    .line 60
    iput v2, v1, Landroidx/fragment/app/c0;->a:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v1, Landroidx/fragment/app/c0;->N:Z

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->A()V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4d

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 73
    .line 74
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/y4;->t(Landroidx/fragment/app/c0;Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4d
    new-instance v0, Landroidx/fragment/app/o1;

    .line 79
    .line 80
    const-string v2, "Fragment "

    .line 81
    .line 82
    const-string v3, " did not call through to super.onStop()"

    .line 83
    .line 84
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/m1;->c(Ljava/lang/String;Landroidx/fragment/app/c0;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method
